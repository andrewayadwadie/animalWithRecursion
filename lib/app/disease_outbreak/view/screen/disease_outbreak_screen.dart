import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/click_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../home/home_screen.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../../../shared_widgets/custom_loader.dart';
import '../../controller/outbreak_date_widget.dart';
import '../../controller/send_disease_outbreak_controller.dart';
import '../widget/disease_outbreak.dart';

// ignore: must_be_immutable
class DiseaseOutbreak extends StatelessWidget {
  DiseaseOutbreak({
    Key? key,
    required this.animalId,
  }) : super(key: key);
  final int animalId;
  OutBreakDateController dateCtrl = Get.put(OutBreakDateController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: offwhiteColor,
          //! Appbar
          appBar: AppBar(
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
                    Get.offAll(() => HomeScreen());
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! Header
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Center(
                child: Text(
                  "Disease Outbreak".tr,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              //! Question Body
              Expanded(
                child: Container(
                   padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 40),
                  width: MediaQuery.of(context).size.width / 1.05,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: Get.locale == const Locale('en')
                        ? const BorderRadius.only(topRight: Radius.circular(20))
                        : const BorderRadius.only(topLeft: Radius.circular(20)),
                  ),
                  child: Stack(
                    children: [
                      //! body
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.28,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 60,
                            right: MediaQuery.of(context).size.width / 35,
                            left: MediaQuery.of(context).size.width / 35,
                          ),
                          child: const DiseaseOutBreakWidget(),
                        ),
                      ),
                      //! Submit
                      Align(
                        alignment: Get.locale == const Locale('en')
                            ? Alignment.bottomRight
                            : Alignment.bottomLeft,
                        child: GetBuilder<SendDiseaseOutbreakController>(
                            init: SendDiseaseOutbreakController(),
                            builder: (sendDataCtrl) {
                              return InkWell(
                                  onTap: () async {
                                    sendDataCtrl
                                        .diseaseOutbreakEndDate(animalId);
                                  },
                                  child: Get.locale == const Locale('ar')
                                      ? SvgPicture.asset(
                                          "assets/icons/add-ar.svg",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              10,
                                        )
                                      : SvgPicture.asset(
                                          "assets/icons/add-en.svg",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              10,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              10,
                                        ));
                            }),
                      ),
                      //! loader
                      GetX<ClickController>(
                          init: ClickController(),
                          builder: (clicks) {
                            return clicks.diseaseOutbreak.value == false
                                ? const SizedBox()
                                : const Align(
                                    alignment: Alignment.center,
                                    child: LoaderWidget(),
                                  );
                          }),
                    ],
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
