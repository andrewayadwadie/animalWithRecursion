import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/db/auth_shared_preferences.dart';
import '../../utils/style.dart';
import '../auth/login_screen.dart';
import '../home/home_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  late AnimationController _lottieAnimation;
  var expanded = false;

  final transitionDuration = const Duration(seconds: 1);

  int diffrenceBetweenExpireNow() {
    if (SharedPreferencesHelper.getExpireDateValue().isNotEmpty) {
      DateTime expireDate =
          DateTime.parse(SharedPreferencesHelper.getExpireDateValue());
      DateTime now = DateTime.now();
      int diff = expireDate.difference(now).inHours;
      return diff;
    } else {
      return 0;
    }
  }

  @override
  void initState() {
    _lottieAnimation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    Future.delayed(const Duration(seconds: 2))
        .then((value0) => setState(() => expanded = true))
        .then((value1) => const Duration(seconds: 2))
        .then(
          (value2) => Future.delayed(const Duration(seconds: 2)).then(
            (value3) => _lottieAnimation.forward().then(
              (value4) {
                log("tokkkkken :  ${SharedPreferencesHelper.getTokenValue()}");
                log("diffrenceBetweenExpireNow() :  ${diffrenceBetweenExpireNow()}");

                if (SharedPreferencesHelper.getTokenValue().isEmpty) {
                  Get.offAll(const LoginScreen());
                } else if (diffrenceBetweenExpireNow() < 1) {
                  Get.offAll(const LoginScreen());
                } else {
                  Get.offAll(HomeScreen());
                }
              },
            ),
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              crossFadeState: !expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: transitionDuration,
              firstChild: Container(),
              secondChild: Image.asset(
                "assets/images/logo.png",
                width: 150,
                height: 150,
              ),
              alignment: Alignment.centerLeft,
              sizeCurve: Curves.easeInOut,
            ),
          ],
        ),
      ),
    );
  }
}
