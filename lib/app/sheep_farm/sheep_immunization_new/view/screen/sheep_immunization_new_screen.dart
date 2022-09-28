import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/click_controller.dart';
import '../../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../all_sections/services/section_date_service.dart';
import '../../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../../auth/login_screen.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../controller/sheep_immunization_way_text_controller.dart';
import '../../controller/sheep_send_new_immunization_data_controller.dart';
import '../../services/sheep_send_new_immunization_data_service.dart';
import '../widgets/sheep_immunization_new_widget.dart';

// ignore: must_be_immutable
class SheepImmunizationNewScreen extends StatelessWidget {
  SheepImmunizationNewScreen({Key? key}) : super(key: key);
  SheepImmunizationWayTextController wayCtrl =
      Get.put(SheepImmunizationWayTextController());
  final _formKey = GlobalKey<FormState>();
  ClickController click = Get.find<ClickController>();
  SheepSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(SheepSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: offwhiteColor,
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Center(
                child: Text(
                  "Immunization of Sheep farm".tr,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
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
                  child: Form(
                    key: _formKey,
                    child: Stack(
                      children: [
                        //!formContent
                        Positioned(
                          top: MediaQuery.of(context).size.height / 50,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.17,
                              height: MediaQuery.of(context).size.height / 1.5,
                              child: SheepImmunizationNewFormWidget()),
                        ),
                        //!Submit (Next Buttom)
                        Align(
                           alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                          child: GetBuilder<InternetController>(
                              init: InternetController(),
                              builder: (net) {
                                return InkWell(
                                  onTap: () async {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      net.checkInternet().then((value) {
                                        if (value) {
                                          net.checkInternet().then((value) {
                                            if (value) {
                                              EndSectioDateService
                                                      .endSheepSectioDateService(
                                                          sectionId: 10,
                                                          date:
                                                              "${DateTime.now()}")
                                                  .then((res) {
                                                if (res == 200) {
                                                  if (click
                                                          .sheepImmunizationClick ==
                                                      false) {
                                                    SendSheepSendNewImmunizationService
                                                            .sendSheepSendNewImmunizationService(
                                                                data:
                                                                    sendNewImmunizationDataController
                                                                        .answers)
                                                        .then((res) {
                                                      if (res == 200) {
                                                        SharedPreferencesHelper
                                                            .setSheepStatusValue(
                                                                8);
                                                        Get.offAll(() =>
                                                            AllSectionScreen(
                                                              animalId:
                                                                  SharedPreferencesHelper
                                                                      .getAnimalTypeValue(),
                                                            ));
                                                      } else if (res == 401) {
                                                        sendNewImmunizationDataController
                                                            .answers
                                                            .clear();
                                                        Get.offAll(() =>
                                                            const LoginScreen());
                                                      } else if (res == 500 ||
                                                          res == 400) {
                                                        sendNewImmunizationDataController
                                                            .answers
                                                            .clear();
                                                        Get.snackbar(
                                                          'Error',
                                                          "there are problem ,can't send data.",
                                                          backgroundColor:
                                                              Colors.red,
                                                          colorText:
                                                              Colors.white,
                                                          icon: const Icon(
                                                            Icons.error,
                                                            color: Colors.white,
                                                          ),
                                                        );
                                                      } else if (res
                                                              .runtimeType ==
                                                          String) {
                                                        sendNewImmunizationDataController
                                                            .answers
                                                            .clear();
                                                        Get.snackbar(
                                                          'Error',
                                                          "there are problem ,can't send data.",
                                                          backgroundColor:
                                                              Colors.red,
                                                          colorText:
                                                              Colors.white,
                                                          icon: const Icon(
                                                            Icons.error,
                                                            color: Colors.white,
                                                          ),
                                                        );
                                                      }
                                                    });
                                                    click
                                                        .changesheepImmunizationClick();
                                                  }
                                                } else if (res == 401) {
                                                  Get.offAll(() =>
                                                      const LoginScreen());
                                                } else if (res == 400) {
                                                  Get.snackbar(
                                                      "you should add herd first".tr,
                                                      "",
                                                      backgroundColor:
                                                          secondaryColor,
                                                      colorText: whiteColor);
                                                } else if (res == 500) {
                                                  Get.snackbar(
                                                      "server error".tr, "",
                                                      backgroundColor:
                                                          secondaryColor,
                                                      colorText: whiteColor);
                                                } else {
                                                  Get.snackbar(
                                                      "something went wrong".tr,
                                                      "",
                                                      backgroundColor:
                                                          secondaryColor,
                                                      colorText: whiteColor);
                                                }
                                              });
                                            }
                                          });
                                        }
                                      });
                                      net.checkInternet().then((value) {
                                        if (value) {}
                                      });
                                    }
                                  },
                                  child: click.sheepImmunizationClick == false
                                      ? Get.locale == const Locale('ar')
                                                      ? SvgPicture.asset(
                                                          "assets/icons/add-ar.svg",
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              10,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              10,
                                                        )
                                                      : SvgPicture.asset(
                                                          "assets/icons/add-en.svg",
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              10,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              10,
                                                        )
                                      : const LoaderWidget(),
                                );
                              }),
                        ),
                      ],
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
