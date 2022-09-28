import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_clean_vechicles_radio_controller.dart';
import '../../controller/horse_clean_visitor_radio_controller.dart';
import '../../controller/horse_good_sanitation_radio_controller.dart';
import '../../controller/horse_health_practices_textfield_controller.dart';
import '../../controller/horse_treated_radio_controller.dart';
import '../../controller/horse_visitor_cloths_radio_controller.dart';
import '../../controller/horse_water_source_radio_controller.dart';
import '../../controller/horse_workers_cloths_radio_controller.dart';
import 'horse_behavior_radio_widget.dart';
import 'horse_behavior_textfield_widget.dart';
import 'horse_water_source_widget.dart';

// ignore: must_be_immutable
class HorseHealthPracticesWidget extends StatelessWidget {
  HorseHealthPracticesWidget({Key? key}) : super(key: key);
  HorseHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(HorseHealthPractciesTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(
            label:
                "Are there places designated for disinfecting the vehicles at the entrance to the farm?"
                    .tr),
        GetBuilder<HorseCleanVehiclesRadioController>(
            init: HorseCleanVehiclesRadioController(),
            builder: (cleanVehiclesCtrl) {
              return HorseBehaviorRadioWidget(
                enumName: HorseCleanVehiclesRadio,
                yesValue: HorseCleanVehiclesRadio.yes,
                onChangedYes: (val) => cleanVehiclesCtrl
                    .onChange(val ?? HorseCleanVehiclesRadio.yes),
                noValue: HorseCleanVehiclesRadio.no,
                onChangedNo: (val) => cleanVehiclesCtrl
                    .onChange(val ?? HorseCleanVehiclesRadio.no),
                groupValue: cleanVehiclesCtrl.charcter,
                noAnswerValue: HorseCleanVehiclesRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVehiclesCtrl
                    .onChange(val ?? HorseCleanVehiclesRadio.noAnswer),
              );
            }),
        const LineWidget(),
        LabelWidget(
            label: "Are there places designated to cleanse visitors?".tr),
        GetBuilder<HorseCleanVisitorRadioController>(
            init: HorseCleanVisitorRadioController(),
            builder: (cleanVisitorCtrl) {
              return HorseBehaviorRadioWidget(
                enumName: HorseCleanVisitorRadio,
                yesValue: HorseCleanVisitorRadio.yes,
                onChangedYes: (val) => cleanVisitorCtrl
                    .onChange(val ?? HorseCleanVisitorRadio.yes),
                noValue: HorseCleanVisitorRadio.no,
                onChangedNo: (val) =>
                    cleanVisitorCtrl.onChange(val ?? HorseCleanVisitorRadio.no),
                groupValue: cleanVisitorCtrl.charcter,
                noAnswerValue: HorseCleanVisitorRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVisitorCtrl
                    .onChange(val ?? HorseCleanVisitorRadio.noAnswer),
              );
            }),
        const LineWidget(),
        LabelWidget(
            label: "Do visitors use protective clothing when visiting?".tr),
        GetBuilder<HorseVisitorClothsRadioController>(
            init: HorseVisitorClothsRadioController(),
            builder: (visitorClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseBehaviorRadioWidget(
                    enumName: HorseVisitorClothsRadio,
                    yesValue: HorseVisitorClothsRadio.yes,
                    onChangedYes: (val) => visitorClothsCtrl
                        .onChange(val ?? HorseVisitorClothsRadio.yes),
                    noValue: HorseVisitorClothsRadio.no,
                    onChangedNo: (val) => visitorClothsCtrl
                        .onChange(val ?? HorseVisitorClothsRadio.no),
                    groupValue: visitorClothsCtrl.charcter,
                    noAnswerValue: HorseVisitorClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => visitorClothsCtrl
                        .onChange(val ?? HorseVisitorClothsRadio.noAnswer),
                  ),
                  if (visitorClothsCtrl.charcter == HorseVisitorClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "clothes type?".tr),
                        HorseBehaviorTextFieldWidget(
                            title: "clothes type?".tr,
                            onNoteChange: (val) {
                              healthPractciesTextFieldCtrl
                                  .onChangevisitorCloths(val ?? "");
                            }),
                      ],
                    ),
                ],
              );
            }),
        //!------------------------------------------------
        const LineWidget(),
        LabelWidget(label: "Do farm workers use protective clothing?".tr),
        GetBuilder<HorseWorkersClothsRadioController>(
            init: HorseWorkersClothsRadioController(),
            builder: (workersClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseBehaviorRadioWidget(
                    enumName: HorseWorkersClothsRadio,
                    yesValue: HorseWorkersClothsRadio.yes,
                    onChangedYes: (val) => workersClothsCtrl
                        .onChange(val ?? HorseWorkersClothsRadio.yes),
                    noValue: HorseWorkersClothsRadio.no,
                    onChangedNo: (val) => workersClothsCtrl
                        .onChange(val ?? HorseWorkersClothsRadio.no),
                    groupValue: workersClothsCtrl.charcter,
                    noAnswerValue: HorseWorkersClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => workersClothsCtrl
                        .onChange(val ?? HorseWorkersClothsRadio.noAnswer),
                  ),
                  if (workersClothsCtrl.charcter == HorseWorkersClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "clothes type?".tr),
                        HorseBehaviorTextFieldWidget(
                            title: "clothes type?".tr,
                            onNoteChange: (val) {
                              healthPractciesTextFieldCtrl
                                  .onChangeworkerscloths(val ?? "");
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        LabelWidget(label: "What is the source of drinking water?".tr),
        GetBuilder<HorseWaterSourceRadioController>(
            init: HorseWaterSourceRadioController(),
            builder: (waterSourceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseWaterSourceRadioWidget(
                    enumName: HorseWaterSourceRadio,
                    yesValue: HorseWaterSourceRadio.treated,
                    onChangedYes: (val) => waterSourceCtrl
                        .onChange(val ?? HorseWaterSourceRadio.treated),
                    noValue: HorseWaterSourceRadio.untreated,
                    onChangedNo: (val) => waterSourceCtrl
                        .onChange(val ?? HorseWaterSourceRadio.untreated),
                    groupValue: waterSourceCtrl.charcter,
                    noAnswerValue: HorseWaterSourceRadio.noAnswer,
                    onChangedNoAnswer: (val) => waterSourceCtrl
                        .onChange(val ?? HorseWaterSourceRadio.noAnswer),
                  ),
                  if (waterSourceCtrl.charcter ==
                      HorseWaterSourceRadio.untreated)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Is the periodic examination carried out in the competent laboratories?"
                                    .tr),
                        //! missied in api after id 64
                        GetBuilder<HorseTreatedRadioController>(
                            init: HorseTreatedRadioController(),
                            builder: (treatedCtrl) {
                              return HorseBehaviorRadioWidget(
                                enumName: HorseTreatedRadio,
                                yesValue: HorseTreatedRadio.yes,
                                onChangedYes: (val) => treatedCtrl
                                    .onChange(val ?? HorseTreatedRadio.yes),
                                noValue: HorseTreatedRadio.no,
                                onChangedNo: (val) => treatedCtrl
                                    .onChange(val ?? HorseTreatedRadio.no),
                                groupValue: treatedCtrl.charcter,
                                noAnswerValue: HorseTreatedRadio.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    treatedCtrl.onChange(
                                        val ?? HorseTreatedRadio.noAnswer),
                              );
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),

        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label:
                "What is the distance between this farm and the nearest farm?"
                    .tr),
        HorseBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangefarmDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label: "What is the distance between this farm and bodies of water?"
                .tr),
        HorseBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangewaterDistance(val ?? "");
            }),
        const LineWidget(),

        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label: "What is the distance between this farm and trees and grass?"
                .tr),
        HorseBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangetreesDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label: "What is the distance between this farm and the main roads?"
                .tr),
        HorseBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangeroadsDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label:
                "What is the distance between this farm and the residential cities?"
                    .tr),
        HorseBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangecitiesDistance(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(label: "Is there good sanitation on the farm?".tr),
        GetBuilder<HorseGoodSanitationRadioController>(
            init: HorseGoodSanitationRadioController(),
            builder: (goodSanitationCtrl) {
              return HorseBehaviorRadioWidget(
                enumName: HorseGoodSanitationRadio,
                yesValue: HorseGoodSanitationRadio.yes,
                onChangedYes: (val) => goodSanitationCtrl
                    .onChange(val ?? HorseGoodSanitationRadio.yes),
                noValue: HorseGoodSanitationRadio.no,
                onChangedNo: (val) => goodSanitationCtrl
                    .onChange(val ?? HorseGoodSanitationRadio.no),
                groupValue: goodSanitationCtrl.charcter,
                noAnswerValue: HorseGoodSanitationRadio.noAnswer,
                onChangedNoAnswer: (val) => goodSanitationCtrl
                    .onChange(val ?? HorseGoodSanitationRadio.noAnswer),
              );
            }),
      ],
    );
  }
}
