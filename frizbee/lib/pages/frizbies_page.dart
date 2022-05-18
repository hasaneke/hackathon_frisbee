import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';
import 'package:frizbee/utils/dummy/dummy_data.dart';
import 'package:frizbee/utils/routes/route.gr.dart';
import 'package:frizbee/widgets/frisbee_post.dart';

class FrisbiesPage extends StatelessWidget {
  const FrisbiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Frizbiler',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 30),
                        ),
                        Text(
                          '5 frizbi bulundu',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    const Icon(
                      Icons.location_pin,
                      color: Colors.red,
                    )
                  ],
                ),
                const TextField(
                  decoration: InputDecoration(
                      label: Text('Şehir'),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: Colors.red,
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(
                          kCategoryIcons.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(left: 35),
                                child: Image.asset(
                                  kCategoryIcons[index],
                                  height: 50,
                                  width: 50,
                                ),
                              ))
                    ],
                  ),
                ),
                ...List.generate(
                  kPosters.length,
                  (index) => FrisbeePost(
                    frisbee: frisbies[index],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile tile(int index) {
    return ListTile(
      trailing: const Icon(
        Icons.catching_pokemon,
        color: Colors.red,
      ),
      title: Text('Event'),
      subtitle: Text('Subtitle'),
      leading: Container(
        width: 80,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: Image.asset(kCityImages[index]).image,
                fit: BoxFit.fill)),
      ),
    );
  }
}
