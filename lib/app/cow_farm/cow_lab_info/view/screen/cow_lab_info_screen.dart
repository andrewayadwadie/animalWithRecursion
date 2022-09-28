import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/click_controller.dart';
import '../../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../all_sections/services/section_date_service.dart';
import '../../../../auth/login_screen.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../controller/cow_lab_info_controller.dart';
import '../widgets/cow_lab_info_widget.dart';

// ignore: must_be_immutable
class CowLabInfoScreen extends StatelessWidget {
  CowLabInfoScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  ClickController click = Get.find<ClickController>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
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
                  "Lab Information".tr,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
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
                              child: const CowLabInfoWidget()),
                        ),
                        //!Submit (Next Buttom)
                        Align(
                           alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                          child: GetBuilder<CowLabInfoController>(
                              init: CowLabInfoController(),
                              builder: (labInfoCtrl) {
                                return GetBuilder<InternetController>(
                                    init: InternetController(),
                                    builder: (net) {
                                      return InkWell(
                                        onTap: () {
                                          net.checkInternet().then((value) {
                                            if (value) {
                                              net.checkInternet().then((value) {
                                                if (value) {
                                                  EndSectioDateService
                                                          .endCowSectioDateService(
                                                              sectionId: 11,
                                                              date:
                                                                  "${DateTime.now()}")
                                                      .then((res) {
                                                    if (res == 200) {
                                                      if (click.cowLabClick ==
                                                          false) {
                                                        labInfoCtrl
                                                            .sendData(context);
                                                        click
                                                            .changecowLabClick();
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
                                                          colorText:
                                                              whiteColor);
                                                    } else if (res == 500) {
                                                      Get.snackbar(
                                                          "server error".tr, "",
                                                          backgroundColor:
                                                              secondaryColor,
                                                          colorText:
                                                              whiteColor);
                                                    } else {
                                                      Get.snackbar(
                                                          "something went wrong".tr,
                                                          "",
                                                          backgroundColor:
                                                              secondaryColor,
                                                          colorText:
                                                              whiteColor);
                                                    }
                                                  });
                                                }
                                              });
                                            }
                                          });
                                        },
                                        child: click.cowLabClick == false
                                            ? Get.locale == const Locale('ar')
                                                ? SvgPicture.asset(
                                                    "assets/icons/add-ar.svg",
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            10,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            10,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/icons/add-en.svg",
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            10,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            10,
                                                  )
                                            : const LoaderWidget(),
                                      );
                                    });
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
