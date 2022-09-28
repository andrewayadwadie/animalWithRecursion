import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_milker_building_radio_controller.dart';
import '../../controller/goat_milker_building_type_radio_controller.dart';
import '../../controller/goat_milker_place_radio_controller.dart';
import '../../controller/goat_milker_textfield_controller.dart';
import 'goat_milker_building_radio_widget.dart';
import 'goat_milker_building_type_radio_widget.dart';
import 'goat_milker_place_widget.dart';
import 'goat_milker_textfield_widget.dart';
import 'goat_milker_type_widget.dart';
 

// ignore: must_be_immutable
class GoatMilkerWidget extends StatelessWidget {
  GoatMilkerWidget({Key? key}) : super(key: key);
  GoatMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(GoatMilkerTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          LabelWidget(label: "What type of milker?".tr),
        const GoatMilkerTypeWidget(),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        LabelWidget(label: "How many times are milking per day?".tr),
        GoatMilkerTextFieldWidget(
            title:"How many times are milking per day?".tr ,
            onNoteChange: (val) {
              milkerTextFieldCtrl.onChangeMilkingTimeNo(val ?? "");
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //? push in api id 125 if yes and 126 if no
          LabelWidget(label: "Is there a place designated for milking ?".tr),
        GetBuilder<GoatMilkerPlaceRadioController>(
            init: GoatMilkerPlaceRadioController(),
            builder: (milkerPlaceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatMilkerPlaceRadioWidget(
                      enumName: GoatMilkerPlaceRadio,
                      yesValue: GoatMilkerPlaceRadio.yes,
                      onChangedYes: (val) => milkerPlaceCtrl
                          .onChange(val ?? GoatMilkerPlaceRadio.yes),
                      noValue: GoatMilkerPlaceRadio.no,
                      onChangedNo: (val) => milkerPlaceCtrl
                          .onChange(val ?? GoatMilkerPlaceRadio.no),
                      groupValue: milkerPlaceCtrl.charcter,
                      noAnswerValue: GoatMilkerPlaceRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerPlaceCtrl
                          .onChange(val ?? GoatMilkerPlaceRadio.noAnswer)),
                  if (milkerPlaceCtrl.charcter == GoatMilkerPlaceRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? push in api id 127 if milkerBuilding and 128 if barn
                          LabelWidget(label: "Place :".tr),
                        GetBuilder<GoatMilkerBuildingRadioController>(
                            init: GoatMilkerBuildingRadioController(),
                            builder: (buildingCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GoatMilkerBuildingRadioWidget(
                                      enumName: GoatMilkerBuildingRadio,
                                      yesValue: GoatMilkerBuildingRadio
                                          .milkerBuilding,
                                      onChangedYes: (val) =>
                                          buildingCtrl.onChange(val ??
                                              GoatMilkerBuildingRadio
                                                  .milkerBuilding),
                                      noValue: GoatMilkerBuildingRadio.barn,
                                      onChangedNo: (val) =>
                                          buildingCtrl.onChange(val ??
                                              GoatMilkerBuildingRadio.barn),
                                      groupValue: buildingCtrl.charcter,
                                      noAnswerValue:
                                          GoatMilkerBuildingRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          buildingCtrl.onChange(val ??
                                              GoatMilkerBuildingRadio
                                                  .noAnswer)),
                                  if (buildingCtrl.charcter ==
                                      GoatMilkerBuildingRadio.milkerBuilding)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //? push in api id 129 if Fully Closed and 130 if Half wall with Canopy
                                          LabelWidget(
                                            label: "building type :".tr),
                                        GetBuilder<
                                                GoatMilkerBuildingTypeRadioController>(
                                            init:
                                                GoatMilkerBuildingTypeRadioController(),
                                            builder: (buildingTypeCtrl) {
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GoatMilkerBuildingRadioTypeWidget(
                                                      enumName:
                                                          GoatMilkerBuildingTypeRadio,
                                                      yesValue:
                                                          GoatMilkerBuildingTypeRadio
                                                              .fullyClosed,
                                                      onChangedYes: (val) =>
                                                          buildingTypeCtrl.onChange(val ??
                                                              GoatMilkerBuildingTypeRadio
                                                                  .fullyClosed),
                                                      noValue:
                                                          GoatMilkerBuildingTypeRadio
                                                              .halfWallWithCanopy,
                                                      onChangedNo: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  GoatMilkerBuildingTypeRadio
                                                                      .halfWallWithCanopy),
                                                      groupValue:
                                                          buildingTypeCtrl
                                                              .charcter,
                                                      noAnswerValue:
                                                          GoatMilkerBuildingTypeRadio
                                                              .noAnswer,
                                                      onChangedNoAnswer: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  GoatMilkerBuildingTypeRadio
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
