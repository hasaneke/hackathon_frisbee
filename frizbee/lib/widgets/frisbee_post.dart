import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/data/models/frisbee.dart';
import 'package:frizbee/utils/routes/route.gr.dart';

class FrisbeePost extends StatelessWidget {
  Frisbee frisbee;
  FrisbeePost({
    Key? key,
    required this.frisbee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(FrizbeeDetailRoute(frisbee: frisbee));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset(frisbee.imageUrls).image,
                        fit: BoxFit.fill)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 100,
                child: Column(
                  children: [
                    Text(
                      frisbee.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    Text(
                      frisbee.explanation,
                      maxLines: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
