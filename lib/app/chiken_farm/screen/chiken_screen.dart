import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/db/auth_shared_preferences.dart';
import '../../../utils/style.dart';
import '../../home/home_screen.dart';

class ChickenComingSoonScreen extends StatelessWidget {
  const ChickenComingSoonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/under construction.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    SharedPreferencesHelper.clearAnimalType();
                    Get.offAll(HomeScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:   Text(
                      "Back to Home ".tr,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
