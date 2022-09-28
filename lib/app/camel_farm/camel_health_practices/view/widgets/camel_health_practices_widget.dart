import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_clean_vechicles_radio_controller.dart';
import '../../controller/camel_clean_visitor_radio_controller.dart';
import '../../controller/camel_good_sanitation_radio_controller.dart';
import '../../controller/camel_health_practices_textfield_controller.dart';
import '../../controller/camel_treated_radio_controller.dart';
import '../../controller/camel_visitor_cloths_radio_controller.dart';
import '../../controller/camel_water_source_radio_controller.dart';
import '../../controller/camel_workers_cloths_radio_controller.dart';
import 'camel_behavior_radio_widget.dart';
import 'camel_behavior_textfield_widget.dart';
import 'camel_water_source_widget.dart';

// ignore: must_be_immutable
class CamelHealthPracticesWidget extends StatelessWidget {
  CamelHealthPracticesWidget({Key? key}) : super(key: key);
  CamelHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(CamelHealthPractciesTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          LabelWidget(
            label:
                "Are there places designated for disinfecting the vehicles at the entrance to the farm?".tr),
        GetBuilder<CamelCleanVehiclesRadioController>(
            init: CamelCleanVehiclesRadioController(),
            builder: (cleanVehiclesCtrl) {
              return CamelBehaviorRadioWidget(
                enumName: CamelCleanVehiclesRadio,
                yesValue: CamelCleanVehiclesRadio.yes,
                onChangedYes: (val) => cleanVehiclesCtrl
                    .onChange(val ?? CamelCleanVehiclesRadio.yes),
                noValue: CamelCleanVehiclesRadio.no,
                onChangedNo: (val) => cleanVehiclesCtrl
                    .onChange(val ?? CamelCleanVehiclesRadio.no),
                groupValue: cleanVehiclesCtrl.charcter,
                noAnswerValue: CamelCleanVehiclesRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVehiclesCtrl
                    .onChange(val ?? CamelCleanVehiclesRadio.noAnswer),
              );
            }),
        const LineWidget(),
          LabelWidget(
            label: "Are there places designated to cleanse visitors?".tr),
        GetBuilder<CamelCleanVisitorRadioController>(
            init: CamelCleanVisitorRadioController(),
            builder: (cleanVisitorCtrl) {
              return CamelBehaviorRadioWidget(
                enumName: CamelCleanVisitorRadio,
                yesValue: CamelCleanVisitorRadio.yes,
                onChangedYes: (val) => cleanVisitorCtrl
                    .onChange(val ?? CamelCleanVisitorRadio.yes),
                noValue: CamelCleanVisitorRadio.no,
                onChangedNo: (val) =>
                    cleanVisitorCtrl.onChange(val ?? CamelCleanVisitorRadio.no),
                groupValue: cleanVisitorCtrl.charcter,
                noAnswerValue: CamelCleanVisitorRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVisitorCtrl
                    .onChange(val ?? CamelCleanVisitorRadio.noAnswer),
              );
            }),
        const LineWidget(),
          LabelWidget(
            label: "Do visitors use protective clothing when visiting?".tr),
        GetBuilder<CamelVisitorClothsRadioController>(
            init: CamelVisitorClothsRadioController(),
            builder: (visitorClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelBehaviorRadioWidget(
                    enumName: CamelVisitorClothsRadio,
                    yesValue: CamelVisitorClothsRadio.yes,
                    onChangedYes: (val) => visitorClothsCtrl
                        .onChange(val ?? CamelVisitorClothsRadio.yes),
                    noValue: CamelVisitorClothsRadio.no,
                    onChangedNo: (val) => visitorClothsCtrl
                        .onChange(val ?? CamelVisitorClothsRadio.no),
                    groupValue: visitorClothsCtrl.charcter,
                    noAnswerValue: CamelVisitorClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => visitorClothsCtrl
                        .onChange(val ?? CamelVisitorClothsRadio.noAnswer),
                  ),
                  if (visitorClothsCtrl.charcter == CamelVisitorClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "clothes type?".tr),
                        CamelBehaviorTextFieldWidget(
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
        GetBuilder<CamelWorkersClothsRadioController>(
            init: CamelWorkersClothsRadioController(),
            builder: (workersClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelBehaviorRadioWidget(
                    enumName: CamelWorkersClothsRadio,
                    yesValue: CamelWorkersClothsRadio.yes,
                    onChangedYes: (val) => workersClothsCtrl
                        .onChange(val ?? CamelWorkersClothsRadio.yes),
                    noValue: CamelWorkersClothsRadio.no,
                    onChangedNo: (val) => workersClothsCtrl
                        .onChange(val ?? CamelWorkersClothsRadio.no),
                    groupValue: workersClothsCtrl.charcter,
                    noAnswerValue: CamelWorkersClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => workersClothsCtrl
                        .onChange(val ?? CamelWorkersClothsRadio.noAnswer),
                  ),
                  if (workersClothsCtrl.charcter == CamelWorkersClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "clothes type?".tr),
                        CamelBehaviorTextFieldWidget(
                            title:  "clothes type?".tr,
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
        GetBuilder<CamelWaterSourceRadioController>(
            init: CamelWaterSourceRadioController(),
            builder: (waterSourceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelWaterSourceRadioWidget(
                    enumName: CamelWaterSourceRadio,
                    yesValue: CamelWaterSourceRadio.treated,
                    onChangedYes: (val) => waterSourceCtrl
                        .onChange(val ?? CamelWaterSourceRadio.treated),
                    noValue: CamelWaterSourceRadio.untreated,
                    onChangedNo: (val) => waterSourceCtrl
                        .onChange(val ?? CamelWaterSourceRadio.untreated),
                    groupValue: waterSourceCtrl.charcter,
                    noAnswerValue: CamelWaterSourceRadio.noAnswer,
                    onChangedNoAnswer: (val) => waterSourceCtrl
                        .onChange(val ?? CamelWaterSourceRadio.noAnswer),
                  ),
                  if (waterSourceCtrl.charcter ==
                      CamelWaterSourceRadio.untreated)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(
                            label:
                                "Is the periodic examination carried out in the competent laboratories?".tr),
                        //! missied in api after id 64
                        GetBuilder<CamelTreatedRadioController>(
                            init: CamelTreatedRadioController(),
                            builder: (treatedCtrl) {
                              return CamelBehaviorRadioWidget(
                                enumName: CamelTreatedRadio,
                                yesValue: CamelTreatedRadio.yes,
                                onChangedYes: (val) => treatedCtrl
                                    .onChange(val ?? CamelTreatedRadio.yes),
                                noValue: CamelTreatedRadio.no,
                                onChangedNo: (val) => treatedCtrl
                                    .onChange(val ?? CamelTreatedRadio.no),
                                groupValue: treatedCtrl.charcter,
                                noAnswerValue: CamelTreatedRadio.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    treatedCtrl.onChange(
                                        val ?? CamelTreatedRadio.noAnswer),
                              );
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),

        //!=======================================================
          LabelWidget(
            label:
                "What is the distance between this farm and the nearest farm?".tr),
        CamelBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangefarmDistance(val ?? "");
            }),
        const LineWidget(),
        //!=======================================================
          LabelWidget(
            label:
                "What is the distance between this farm and bodies of water?".tr),
        CamelBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangewaterDistance(val ?? "");
            }),
        const LineWidget(),

        //!=======================================================
          LabelWidget(
            label:
                "What is the distance between this farm and trees and grass?".tr),
        CamelBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangetreesDistance(val ?? "");
            }),
        const LineWidget(),
        //!=======================================================
          LabelWidget(
            label:
                "What is the distance between this farm and the main roads?".tr),
        CamelBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangeroadsDistance(val ?? "");
            }),
        const LineWidget(),
        //!=======================================================
          LabelWidget(
            label:
                "What is the distance between this farm and the residential cities?".tr),
        CamelBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangecitiesDistance(val ?? "");
            }),
        const LineWidget(),
          LabelWidget(label: "Is there good sanitation on the farm?".tr),
        GetBuilder<CamelGoodSanitationRadioController>(
            init: CamelGoodSanitationRadioController(),
            builder: (goodSanitationCtrl) {
              return CamelBehaviorRadioWidget(
                enumName: CamelGoodSanitationRadio,
                yesValue: CamelGoodSanitationRadio.yes,
                onChangedYes: (val) => goodSanitationCtrl
                    .onChange(val ?? CamelGoodSanitationRadio.yes),
                noValue: CamelGoodSanitationRadio.no,
                onChangedNo: (val) => goodSanitationCtrl
                    .onChange(val ?? CamelGoodSanitationRadio.no),
                groupValue: goodSanitationCtrl.charcter,
                noAnswerValue: CamelGoodSanitationRadio.noAnswer,
                onChangedNoAnswer: (val) => goodSanitationCtrl
                    .onChange(val ?? CamelGoodSanitationRadio.noAnswer),
              );
            }),
      ],
    );
  }
}
