// ignore: file_names
import 'package:animal_wealth/app/cow_form/initial_diagnosis/view/widgets/initial_diagnosis_form_widget.dart';
import 'package:animal_wealth/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';

class InitialdiagnosisScreen extends StatelessWidget {
  const InitialdiagnosisScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offwhiteColor,
      appBar:  AppBar(
            backgroundColor: whiteColor,
            leading: IconButton(
              onPressed: () => Get.offAll(HomeScreen()),
              icon: const Icon(Icons.home),
              color: primaryColor,
            ),
            title: const AppBarTitle(),
            actions: [
              TextButton(
                  onPressed: () {
                    SharedPreferencesHelper.clear();
                    SharedPreferencesHelper.clearOwner();
                    SharedPreferencesHelper.clearOwnerName();
                    SharedPreferencesHelper.clearAnimalType();
                    SharedPreferencesHelper.clearCamelHerd();
                    SharedPreferencesHelper.clearCowHerd();
                    SharedPreferencesHelper.clearCamelStatus();
                    SharedPreferencesHelper.clearCowStatus();
                    SharedPreferencesHelper.clearSheepStatus();
                    SharedPreferencesHelper.clearGoatHerd();
                    SharedPreferencesHelper.clearGoatStatus();
                    SharedPreferencesHelper.clearSheepHerd();
                    SharedPreferencesHelper.clearHorseHerd();
                    SharedPreferencesHelper.clearHorseStatus();
                    Get.offAll(()=>HomeScreen());
                  },
                  child: Text(
                    'finish'.tr,
                    style: const TextStyle(
                        color: redColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.1788,
            width: MediaQuery.of(context).size.width,
            // decoration:
            //     BoxDecoration(border: Border.all(width: 2, color: redColor)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 800,
                ),
                const Center(
                  child: Text(
                    "Syndromes",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //!Initial diagnosis Form Body
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 1.35,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: const IntialDiagnosisFormWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}