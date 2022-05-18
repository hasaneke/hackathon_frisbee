import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/pages/home_page.dart';
import 'package:frizbee/utils/routes/route.gr.dart';
import 'package:frizbee/widgets/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 220),
                  child: const Text('Giriş Yap',
                      style: TextStyle(fontSize: 31, color: Colors.white),
                      textAlign: TextAlign.start),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 550,
                  width: 350,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: Container(),
                          flex: 1,
                        ),
                        Flexible(
                          flex: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const TextField(
                                    decoration: InputDecoration(
                                        label: Text('Email'),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: Colors.red,
                                        )),
                                  ),
                                  const TextField(
                                    decoration: InputDecoration(
                                        label: Text('Password'),
                                        prefixIcon: Icon(
                                          Icons.lock_clock_outlined,
                                          color: Colors.red,
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  PrimaryButton(
                                      text: 'Sign In',
                                      onPressed: () {
                                        AutoRouter.of(context)
                                            .replace(const HomeRoute());
                                      }),
                                ],
                              ),
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Hesabınız var mı?'),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Kaydolun')),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          child: Container(),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
