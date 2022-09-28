
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_clean_vechicles_radio_controller.dart';
import '../../controller/goat_clean_visitor_radio_controller.dart';
import '../../controller/goat_good_sanitation_radio_controller.dart';
import '../../controller/goat_health_practices_textfield_controller.dart';
import '../../controller/goat_treated_radio_controller.dart';
import '../../controller/goat_visitor_cloths_radio_controller.dart';
import '../../controller/goat_water_source_radio_controller.dart';
import '../../controller/goat_workers_cloths_radio_controller.dart';
import 'goat_behavior_radio_widget.dart';
import 'goat_behavior_textfield_widget.dart';
import 'goat_water_source_widget.dart';
 

// ignore: must_be_immutable
class GoatHealthPracticesWidget extends StatelessWidget {
  GoatHealthPracticesWidget({Key? key}) : super(key: key);
  GoatHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(GoatHealthPractciesTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(
            label:
                "Are there places designated for disinfecting the vehicles at the entrance to the farm?".tr),
        GetBuilder<GoatCleanVehiclesRadioController>(
            init: GoatCleanVehiclesRadioController(),
            builder: (cleanVehiclesCtrl) {
              return GoatBehaviorRadioWidget(
                enumName: GoatCleanVehiclesRadio,
                yesValue: GoatCleanVehiclesRadio.yes,
                onChangedYes: (val) => cleanVehiclesCtrl
                    .onChange(val ?? GoatCleanVehiclesRadio.yes),
                noValue: GoatCleanVehiclesRadio.no,
                onChangedNo: (val) => cleanVehiclesCtrl
                    .onChange(val ?? GoatCleanVehiclesRadio.no),
                groupValue: cleanVehiclesCtrl.charcter,
                noAnswerValue: GoatCleanVehiclesRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVehiclesCtrl
                    .onChange(val ?? GoatCleanVehiclesRadio.noAnswer),
              );
            }),
        const LineWidget(),
        LabelWidget(
            label: "Are there places designated to cleanse visitors?".tr),
        GetBuilder<GoatCleanVisitorRadioController>(
            init: GoatCleanVisitorRadioController(),
            builder: (cleanVisitorCtrl) {
              return GoatBehaviorRadioWidget(
                enumName: GoatCleanVisitorRadio,
                yesValue: GoatCleanVisitorRadio.yes,
                onChangedYes: (val) => cleanVisitorCtrl
                    .onChange(val ?? GoatCleanVisitorRadio.yes),
                noValue: GoatCleanVisitorRadio.no,
                onChangedNo: (val) =>
                    cleanVisitorCtrl.onChange(val ?? GoatCleanVisitorRadio.no),
                groupValue: cleanVisitorCtrl.charcter,
                noAnswerValue: GoatCleanVisitorRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVisitorCtrl
                    .onChange(val ?? GoatCleanVisitorRadio.noAnswer),
              );
            }),
        const LineWidget(),
        LabelWidget(
            label: "Do visitors use protective clothing when visiting?".tr),
        GetBuilder<GoatVisitorClothsRadioController>(
            init: GoatVisitorClothsRadioController(),
            builder: (visitorClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatBehaviorRadioWidget(
                    enumName: GoatVisitorClothsRadio,
                    yesValue: GoatVisitorClothsRadio.yes,
                    onChangedYes: (val) => visitorClothsCtrl
                        .onChange(val ?? GoatVisitorClothsRadio.yes),
                    noValue: GoatVisitorClothsRadio.no,
                    onChangedNo: (val) => visitorClothsCtrl
                        .onChange(val ?? GoatVisitorClothsRadio.no),
                    groupValue: visitorClothsCtrl.charcter,
                    noAnswerValue: GoatVisitorClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => visitorClothsCtrl
                        .onChange(val ?? GoatVisitorClothsRadio.noAnswer),
                  ),
                  if (visitorClothsCtrl.charcter == GoatVisitorClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "clothes type?".tr),
                        GoatBehaviorTextFieldWidget(
                            title: "clothes type?".tr ,
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
        GetBuilder<GoatWorkersClothsRadioController>(
            init: GoatWorkersClothsRadioController(),
            builder: (workersClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatBehaviorRadioWidget(
                    enumName: GoatWorkersClothsRadio,
                    yesValue: GoatWorkersClothsRadio.yes,
                    onChangedYes: (val) => workersClothsCtrl
                        .onChange(val ?? GoatWorkersClothsRadio.yes),
                    noValue: GoatWorkersClothsRadio.no,
                    onChangedNo: (val) => workersClothsCtrl
                        .onChange(val ?? GoatWorkersClothsRadio.no),
                    groupValue: workersClothsCtrl.charcter,
                    noAnswerValue: GoatWorkersClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => workersClothsCtrl
                        .onChange(val ?? GoatWorkersClothsRadio.noAnswer),
                  ),
                  if (workersClothsCtrl.charcter == GoatWorkersClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "clothes type?".tr),
                        GoatBehaviorTextFieldWidget(
                            title:"clothes type?".tr  ,
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
        GetBuilder<GoatWaterSourceRadioController>(
            init: GoatWaterSourceRadioController(),
            builder: (waterSourceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatWaterSourceRadioWidget(
                    enumName: GoatWaterSourceRadio,
                    yesValue: GoatWaterSourceRadio.treated,
                    onChangedYes: (val) => waterSourceCtrl
                        .onChange(val ?? GoatWaterSourceRadio.treated),
                    noValue: GoatWaterSourceRadio.untreated,
                    onChangedNo: (val) => waterSourceCtrl
                        .onChange(val ?? GoatWaterSourceRadio.untreated),
                    groupValue: waterSourceCtrl.charcter,
                    noAnswerValue: GoatWaterSourceRadio.noAnswer,
                    onChangedNoAnswer: (val) => waterSourceCtrl
                        .onChange(val ?? GoatWaterSourceRadio.noAnswer),
                  ),
                  if (waterSourceCtrl.charcter ==
                      GoatWaterSourceRadio.untreated)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Is the periodic examination carried out in the competent laboratories?".tr),
                        //! missied in api after id 64
                        GetBuilder<GoatTreatedRadioController>(
                            init: GoatTreatedRadioController(),
                            builder: (treatedCtrl) {
                              return GoatBehaviorRadioWidget(
                                enumName: GoatTreatedRadio,
                                yesValue: GoatTreatedRadio.yes,
                                onChangedYes: (val) => treatedCtrl
                                    .onChange(val ?? GoatTreatedRadio.yes),
                                noValue: GoatTreatedRadio.no,
                                onChangedNo: (val) => treatedCtrl
                                    .onChange(val ?? GoatTreatedRadio.no),
                                groupValue: treatedCtrl.charcter,
                                noAnswerValue: GoatTreatedRadio.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    treatedCtrl.onChange(
                                        val ?? GoatTreatedRadio.noAnswer),
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
                "What is the distance between this farm and the nearest farm?".tr),
        GoatBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangefarmDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label:
                "What is the distance between this farm and bodies of water?".tr),
        GoatBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangewaterDistance(val ?? "");
            }),
        const LineWidget(),

        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label:
                "What is the distance between this farm and trees and grass?".tr),
        GoatBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangetreesDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label:
                "What is the distance between this farm and the main roads?".tr),
        GoatBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangeroadsDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label:
                "What is the distance between this farm and the residential cities?".tr),
        GoatBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangecitiesDistance(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(label: "Is there good sanitation on the farm?".tr),
        GetBuilder<GoatGoodSanitationRadioController>(
            init: GoatGoodSanitationRadioController(),
            builder: (goodSanitationCtrl) {
              return GoatBehaviorRadioWidget(
                enumName: GoatGoodSanitationRadio,
                yesValue: GoatGoodSanitationRadio.yes,
                onChangedYes: (val) => goodSanitationCtrl
                    .onChange(val ?? GoatGoodSanitationRadio.yes),
                noValue: GoatGoodSanitationRadio.no,
                onChangedNo: (val) => goodSanitationCtrl
                    .onChange(val ?? GoatGoodSanitationRadio.no),
                groupValue: goodSanitationCtrl.charcter,
                noAnswerValue: GoatGoodSanitationRadio.noAnswer,
                onChangedNoAnswer: (val) => goodSanitationCtrl
                    .onChange(val ?? GoatGoodSanitationRadio.noAnswer),
              );
            }),
      ],
    );
  }
}
