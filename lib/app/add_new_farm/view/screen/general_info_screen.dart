import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/click_controller.dart';
import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/controller/image_picker_controller.dart';
import '../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../animal_type/view/screen/animal_type_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../home/home_screen.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../../../shared_widgets/custom_loader.dart';
import '../../controller/activity_type_field_controller.dart';
import '../../controller/city_controller.dart';
import '../../controller/farm_info_form_controller.dart';
import '../../controller/farm_location_controller.dart';
import '../../controller/farm_type_controller.dart';
import '../../service/send_farm_data.dart';
import '../widgets/new_farm_info_form_widget.dart';

// ignore: must_be_immutable
class GeneralInfoScreen extends StatelessWidget {
  GeneralInfoScreen({
    Key? key,
    required this.farmOwnerId,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  final int farmOwnerId;
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
                height: MediaQuery.of(context).size.height / 50,
              ),
              Center(
                child: Text(
                  "Farm Information".tr,
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
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: Get.locale == const Locale("en")
                          ? const BorderRadius.only(
                              topRight: Radius.circular(20))
                          : const BorderRadius.only(
                              topLeft: Radius.circular(20))),
                  child: Form(
                    key: _formKey,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 1.32,
                              child: NewFarmInfoFormWidget(
                                  controller: controller)),
                        ),
                        // <<<<<<<< Submit (Next Buttom) >>>>>>>>>>>>>
                        Align(
                          alignment: Get.locale == const Locale('en')
                              ? Alignment.bottomRight
                              : Alignment.bottomLeft,
                          child: GetBuilder<CurrentLocationController>(
                              init: CurrentLocationController(),
                              builder: (current) {
                                return GetBuilder<FarmLocationController>(
                                    init: FarmLocationController(),
                                    builder: (location) {
                                      return GetBuilder<FarmInfoFormController>(
                                          init: FarmInfoFormController(),
                                          builder: (farmInfoCtrl) {
                                            return GetBuilder<
                                                    ActivityTypeFieldController>(
                                                init:
                                                    ActivityTypeFieldController(),
                                                builder: (activityCtrl) {
                                                  return GetBuilder<
                                                          FarmTypeController>(
                                                      init:
                                                          FarmTypeController(),
                                                      builder: (sizeCtrl) {
                                                        return GetBuilder<
                                                                CityController>(
                                                            init:
                                                                CityController(),
                                                            builder:
                                                                (cityCtrl) {
                                                              return GetBuilder<
                                                                      ImagePickerController>(
                                                                  init:
                                                                      ImagePickerController(),
                                                                  builder:
                                                                      (imgCtrl) {
                                                                    return GetBuilder<
                                                                            InternetController>(
                                                                        init:
                                                                            InternetController(),
                                                                        builder:
                                                                            (net) {
                                                                          return InkWell(
                                                                              onTap: () async {
                                                                                if (_formKey.currentState!.validate()) {
                                                                                  _formKey.currentState!.save();
                                                                                  net.checkInternet().then((value) {
                                                                                    location.getLocation(current.lat ?? 0.0, current.long ?? 0.0);
                                                                                    SendFarmData.sendNewFarmData(name: farmInfoCtrl.farmName, photo: imgCtrl.image, size: sizeCtrl.farmsText, activityType: activityCtrl.activityTypeText, lat: current.lat ?? 0.0, long: current.long ?? 0.0, areaId: cityCtrl.citiesId.value , farmOwnerId: farmOwnerId, location: "${location.country},${location.city},${location.area}").then((res) {
                                                                                      if (res.runtimeType == double) {
                                                                                        SharedPreferencesHelper.setValue(res.toInt());
                                                                                        Get.offAll(() => const AnimalTypeScreen());
                                                                                      } else if (res == 401) {
                                                                                        Get.offAll(() => const LoginScreen());
                                                                                      } else if (res == 500 || res == 400) {
                                                                                        Get.snackbar(
                                                                                          'Error',
                                                                                          "there are problem ,can't send data.",
                                                                                          backgroundColor: Colors.red,
                                                                                          colorText: Colors.white,
                                                                                          icon: const Icon(
                                                                                            Icons.error,
                                                                                            color: Colors.white,
                                                                                          ),
                                                                                        );
                                                                                        click.changeFarmClick();
                                                                                      }
                                                                                    });

                                                                                    click.changeFarmClick();
                                                                                  });
                                                                                }
                                                                                //  }
                                                                              },
                                                                              child: Get.locale == const Locale('ar')
                                                                                  ? SvgPicture.asset(
                                                                                      "assets/icons/add-ar.svg",
                                                                                      width: MediaQuery.of(context).size.width / 10,
                                                                                      height: MediaQuery.of(context).size.height / 10,
                                                                                    )
                                                                                  : SvgPicture.asset(
                                                                                      "assets/icons/add-en.svg",
                                                                                      width: MediaQuery.of(context).size.width / 10,
                                                                                      height: MediaQuery.of(context).size.height / 10,
                                                                                    ));
                                                                        });
                                                                  });
                                                            });
                                                      });
                                                });
                                          });
                                    });
                              }),
                        ),

                        GetX<ClickController>(
                            init: ClickController(),
                            builder: (clicks) {
                              return clicks.farmClick.value == false
                                  ? const SizedBox()
                                  : const Align(
                                      alignment: Alignment.center,
                                      child: LoaderWidget(),
                                    );
                            }),
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
