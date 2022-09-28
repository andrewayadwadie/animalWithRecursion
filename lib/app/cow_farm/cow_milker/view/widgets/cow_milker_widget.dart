import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_milker_building_radio_controller.dart';
import '../../controller/cow_milker_building_type_radio_controller.dart';
import '../../controller/cow_milker_place_radio_controller.dart';
import '../../controller/cow_milker_textfield_controller.dart';
import 'cow_milker_building_radio_widget.dart';
import 'cow_milker_building_type_radio_widget.dart';
import 'cow_milker_place_widget.dart';
import 'cow_milker_textfield_widget.dart';
import 'cow_milker_type_widget.dart';

// ignore: must_be_immutable
class CowMilkerWidget extends StatelessWidget {
  CowMilkerWidget({Key? key}) : super(key: key);
  CowMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(CowMilkerTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(label: 'What type of milker?'.tr),
        const CowMilkerTypeWidget(),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        LabelWidget(label: "How many times are milking per day?".tr),
        CowMilkerTextFieldWidget(
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
        GetBuilder<CowMilkerPlaceRadioController>(
            init: CowMilkerPlaceRadioController(),
            builder: (milkerPlaceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowMilkerPlaceRadioWidget(
                      enumName: CowMilkerPlaceRadio,
                      yesValue: CowMilkerPlaceRadio.yes,
                      onChangedYes: (val) => milkerPlaceCtrl
                          .onChange(val ?? CowMilkerPlaceRadio.yes),
                      noValue: CowMilkerPlaceRadio.no,
                      onChangedNo: (val) => milkerPlaceCtrl
                          .onChange(val ?? CowMilkerPlaceRadio.no),
                      groupValue: milkerPlaceCtrl.charcter,
                      noAnswerValue: CowMilkerPlaceRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerPlaceCtrl
                          .onChange(val ?? CowMilkerPlaceRadio.noAnswer)),
                  if (milkerPlaceCtrl.charcter == CowMilkerPlaceRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? push in api id 127 if milkerBuilding and 128 if barn
                        LabelWidget(label: "Place :".tr),
                        GetBuilder<CowMilkerBuildingRadioController>(
                            init: CowMilkerBuildingRadioController(),
                            builder: (buildingCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CowMilkerBuildingRadioWidget(
                                      enumName: CowMilkerBuildingRadio,
                                      yesValue:
                                          CowMilkerBuildingRadio.milkerBuilding,
                                      onChangedYes: (val) =>
                                          buildingCtrl.onChange(val ??
                                              CowMilkerBuildingRadio
                                                  .milkerBuilding),
                                      noValue: CowMilkerBuildingRadio.barn,
                                      onChangedNo: (val) =>
                                          buildingCtrl.onChange(val ??
                                              CowMilkerBuildingRadio.barn),
                                      groupValue: buildingCtrl.charcter,
                                      noAnswerValue:
                                          CowMilkerBuildingRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          buildingCtrl.onChange(val ??
                                              CowMilkerBuildingRadio.noAnswer)),
                                  if (buildingCtrl.charcter ==
                                      CowMilkerBuildingRadio.milkerBuilding)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //? push in api id 129 if Fully Closed and 130 if Half wall with Canopy
                                        LabelWidget(
                                            label: "building type :".tr),
                                        GetBuilder<
                                                CowMilkerBuildingTypeRadioController>(
                                            init:
                                                CowMilkerBuildingTypeRadioController(),
                                            builder: (buildingTypeCtrl) {
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CowMilkerBuildingRadioTypeWidget(
                                                      enumName:
                                                          CowMilkerBuildingTypeRadio,
                                                      yesValue:
                                                          CowMilkerBuildingTypeRadio
                                                              .fullyClosed,
                                                      onChangedYes: (val) =>
                                                          buildingTypeCtrl.onChange(val ??
                                                              CowMilkerBuildingTypeRadio
                                                                  .fullyClosed),
                                                      noValue:
                                                          CowMilkerBuildingTypeRadio
                                                              .halfWallWithCanopy,
                                                      onChangedNo: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  CowMilkerBuildingTypeRadio
                                                                      .halfWallWithCanopy),
                                                      groupValue:
                                                          buildingTypeCtrl
                                                              .charcter,
                                                      noAnswerValue:
                                                          CowMilkerBuildingTypeRadio
                                                              .noAnswer,
                                                      onChangedNoAnswer: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  CowMilkerBuildingTypeRadio
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
