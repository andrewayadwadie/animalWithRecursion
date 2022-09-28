import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/style.dart';
import '../intro/intro.dart';
class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/nointernet.png"),
                        fit: BoxFit.contain)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              InkWell(
                onTap: () {
                  Get.offAll(const IntroPage());
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: lightPrimaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child:   Text(
                    "try again".tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
