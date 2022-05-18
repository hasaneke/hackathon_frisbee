import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';
import 'package:frizbee/utils/routes/route.gr.dart';
import 'package:frizbee/widgets/primary_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/constants.dart';

class EntrancePage extends StatefulWidget {
  const EntrancePage({Key? key}) : super(key: key);

  @override
  State<EntrancePage> createState() => _EntrancePageState();
}

class _EntrancePageState extends State<EntrancePage> {
  PageController controller = PageController();
  int currentPage = 0;
  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: _size.width,
              child: Swiper(
                pagination: const SwiperPagination(),
                itemBuilder: (BuildContext context, int index) {
                  // return Image.asset(
                  //   kEntranceImages[index],
                  //   fit: BoxFit.fill,
                  // );
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: Image.asset(kEntranceImages[index],
                                fit: BoxFit.fill)
                            .image,
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(150)),
                    ),
                  );
                },
                itemCount: kEntranceImages.length,
                viewportFraction: 1,
                scale: 0.9,
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            constraints: BoxConstraints(minWidth: _size.height * 0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Image.asset(
                      kFrisbieeTextIcon,
                      height: 60,
                    ),
                    const Text(
                      'Frizbi`yi Yakala!',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                //PageIndicator(activePage: activePage),
                const SizedBox(
                  height: 50.0,
                ),
                PrimaryButton(
                  text: "Get Started",
                  onPressed: () {
                    AutoRouter.of(context).push(const SignupRoute());
                  },
                )
              ],
            ),
          ),
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.inter(
                    fontSize: 14.0,
                    color: Color.fromRGBO(64, 74, 106, 1),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(const LoginRoute());
                  },
                  child: Text(
                    "Log In",
                    style: GoogleFonts.inter(
                      fontSize: 14.0,
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    )));
  }
}
