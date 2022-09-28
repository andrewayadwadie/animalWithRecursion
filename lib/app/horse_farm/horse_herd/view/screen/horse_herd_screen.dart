import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/click_controller.dart';
import '../../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../../utils/db/auth_shared_preferences.dart';
import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../../../shared_widgets/custom_appbar_title.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../controller/horse_send_herd_data_controller.dart';
import '../widgets/horse_herd_form_widget.dart';

// ignore: must_be_immutable
class HorseHerdScreen extends StatelessWidget {
  HorseHerdScreen({
    Key? key,
  }) : super(key: key);
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
                  "Horse Herd Information".tr,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 22,
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
                              child: const HorseHerdFormWidget()),
                        ),
                        //!Submit (Next Buttom)
                        Align(
                       alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                          child: GetBuilder<HorseSendHerdDataController>(
                              init: HorseSendHerdDataController(),
                              builder: (ctrl) {
                                return GetBuilder<InternetController>(
                                    init: InternetController(),
                                    builder: (net) {
                                      return InkWell(
                                        onTap: () async {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            _formKey.currentState!.save();
                                            net.checkInternet().then((value) {
                                              if (value) {
                                                if (click.horseHerdClick ==
                                                    false) {
                                                  ctrl.sendHerdData(context);
                                                  click.changehorseHerdClick();
                                                }
                                              }
                                            });
                                          }
                                        },
                                        child: click.horseHerdClick == false
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
                        )
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
