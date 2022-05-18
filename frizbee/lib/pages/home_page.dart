import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frizbee/pages/frizbies_page.dart';
import 'package:frizbee/pages/profile_page.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';
import 'package:frizbee/utils/dummy/dummy_data.dart';
import 'package:frizbee/utils/routes/route.gr.dart';
import 'package:frizbee/widgets/frisbee_post.dart';
import 'package:frizbee/widgets/primary_button.dart';
import 'package:getwidget/getwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFTabBarView(
          controller: tabController,
          children: [homeView(context), favoritesView(), ProfilePage()]),
      bottomNavigationBar: GFTabBar(
        tabBarHeight: 60,
        tabBarColor: Colors.red,
        length: 3,
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            child: Text(
              "Home",
            ),
          ),
          Tab(
            icon: Icon(Icons.favorite),
            child: Text(
              "Frisbiees",
            ),
          ),
          Tab(
            icon: FaIcon(FontAwesomeIcons.person),
            child: Text(
              "Profile",
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView homeView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 25,
          ),
          Flexible(
            flex: 9,
            child: Container(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Frizbiyi Yakala',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                          onPressed: () {
                            AutoRouter.of(context).push(RequestRoute());
                          },
                          icon: Icon(
                            Icons.comment,
                            color: Colors.red,
                            size: 32,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        label: Text('Şehir'),
                        prefixIcon: Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        )),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: PrimaryButton(text: 'Ara', onPressed: () {}),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  frizbieCitiesWidget('Yaklaşan Frizbiler', context),
                  const SizedBox(
                    height: 7,
                  ),
                  frizbieCitiesWidget('Popüler Frizbiler', context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column frizbieCitiesWidget(String title, BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Hepsini gör',
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(
                  kCityImages.length,
                  (index) => Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  AutoRouter.of(context)
                                      .push(const FrisbiesRoute());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: Image.asset(kCityImages[index])
                                              .image,
                                          fit: BoxFit.fill),
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 100,
                                  height: 80,
                                ),
                              ),
                              Text(
                                kCities[index],
                                style: const TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          )
                        ],
                      )),
            ],
          ),
        )
      ],
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ]);
  }
}

class favoritesView extends StatelessWidget {
  const favoritesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            ...List.generate(
                kPosters.length,
                (index) => FrisbeePost(
                      frisbee: frisbies[index],
                    ))
          ],
        ),
      ),
    );
  }
}
