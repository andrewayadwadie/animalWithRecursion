import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_clean_vechicles_radio_controller.dart';
import '../../controller/cow_clean_visitor_radio_controller.dart';
import '../../controller/cow_good_sanitation_radio_controller.dart';
import '../../controller/cow_health_practices_textfield_controller.dart';
import '../../controller/cow_treated_radio_controller.dart';
import '../../controller/cow_visitor_cloths_radio_controller.dart';
import '../../controller/cow_water_source_radio_controller.dart';
import '../../controller/cow_workers_cloths_radio_controller.dart';
import 'cow_behavior_radio_widget.dart';
import 'cow_behavior_textfield_widget.dart';
import 'cow_water_source_widget.dart';

// ignore: must_be_immutable
class CowHealthPracticesWidget extends StatelessWidget {
  CowHealthPracticesWidget({Key? key}) : super(key: key);
  CowHealthPractciesTextFieldController healthPractciesTextFieldCtrl =
      Get.put(CowHealthPractciesTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(
            label:
                "Are there places designated for disinfecting the vehicles at the entrance to the farm?"
                    .tr),
        GetBuilder<CowCleanVehiclesRadioController>(
            init: CowCleanVehiclesRadioController(),
            builder: (cleanVehiclesCtrl) {
              return CowBehaviorRadioWidget(
                enumName: CowCleanVehiclesRadio,
                yesValue: CowCleanVehiclesRadio.yes,
                onChangedYes: (val) => cleanVehiclesCtrl
                    .onChange(val ?? CowCleanVehiclesRadio.yes),
                noValue: CowCleanVehiclesRadio.no,
                onChangedNo: (val) =>
                    cleanVehiclesCtrl.onChange(val ?? CowCleanVehiclesRadio.no),
                groupValue: cleanVehiclesCtrl.charcter,
                noAnswerValue: CowCleanVehiclesRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVehiclesCtrl
                    .onChange(val ?? CowCleanVehiclesRadio.noAnswer),
              );
            }),
        const LineWidget(),
        LabelWidget(
            label: "Are there places designated to cleanse visitors?".tr),
        GetBuilder<CowCleanVisitorRadioController>(
            init: CowCleanVisitorRadioController(),
            builder: (cleanVisitorCtrl) {
              return CowBehaviorRadioWidget(
                enumName: CowCleanVisitorRadio,
                yesValue: CowCleanVisitorRadio.yes,
                onChangedYes: (val) =>
                    cleanVisitorCtrl.onChange(val ?? CowCleanVisitorRadio.yes),
                noValue: CowCleanVisitorRadio.no,
                onChangedNo: (val) =>
                    cleanVisitorCtrl.onChange(val ?? CowCleanVisitorRadio.no),
                groupValue: cleanVisitorCtrl.charcter,
                noAnswerValue: CowCleanVisitorRadio.noAnswer,
                onChangedNoAnswer: (val) => cleanVisitorCtrl
                    .onChange(val ?? CowCleanVisitorRadio.noAnswer),
              );
            }),
        const LineWidget(),
        LabelWidget(
            label: "Do visitors use protective clothing when visiting?".tr),
        GetBuilder<CowVisitorClothsRadioController>(
            init: CowVisitorClothsRadioController(),
            builder: (visitorClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowBehaviorRadioWidget(
                    enumName: CowVisitorClothsRadio,
                    yesValue: CowVisitorClothsRadio.yes,
                    onChangedYes: (val) => visitorClothsCtrl
                        .onChange(val ?? CowVisitorClothsRadio.yes),
                    noValue: CowVisitorClothsRadio.no,
                    onChangedNo: (val) => visitorClothsCtrl
                        .onChange(val ?? CowVisitorClothsRadio.no),
                    groupValue: visitorClothsCtrl.charcter,
                    noAnswerValue: CowVisitorClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => visitorClothsCtrl
                        .onChange(val ?? CowVisitorClothsRadio.noAnswer),
                  ),
                  if (visitorClothsCtrl.charcter == CowVisitorClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "clothes type?".tr),
                        CowBehaviorTextFieldWidget(
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
        LabelWidget(label: 'Do farm workers use protective clothing?'.tr),
        GetBuilder<CowWorkersClothsRadioController>(
            init: CowWorkersClothsRadioController(),
            builder: (workersClothsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowBehaviorRadioWidget(
                    enumName: CowWorkersClothsRadio,
                    yesValue: CowWorkersClothsRadio.yes,
                    onChangedYes: (val) => workersClothsCtrl
                        .onChange(val ?? CowWorkersClothsRadio.yes),
                    noValue: CowWorkersClothsRadio.no,
                    onChangedNo: (val) => workersClothsCtrl
                        .onChange(val ?? CowWorkersClothsRadio.no),
                    groupValue: workersClothsCtrl.charcter,
                    noAnswerValue: CowWorkersClothsRadio.noAnswer,
                    onChangedNoAnswer: (val) => workersClothsCtrl
                        .onChange(val ?? CowWorkersClothsRadio.noAnswer),
                  ),
                  if (workersClothsCtrl.charcter == CowWorkersClothsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "clothes type?".tr),
                        CowBehaviorTextFieldWidget(
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
        GetBuilder<CowWaterSourceRadioController>(
            init: CowWaterSourceRadioController(),
            builder: (waterSourceCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowWaterSourceRadioWidget(
                    enumName: CowWaterSourceRadio,
                    yesValue: CowWaterSourceRadio.treated,
                    onChangedYes: (val) => waterSourceCtrl
                        .onChange(val ?? CowWaterSourceRadio.treated),
                    noValue: CowWaterSourceRadio.untreated,
                    onChangedNo: (val) => waterSourceCtrl
                        .onChange(val ?? CowWaterSourceRadio.untreated),
                    groupValue: waterSourceCtrl.charcter,
                    noAnswerValue: CowWaterSourceRadio.noAnswer,
                    onChangedNoAnswer: (val) => waterSourceCtrl
                        .onChange(val ?? CowWaterSourceRadio.noAnswer),
                  ),
                  if (waterSourceCtrl.charcter == CowWaterSourceRadio.untreated)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Is the periodic examination carried out in the competent laboratories?"
                                    .tr),
                        //! missied in api after id 64
                        GetBuilder<CowTreatedRadioController>(
                            init: CowTreatedRadioController(),
                            builder: (treatedCtrl) {
                              return CowBehaviorRadioWidget(
                                enumName: CowTreatedRadio,
                                yesValue: CowTreatedRadio.yes,
                                onChangedYes: (val) => treatedCtrl
                                    .onChange(val ?? CowTreatedRadio.yes),
                                noValue: CowTreatedRadio.no,
                                onChangedNo: (val) => treatedCtrl
                                    .onChange(val ?? CowTreatedRadio.no),
                                groupValue: treatedCtrl.charcter,
                                noAnswerValue: CowTreatedRadio.noAnswer,
                                onChangedNoAnswer: (val) => treatedCtrl
                                    .onChange(val ?? CowTreatedRadio.noAnswer),
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
        CowBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangefarmDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label: "What is the distance between this farm and bodies of water?"
                .tr),
        CowBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangewaterDistance(val ?? "");
            }),
        const LineWidget(),

        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label: "What is the distance between this farm and trees and grass?"
                .tr),
        CowBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangetreesDistance(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(
            label: "What is the distance between this farm and the main roads?"
                .tr),
        CowBehaviorTextFieldWidget(
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
        CowBehaviorTextFieldWidget(
            title: "distance".tr,
            onNoteChange: (val) {
              healthPractciesTextFieldCtrl.onChangecitiesDistance(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(label: "Is there good sanitation on the farm?".tr),
        GetBuilder<CowGoodSanitationRadioController>(
            init: CowGoodSanitationRadioController(),
            builder: (goodSanitationCtrl) {
              return CowBehaviorRadioWidget(
                enumName: CowGoodSanitationRadio,
                yesValue: CowGoodSanitationRadio.yes,
                onChangedYes: (val) => goodSanitationCtrl
                    .onChange(val ?? CowGoodSanitationRadio.yes),
                noValue: CowGoodSanitationRadio.no,
                onChangedNo: (val) => goodSanitationCtrl
                    .onChange(val ?? CowGoodSanitationRadio.no),
                groupValue: goodSanitationCtrl.charcter,
                noAnswerValue: CowGoodSanitationRadio.noAnswer,
                onChangedNoAnswer: (val) => goodSanitationCtrl
                    .onChange(val ?? CowGoodSanitationRadio.noAnswer),
              );
            }),
      ],
    );
  }
}
