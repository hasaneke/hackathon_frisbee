import 'package:flutter/material.dart';

import '../widgets/primary_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
                  child: const Text('Kayıt Ol',
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
                                        label: Text('İsim Soyisim'),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: Colors.red,
                                        )),
                                  ),
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
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  PrimaryButton(
                                      text: 'Register', onPressed: () {}),
                                ],
                              ),
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text('Hesabınız var mı?'),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('Giriş yap')),
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
