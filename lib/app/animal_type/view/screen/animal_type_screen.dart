import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../home/home_screen.dart';
import '../../../home/widgets/farm_item_widget.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../../controller/farm_item_widget_controller.dart';

// ignore: must_be_immutable
class AnimalTypeScreen extends StatelessWidget {
  const AnimalTypeScreen({
    Key? key,
  }) : super(key: key);

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
                child: AutoSizeText(
                  "Choose Animal Type".tr,
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
                  width: MediaQuery.of(context).size.width / 1.05,
                  height: MediaQuery.of(context).size.height / 1.3,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: Get.locale == const Locale("en")
                          ? const BorderRadius.only(
                              topRight: Radius.circular(20))
                          : const BorderRadius.only(
                              topLeft: Radius.circular(20))),
                  child: GetBuilder<FarmItemWidgetController>(
                      init: FarmItemWidgetController(),
                      builder: (itemCtrl) {
                        return Stack(
                          children: [
                            //! animal type List
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  alignment: Alignment.topCenter,
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 1.3,
                                  // padding:
                                  //     const EdgeInsets.symmetric(vertical: 3),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 20),
                                  child: GridView.builder(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 10),
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 20.0,
                                        mainAxisSpacing: 20.0,
                                      ),
                                      itemCount: itemCtrl.items.length,
                                      itemBuilder: (BuildContext ctx, index) {
                                        return FarmItemWidget(
                                          //     selected: itemCtrl.isSelected[index],
                                          color: itemCtrl
                                              .afterColorSelected[index],
                                          onTap: () {
                                            if (!itemCtrl.isClicked) {
                                              itemCtrl.changeSelected(index);
                                              itemCtrl.isClicked = true;
                                              itemCtrl.update();
                                            }
                                          },

                                          title: itemCtrl.items[index],
                                          imagePath: "assets/icons/$index.png",
                                        );
                                      })),
                            ),

                            if (itemCtrl.choicedId != 0)
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: GestureDetector(
                                    onTap: () {
                                      itemCtrl.reset();
                                      //itemCtrl.update();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              18,
                                      decoration: BoxDecoration(
                                        color: redColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: AutoSizeText(
                                        "Reset".tr,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )),

                            //!Submit (Next Buttom)
                            Align(
                              alignment: Get.locale == const Locale('en')
                                  ? Alignment.bottomRight
                                  : Alignment.bottomLeft,
                              child: InkWell(
                                onTap: () async {
                                  if (itemCtrl.choicedId > 0) {
                                    await SharedPreferencesHelper
                                        .setAnimalTypeValue(itemCtrl.choicedId);

                                    Get.to(() => AllSectionScreen(
                                          animalId: itemCtrl.choicedId,
                                        ));
                                  } else {
                                    Get.snackbar(
                                        "Alert", "Please choose an animal type",
                                        overlayColor: secondaryColor);
                                  }
                                },
                                child: Get.locale == const Locale('ar')
                                    ? SizedBox(
                                        child: SvgPicture.asset(
                                        "assets/icons/add-ar.svg",
                                        width:
                                            MediaQuery.of(context).size.width /
                                                10,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                10,
                                      ))
                                    : SizedBox(
                                        child: SvgPicture.asset(
                                        "assets/icons/add-en.svg",
                                        width:
                                            MediaQuery.of(context).size.width /
                                                10,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                10,
                                      )),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
