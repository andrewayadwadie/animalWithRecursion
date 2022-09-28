
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_milker_building_radio_controller.dart';
import '../../controller/horse_milker_building_type_radio_controller.dart';
import '../../controller/horse_milker_place_radio_controller.dart';
import '../../controller/horse_milker_textfield_controller.dart';
import 'horse_milker_building_radio_widget.dart';
import 'horse_milker_building_type_radio_widget.dart';
import 'horse_milker_place_widget.dart';
import 'horse_milker_textfield_widget.dart';
import 'horse_milker_type_widget.dart';

 

// ignore: must_be_immutable
class HorseMilkerWidget extends StatelessWidget {
  HorseMilkerWidget({Key? key}) : super(key: key);
  HorseMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(HorseMilkerTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         LabelWidget(label: "What type of milker?".tr),
        const HorseMilkerTypeWidget(),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
         LabelWidget(label: "How many times are milking per day?".tr),
        HorseMilkerTextFieldWidget(
            title: "How many times are milking per day?".tr,
            onNoteChange: (val) {
              milkerTextFieldCtrl.onChangeMilkingTimeNo(val ?? "");
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //? push in api id 125 if yes and 126 if no
         LabelWidget(label: "Is there a place designated for milking ?".tr),
        GetBuilder<HorseMilkerPlaceRadioController>(
            init: HorseMilkerPlaceRadioController(),
            builder: (milkerPlaceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseMilkerPlaceRadioWidget(
                      enumName: HorseMilkerPlaceRadio,
                      yesValue: HorseMilkerPlaceRadio.yes,
                      onChangedYes: (val) => milkerPlaceCtrl
                          .onChange(val ?? HorseMilkerPlaceRadio.yes),
                      noValue: HorseMilkerPlaceRadio.no,
                      onChangedNo: (val) => milkerPlaceCtrl
                          .onChange(val ?? HorseMilkerPlaceRadio.no),
                      groupValue: milkerPlaceCtrl.charcter,
                      noAnswerValue: HorseMilkerPlaceRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerPlaceCtrl
                          .onChange(val ?? HorseMilkerPlaceRadio.noAnswer)),
                  if (milkerPlaceCtrl.charcter == HorseMilkerPlaceRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? push in api id 127 if milkerBuilding and 128 if barn
                         LabelWidget(label: "Place :".tr),
                        GetBuilder<HorseMilkerBuildingRadioController>(
                            init: HorseMilkerBuildingRadioController(),
                            builder: (buildingCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorseMilkerBuildingRadioWidget(
                                      enumName: HorseMilkerBuildingRadio,
                                      yesValue: HorseMilkerBuildingRadio
                                          .milkerBuilding,
                                      onChangedYes: (val) =>
                                          buildingCtrl.onChange(val ??
                                              HorseMilkerBuildingRadio
                                                  .milkerBuilding),
                                      noValue: HorseMilkerBuildingRadio.barn,
                                      onChangedNo: (val) =>
                                          buildingCtrl.onChange(val ??
                                              HorseMilkerBuildingRadio.barn),
                                      groupValue: buildingCtrl.charcter,
                                      noAnswerValue:
                                          HorseMilkerBuildingRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          buildingCtrl.onChange(val ??
                                              HorseMilkerBuildingRadio
                                                  .noAnswer)),
                                  if (buildingCtrl.charcter ==
                                      HorseMilkerBuildingRadio.milkerBuilding)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //? push in api id 129 if Fully Closed and 130 if Half wall with Canopy
                                         LabelWidget(
                                            label: "building type :".tr),
                                        GetBuilder<
                                                HorseMilkerBuildingTypeRadioController>(
                                            init:
                                                HorseMilkerBuildingTypeRadioController(),
                                            builder: (buildingTypeCtrl) {
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  HorseMilkerBuildingRadioTypeWidget(
                                                      enumName:
                                                          HorseMilkerBuildingTypeRadio,
                                                      yesValue:
                                                          HorseMilkerBuildingTypeRadio
                                                              .fullyClosed,
                                                      onChangedYes: (val) =>
                                                          buildingTypeCtrl.onChange(val ??
                                                              HorseMilkerBuildingTypeRadio
                                                                  .fullyClosed),
                                                      noValue:
                                                          HorseMilkerBuildingTypeRadio
                                                              .halfWallWithCanopy,
                                                      onChangedNo: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  HorseMilkerBuildingTypeRadio
                                                                      .halfWallWithCanopy),
                                                      groupValue:
                                                          buildingTypeCtrl
                                                              .charcter,
                                                      noAnswerValue:
                                                          HorseMilkerBuildingTypeRadio
                                                              .noAnswer,
                                                      onChangedNoAnswer: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  HorseMilkerBuildingTypeRadio
                                                                      .noAnswer)),
                                                ],
                                              );
                                            }),
                                      ],
                                    ),
                                ],
                              );
                            }),
                      ],
                    ),
                ],
              );
            }),
      ],
    );
  }
}
