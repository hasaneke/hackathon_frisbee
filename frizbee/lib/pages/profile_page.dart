import 'package:flutter/material.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Image.asset(
          kProfileImage,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
