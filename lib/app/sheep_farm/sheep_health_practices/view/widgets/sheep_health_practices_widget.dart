 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_clean_vechicles_radio_controller.dart';
import '../../controller/sheep_clean_visitor_radio_controller.dart';
import '../../controller/sheep_good_sanitation_radio_controller.dart';
import '../../controller/sheep_health_practices_textfield_controller.dart';
import '../../controller/sheep_treated_radio_controller.dart';
import '../../controller/sheep_visitor_cloths_radio_controller.dart';
import '../../controller/sheep_water_source_radio_controller.dart';
import '../../controller/sheep_workers_cloths_radio_controller.dart';
import 'sheep_behavior_radio_widget.dart';
import 'sheep_behavior_textfield_widget.dart';
import 'sheep_water_source_widget.dart';
 
 

// ignore: must_be_immutable
class SheepHealthPracticesWidget extends StatelessWidget {
  SheepHealthPracticesWidget({Key? key}) : super(key: key);
  SheepHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(SheepHealthPractciesTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          LabelWidget(
            label:
                "Are there places designated for disinfecting the vehicles at the entrance to the farm?".tr),
        GetBuilder<SheepCleanVehiclesRadioController>(
            init: SheepCleanVehiclesRadioController(),
            builder: (cleanVehiclesCtrl) {
              return SheepBehaviorRadioWidget(
                enumName: SheepCleanVehiclesRadio,
                yesValue: SheepCleanVehiclesRadio.yes,
                onChangedYes: (val) => cleanVehiclesCtrl
                    .onChange(val ?? SheepCleanVehiclesRadio.yes),
                noValue: SheepCleanVehiclesRadio.no,
                onChangedNo: (val) => cleanVehiclesCtrl
                    .onChange(val ?? SheepCleanVehiclesRadio.no),
                groupValue: cleanVehiclesCtrl.charcter,
                noAnswerValue: SheepCleanVehiclesRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVehiclesCtrl
                    .onChange(val ?? SheepCleanVehiclesRadio.noAnswer),
              );
            }),
        const LineWidget(),
          LabelWidget(
            label: "Are there places designated to cleanse visitors?".tr),
        GetBuilder<SheepCleanVisitorRadioController>(
            init: SheepCleanVisitorRadioController(),
            builder: (cleanVisitorCtrl) {
              return SheepBehaviorRadioWidget(
                enumName: SheepCleanVisitorRadio,
                yesValue: SheepCleanVisitorRadio.yes,
                onChangedYes: (val) => cleanVisitorCtrl
                    .onChange(val ?? SheepCleanVisitorRadio.yes),
                noValue: SheepCleanVisitorRadio.no,
                onChangedNo: (val) =>
                    cleanVisitorCtrl.onChange(val ?? SheepCleanVisitorRadio.no),
                groupValue: cleanVisitorCtrl.charcter,
                noAnswerValue: SheepCleanVisitorRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVisitorCtrl
                    .onChange(val ?? SheepCleanVisitorRadio.noAnswer),
              );
            }),
        const LineWidget(),
          LabelWidget(
            label: "Do visitors use protective clothing when visiting?".tr),
        GetBuilder<SheepVisitorClothsRadioController>(
            init: SheepVisitorClothsRadioController(),
            builder: (visitorClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepBehaviorRadioWidget(
                    enumName: SheepVisitorClothsRadio,
                    yesValue: SheepVisitorClothsRadio.yes,
                    onChangedYes: (val) => visitorClothsCtrl
                        .onChange(val ?? SheepVisitorClothsRadio.yes),
                    noValue: SheepVisitorClothsRadio.no,
                    onChangedNo: (val) => visitorClothsCtrl
                        .onChange(val ?? SheepVisitorClothsRadio.no),
                    groupValue: visitorClothsCtrl.charcter,
                    noAnswerValue: SheepVisitorClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => visitorClothsCtrl
                        .onChange(val ?? SheepVisitorClothsRadio.noAnswer),
                  ),
                  if (visitorClothsCtrl.charcter == SheepVisitorClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "clothes type?".tr),
                        SheepBehaviorTextFieldWidget(
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
        GetBuilder<SheepWorkersClothsRadioController>(
            init: SheepWorkersClothsRadioController(),
            builder: (workersClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepBehaviorRadioWidget(
                    enumName: SheepWorkersClothsRadio,
                    yesValue: SheepWorkersClothsRadio.yes,
                    onChangedYes: (val) => workersClothsCtrl
                        .onChange(val ?? SheepWorkersClothsRadio.yes),
                    noValue: SheepWorkersClothsRadio.no,
                    onChangedNo: (val) => workersClothsCtrl
                        .onChange(val ?? SheepWorkersClothsRadio.no),
                    groupValue: workersClothsCtrl.charcter,
                    noAnswerValue: SheepWorkersClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => workersClothsCtrl
                        .onChange(val ?? SheepWorkersClothsRadio.noAnswer),
                  ),
                  if (workersClothsCtrl.charcter == SheepWorkersClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "clothes type?".tr),
                        SheepBehaviorTextFieldWidget(
                            title: "clothes type?".tr ,
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
        GetBuilder<SheepWaterSourceRadioController>(
            init: SheepWaterSourceRadioController(),
            builder: (waterSourceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepWaterSourceRadioWidget(
                    enumName: SheepWaterSourceRadio,
                    yesValue: SheepWaterSourceRadio.treated,
                    onChangedYes: (val) => waterSourceCtrl
                        .onChange(val ?? SheepWaterSourceRadio.treated),
                    noValue: SheepWaterSourceRadio.untreated,
                    onChangedNo: (val) => waterSourceCtrl
                        .onChange(val ?? SheepWaterSourceRadio.untreated),
                    groupValue: waterSourceCtrl.charcter,
                    noAnswerValue: SheepWaterSourceRadio.noAnswer,
                    onChangedNoAnswer: (val) => waterSourceCtrl
                        .onChange(val ?? SheepWaterSourceRadio.noAnswer),
                  ),
                  if (waterSourceCtrl.charcter ==
                      SheepWaterSourceRadio.untreated)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(
                            label:
                                "Is the periodic examination carried out in the competent laboratories?".tr),
                        //! missied in api after id 64
                        GetBuilder<SheepTreatedRadioController>(
                            init: SheepTreatedRadioController(),
                            builder: (treatedCtrl) {
                              return SheepBehaviorRadioWidget(
                                enumName: SheepTreatedRadio,
                                yesValue: SheepTreatedRadio.yes,
                                onChangedYes: (val) => treatedCtrl
                                    .onChange(val ?? SheepTreatedRadio.yes),
                                noValue: SheepTreatedRadio.no,
                                onChangedNo: (val) => treatedCtrl
                                    .onChange(val ?? SheepTreatedRadio.no),
                                groupValue: treatedCtrl.charcter,
                                noAnswerValue: SheepTreatedRadio.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    treatedCtrl.onChange(
                                        val ?? SheepTreatedRadio.noAnswer),
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
        SheepBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangefarmDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
          LabelWidget(
            label:
                "What is the distance between this farm and bodies of water?".tr),
        SheepBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangewaterDistance(val ?? "");
            }),
        const LineWidget(),

        //!88888888888888888888888888888888888888888888888888888888888888888888888
          LabelWidget(
            label:
                "What is the distance between this farm and trees and grass?".tr),
        SheepBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangetreesDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
          LabelWidget(
            label:
                "What is the distance between this farm and the main roads?".tr),
        SheepBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangeroadsDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
          LabelWidget(
            label:
                "What is the distance between this farm and the residential cities?".tr),
        SheepBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangecitiesDistance(val ?? "");
            }),
        const LineWidget(),
          LabelWidget(label: "Is there good sanitation on the farm?".tr),
        GetBuilder<SheepGoodSanitationRadioController>(
            init: SheepGoodSanitationRadioController(),
            builder: (goodSanitationCtrl) {
              return SheepBehaviorRadioWidget(
                enumName: SheepGoodSanitationRadio,
                yesValue: SheepGoodSanitationRadio.yes,
                onChangedYes: (val) => goodSanitationCtrl
                    .onChange(val ?? SheepGoodSanitationRadio.yes),
                noValue: SheepGoodSanitationRadio.no,
                onChangedNo: (val) => goodSanitationCtrl
                    .onChange(val ?? SheepGoodSanitationRadio.no),
                groupValue: goodSanitationCtrl.charcter,
                noAnswerValue: SheepGoodSanitationRadio.noAnswer,
                onChangedNoAnswer: (val) => goodSanitationCtrl
                    .onChange(val ?? SheepGoodSanitationRadio.noAnswer),
              );
            }),
      ],
    );
  }
}
