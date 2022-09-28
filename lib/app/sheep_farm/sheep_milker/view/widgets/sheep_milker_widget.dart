import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_milker_building_radio_controller.dart';
import '../../controller/sheep_milker_building_type_radio_controller.dart';
import '../../controller/sheep_milker_place_radio_controller.dart';
import '../../controller/sheep_milker_textfield_controller.dart';
import 'sheep_milker_building_radio_widget.dart';
import 'sheep_milker_building_type_radio_widget.dart';
import 'sheep_milker_place_widget.dart';
import 'sheep_milker_textfield_widget.dart';
import 'sheep_milker_type_widget.dart';

// ignore: must_be_immutable
class SheepMilkerWidget extends StatelessWidget {
  SheepMilkerWidget({Key? key}) : super(key: key);
  SheepMilkerTextFieldController milkerTextFieldCtrl =
      Get.put(SheepMilkerTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(label: "What type of milker?".tr),
        const SheepMilkerTypeWidget(),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        LabelWidget(label: "How many times are milking per day?".tr),
        SheepMilkerTextFieldWidget(
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
        GetBuilder<SheepMilkerPlaceRadioController>(
            init: SheepMilkerPlaceRadioController(),
            builder: (milkerPlaceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepMilkerPlaceRadioWidget(
                      enumName: SheepMilkerPlaceRadio,
                      yesValue: SheepMilkerPlaceRadio.yes,
                      onChangedYes: (val) => milkerPlaceCtrl
                          .onChange(val ?? SheepMilkerPlaceRadio.yes),
                      noValue: SheepMilkerPlaceRadio.no,
                      onChangedNo: (val) => milkerPlaceCtrl
                          .onChange(val ?? SheepMilkerPlaceRadio.no),
                      groupValue: milkerPlaceCtrl.charcter,
                      noAnswerValue: SheepMilkerPlaceRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerPlaceCtrl
                          .onChange(val ?? SheepMilkerPlaceRadio.noAnswer)),
                  if (milkerPlaceCtrl.charcter == SheepMilkerPlaceRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //? push in api id 127 if milkerBuilding and 128 if barn
                        LabelWidget(label: "Place :".tr),
                        GetBuilder<SheepMilkerBuildingRadioController>(
                            init: SheepMilkerBuildingRadioController(),
                            builder: (buildingCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SheepMilkerBuildingRadioWidget(
                                      enumName: SheepMilkerBuildingRadio,
                                      yesValue: SheepMilkerBuildingRadio
                                          .milkerBuilding,
                                      onChangedYes: (val) =>
                                          buildingCtrl.onChange(val ??
                                              SheepMilkerBuildingRadio
                                                  .milkerBuilding),
                                      noValue: SheepMilkerBuildingRadio.barn,
                                      onChangedNo: (val) =>
                                          buildingCtrl.onChange(val ??
                                              SheepMilkerBuildingRadio.barn),
                                      groupValue: buildingCtrl.charcter,
                                      noAnswerValue:
                                          SheepMilkerBuildingRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          buildingCtrl.onChange(val ??
                                              SheepMilkerBuildingRadio
                                                  .noAnswer)),
                                  if (buildingCtrl.charcter ==
                                      SheepMilkerBuildingRadio.milkerBuilding)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //? push in api id 129 if Fully Closed and 130 if Half wall with Canopy
                                        LabelWidget(
                                            label: "building type :".tr),
                                        GetBuilder<
                                                SheepMilkerBuildingTypeRadioController>(
                                            init:
                                                SheepMilkerBuildingTypeRadioController(),
                                            builder: (buildingTypeCtrl) {
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SheepMilkerBuildingRadioTypeWidget(
                                                      enumName:
                                                          SheepMilkerBuildingTypeRadio,
                                                      yesValue:
                                                          SheepMilkerBuildingTypeRadio
                                                              .fullyClosed,
                                                      onChangedYes: (val) =>
                                                          buildingTypeCtrl.onChange(val ??
                                                              SheepMilkerBuildingTypeRadio
                                                                  .fullyClosed),
                                                      noValue:
                                                          SheepMilkerBuildingTypeRadio
                                                              .halfWallWithCanopy,
                                                      onChangedNo: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  SheepMilkerBuildingTypeRadio
                                                                      .halfWallWithCanopy),
                                                      groupValue:
                                                          buildingTypeCtrl
                                                              .charcter,
                                                      noAnswerValue:
                                                          SheepMilkerBuildingTypeRadio
                                                              .noAnswer,
                                                      onChangedNoAnswer: (val) =>
                                                          buildingTypeCtrl
                                                              .onChange(val ??
                                                                  SheepMilkerBuildingTypeRadio
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
