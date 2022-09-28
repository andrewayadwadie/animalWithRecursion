import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_milker_building_radio_controller.dart';
import '../../controller/camel_milker_building_type_radio_controller.dart';
import '../../controller/camel_milker_place_radio_controller.dart';
import '../../controller/camel_milker_textfield_controller.dart';
import 'camel_milker_building_radio_widget.dart';
import 'camel_milker_building_type_radio_widget.dart';
import 'camel_milker_place_widget.dart';
import 'camel_milker_textfield_widget.dart';
import 'camel_milker_type_widget.dart';

// ignore: must_be_immutable
class CamelMilkerWidget extends StatelessWidget {
  CamelMilkerWidget({Key? key}) : super(key: key);
  CamelMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(CamelMilkerTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(label: "What type of milker?".tr),
        const CamelMilkerTypeWidget(),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        LabelWidget(label: "How many times are milking per day?".tr),
        CamelMilkerTextFieldWidget(
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
        GetBuilder<CamelMilkerPlaceRadioController>(
            init: CamelMilkerPlaceRadioController(),
            builder: (milkerPlaceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelMilkerPlaceRadioWidget(
                      enumName: CamelMilkerPlaceRadio,
                      yesValue: CamelMilkerPlaceRadio.yes,
                      onChangedYes: (val) => milkerPlaceCtrl
                          .onChange(val ?? CamelMilkerPlaceRadio.yes),
                      noValue: CamelMilkerPlaceRadio.no,
                      onChangedNo: (val) => milkerPlaceCtrl
                          .onChange(val ?? CamelMilkerPlaceRadio.no),
                      groupValue: milkerPlaceCtrl.charcter,
                      noAnswerValue: CamelMilkerPlaceRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerPlaceCtrl
                          .onChange(val ?? CamelMilkerPlaceRadio.noAnswer)),
                  if (milkerPlaceCtrl.charcter == CamelMilkerPlaceRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? push in api id 127 if milkerBuilding and 128 if barn
                        LabelWidget(label: "Place :".tr),
                        GetBuilder<CamelMilkerBuildingRadioController>(
                            init: CamelMilkerBuildingRadioController(),
                            builder: (buildingCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelMilkerBuildingRadioWidget(
                                      enumName: CamelMilkerBuildingRadio,
                                      yesValue: CamelMilkerBuildingRadio
                                          .milkerBuilding,
                                      onChangedYes: (val) =>
                                          buildingCtrl.onChange(val ??
                                              CamelMilkerBuildingRadio
                                                  .milkerBuilding),
                                      noValue: CamelMilkerBuildingRadio.barn,
                                      onChangedNo: (val) =>
                                          buildingCtrl.onChange(val ??
                                              CamelMilkerBuildingRadio.barn),
                                      groupValue: buildingCtrl.charcter,
                                      noAnswerValue:
                                          CamelMilkerBuildingRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          buildingCtrl.onChange(val ??
                                              CamelMilkerBuildingRadio
                                                  .noAnswer)),
                                  if (buildingCtrl.charcter ==
                                      CamelMilkerBuildingRadio.milkerBuilding)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //? push in api id 129 if Fully Closed and 130 if Half wall with Canopy
                                        LabelWidget(
                                            label: "building type :".tr),
                                        GetBuilder<
                                                CamelMilkerBuildingTypeRadioController>(
                                            init:
                                                CamelMilkerBuildingTypeRadioController(),
                                            builder: (buildingTypeCtrl) {
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CamelMilkerBuildingRadioTypeWidget(
                                                      enumName:
                                                          CamelMilkerBuildingTypeRadio,
                                                      yesValue:
                                                          CamelMilkerBuildingTypeRadio
                                                              .fullyClosed,
                                                      onChangedYes: (val) =>
                                                          buildingTypeCtrl.onChange(val ??
                                                              CamelMilkerBuildingTypeRadio
                                                                  .fullyClosed),
                                                      noValue:
                                                          CamelMilkerBuildingTypeRadio
                                                              .halfWallWithCanopy,
                                                      onChangedNo: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  CamelMilkerBuildingTypeRadio
                                                                      .halfWallWithCanopy),
                                                      groupValue:
                                                          buildingTypeCtrl
                                                              .charcter,
                                                      noAnswerValue:
                                                          CamelMilkerBuildingTypeRadio
                                                              .noAnswer,
                                                      onChangedNoAnswer: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  CamelMilkerBuildingTypeRadio
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
