import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';
import 'package:frizbee/utils/routes/route.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),
        () => AutoRouter.of(context).replace(const EntranceRoute()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              kSplashImage,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ],
        ),
      ),
    ));
  }
}
