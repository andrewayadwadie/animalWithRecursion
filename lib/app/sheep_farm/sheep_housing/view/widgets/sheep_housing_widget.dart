import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../controller/sheep_animal_pens_radio_controller.dart';
import '../../controller/sheep_barn_umberella_radio_controller.dart';
import '../../controller/sheep_clean_floor_radio_controller.dart';
import '../../controller/sheep_clean_watering_radio_controller.dart';
import '../../controller/sheep_drinking_radio_controller.dart';
import '../../controller/sheep_farm_fence_radio_controller.dart';
import '../../controller/sheep_feeding_clean_radio_controller.dart';
import '../../controller/sheep_feeding_status_radio_controller.dart';
import '../../controller/sheep_fence_broken_or_not_radio_controller.dart';
import '../../controller/sheep_housing_textfield_controller.dart';
import '../../controller/sheep_location_feeding_controller.dart';
import '../../controller/sheep_watering_location_radio_controlling.dart';
import 'sheep_bran_exist_widget.dart';
import 'sheep_clean_feeding_radio_widget.dart';
import 'sheep_clean_floor_widget.dart';
import 'sheep_clean_watering_widget.dart';
import 'sheep_drinking_widget.dart';
import 'sheep_feeding_location_widget.dart';
import 'sheep_feeding_status_widget.dart';
import 'sheep_fence_broken_radio_widget.dart';
import 'sheep_housing_floor_type_widget.dart';
import 'sheep_housing_radio_widget.dart';
import 'sheep_housing_textfield_widget.dart';
import 'sheep_watering_location_widget.dart';

// ignore: must_be_immutable
class SheepHousingWidget extends StatelessWidget {
  SheepHousingWidget({Key? key}) : super(key: key);
  SheepHousingTextFieldController textCtrl =
      Get.put(SheepHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //? push in api object with id 46 if yes and 47 No
      LabelWidget(label: "Are there any animal pens?".tr),
      GetBuilder<SheepPensRadioController>(
          init: SheepPensRadioController(),
          builder: (pensCtrl) {
            return GetBuilder<SendSheepHerdDataController>(
                init: SendSheepHerdDataController(),
                builder: (sendDataCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SheepPensRadioWidget(
                        enumName: SheepPensRadio,
                        yesValue: SheepPensRadio.yes,
                        onChangedYes: (val) =>
                            pensCtrl.onChange(val ?? SheepPensRadio.yes),
                        noValue: SheepPensRadio.no,
                        onChangedNo: (val) =>
                            pensCtrl.onChange(val ?? SheepPensRadio.no),
                        groupValue: pensCtrl.charcter,
                        noAnswerValue: SheepPensRadio.noAnswer,
                        onChangedNoAnswer: (val) =>
                            pensCtrl.onChange(val ?? SheepPensRadio.noAnswer),
                      ),
                      if (pensCtrl.charcter == SheepPensRadio.yes)
                        SheepBranExistWidget(),
                      //? push in api object with id 51 and 52
                      LabelWidget(label: "Are there umbrellas for barns?".tr),
                      GetBuilder<SheepBarnUmberellaController>(
                          init: SheepBarnUmberellaController(),
                          builder: (barnCtrl) {
                            return SheepPensRadioWidget(
                                enumName: SheepBarnUmberella,
                                yesValue: SheepBarnUmberella.yes,
                                onChangedYes: (val) => barnCtrl
                                    .onChange(val ?? SheepBarnUmberella.yes),
                                noValue: SheepBarnUmberella.no,
                                onChangedNo: (val) => barnCtrl
                                    .onChange(val ?? SheepBarnUmberella.no),
                                groupValue: barnCtrl.charcter,
                                noAnswerValue: SheepBarnUmberella.noAnswer,
                                onChangedNoAnswer: (val) => barnCtrl.onChange(
                                    val ?? SheepBarnUmberella.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 53
                      LabelWidget(label: "Is there a fence for the farm ?".tr),
                      GetBuilder<SheepFenceController>(
                          init: SheepFenceController(),
                          builder: (fenceCtrl) {
                            return Column(
                              children: [
                                SheepPensRadioWidget(
                                    enumName: SheepFence,
                                    yesValue: SheepFence.yes,
                                    onChangedYes: (val) => fenceCtrl
                                        .onChange(val ?? SheepFence.yes),
                                    noValue: SheepFence.no,
                                    onChangedNo: (val) => fenceCtrl
                                        .onChange(val ?? SheepFence.no),
                                    groupValue: fenceCtrl.charcter,
                                    noAnswerValue: SheepFence.noAnswer,
                                    onChangedNoAnswer: (val) => fenceCtrl
                                        .onChange(val ?? SheepFence.noAnswer)),
                                if (fenceCtrl.charcter == SheepFence.yes)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LabelWidget(
                                          label: "farm fence Status ?".tr),
                                      //? push in api object with id 53 if yes and 54 No
                                      GetBuilder<SheepBrokenFenceController>(
                                          init: SheepBrokenFenceController(),
                                          builder: (broken) {
                                            return SheepFenceBrokenRadioWidget(
                                              enumName: SheepBrokenFence,
                                              yesValue: SheepBrokenFence.broken,
                                              onChangedYes: (val) =>
                                                  broken.onChange(val ??
                                                      SheepBrokenFence.broken),
                                              noValue: SheepBrokenFence.good,
                                              onChangedNo: (val) =>
                                                  broken.onChange(val ??
                                                      SheepBrokenFence.good),
                                              groupValue: broken.charcter,
                                              noAnswerValue:
                                                  SheepBrokenFence.noAnswer,
                                              onChangedNoAnswer: (val) =>
                                                  broken.onChange(val ??
                                                      SheepBrokenFence
                                                          .noAnswer),
                                            );
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 55
                      LabelWidget(label: "What is Floor type?".tr),
                      const SheepFloorTypeWidget(),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 60 if yes and 61 No
                      LabelWidget(label: "floor condition ?".tr),
                      GetBuilder<SheepCleanFloorController>(
                          init: SheepCleanFloorController(),
                          builder: (cleanCtrl) {
                            return SheepCleanFloorWidget(
                                enumName: SheepCleanFloor,
                                yesValue: SheepCleanFloor.clean,
                                onChangedYes: (val) => cleanCtrl
                                    .onChange(val ?? SheepCleanFloor.clean),
                                noValue: SheepCleanFloor.unClean,
                                onChangedNo: (val) => cleanCtrl
                                    .onChange(val ?? SheepCleanFloor.unClean),
                                groupValue: cleanCtrl.charcter,
                                noAnswerValue: SheepCleanFloor.noAnswer,
                                onChangedNoAnswer: (val) => cleanCtrl
                                    .onChange(val ?? SheepCleanFloor.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 62
                      LabelWidget(label: "How many waterings?".tr),
                      SheepHousingTextFieldWidget(
                          title: "How many waterings?".tr,
                          onNoteChange: (val) {
                            textCtrl.onChangeWateringNo(val ?? "");
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 63 if underCanopy and 64 outdoors
                      LabelWidget(
                          label:
                              "What is the location of the watering cans on the farm?"
                                  .tr),
                      GetBuilder<SheepWateringLocationController>(
                          init: SheepWateringLocationController(),
                          builder: (wateringLocationCtrl) {
                            return SheepWateringLocationWidget(
                                enumName: SheepWateringLocation,
                                yesValue: SheepWateringLocation.underCanopy,
                                onChangedYes: (val) =>
                                    wateringLocationCtrl.onChange(val ??
                                        SheepWateringLocation.underCanopy),
                                noValue: SheepWateringLocation.outdoors,
                                onChangedNo: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? SheepWateringLocation.outdoors),
                                groupValue: wateringLocationCtrl.charcter,
                                noAnswerValue: SheepWateringLocation.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? SheepWateringLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 65 if clean and 66 unClean
                      LabelWidget(
                          label:
                              "What is the state of the water in the watering cans?"
                                  .tr),
                      GetBuilder<SheepCleanWateringController>(
                          init: SheepCleanWateringController(),
                          builder: (cleanWater) {
                            return SheepCleanWateringWidget(
                                enumName: SheepCleanWatering,
                                yesValue: SheepCleanWatering.clean,
                                onChangedYes: (val) => cleanWater
                                    .onChange(val ?? SheepCleanWatering.clean),
                                noValue: SheepCleanWatering.unClean,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? SheepCleanWatering.unClean),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: SheepCleanWatering.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? SheepCleanWatering.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 67 availableAllDay and 68 specificTimesaDay
                      LabelWidget(label: "What is the drinking regimen?".tr),
                      GetBuilder<SheepDinkingRadioController>(
                          init: SheepDinkingRadioController(),
                          builder: (dinkingCtrl) {
                            return Column(
                              children: [
                                SheepDrinkingRadioWidget(
                                    enumName: SheepDinkingRadio,
                                    yesValue: SheepDinkingRadio.availableAllDay,
                                    onChangedYes: (val) => dinkingCtrl.onChange(
                                        val ??
                                            SheepDinkingRadio.availableAllDay),
                                    noValue:
                                        SheepDinkingRadio.specificTimesaDay,
                                    onChangedNo: (val) => dinkingCtrl.onChange(
                                        val ??
                                            SheepDinkingRadio
                                                .specificTimesaDay),
                                    groupValue: dinkingCtrl.charcter,
                                    noAnswerValue: SheepDinkingRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        dinkingCtrl.onChange(
                                            val ?? SheepDinkingRadio.noAnswer)),
                                if (dinkingCtrl.charcter ==
                                    SheepDinkingRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 69
                                      LabelWidget(
                                          label:
                                              "How many times to drink a day?"
                                                  .tr),
                                      SheepHousingTextFieldWidget(
                                          title:
                                              "How many times to drink a day?"
                                                  .tr,
                                          onNoteChange: (val) {
                                            textCtrl.onChangedrinkNo(val ?? "");
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 70
                      LabelWidget(label: "What is the number of feeds?".tr),
                      SheepHousingTextFieldWidget(
                          title: "What is the number of feeds?".tr,
                          onNoteChange: (val) {
                            textCtrl.onChangefeedsNo(val ?? "");
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 71 if yes and 72 No
                      LabelWidget(
                          label:
                              "What is the location of the fodder on the farm? "
                                  .tr),
                      GetBuilder<SheepFeedingLocationController>(
                          init: SheepFeedingLocationController(),
                          builder: (cleanWater) {
                            return SheepFeedingLocationWidget(
                                enumName: SheepFeedingLocation,
                                yesValue: SheepFeedingLocation.underCanopy,
                                onChangedYes: (val) => cleanWater.onChange(
                                    val ?? SheepFeedingLocation.underCanopy),
                                noValue: SheepFeedingLocation.outdoors,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? SheepFeedingLocation.outdoors),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: SheepFeedingLocation.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? SheepFeedingLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 73 if clean and 74 unClean
                      LabelWidget(label: "What is the status of the feed ?".tr),
                      GetBuilder<SheepCleanFeedingController>(
                          init: SheepCleanFeedingController(),
                          builder: (cleanFeeding) {
                            return SheepCleanFeedingWidget(
                                enumName: SheepCleanFeeding,
                                yesValue: SheepCleanFeeding.clean,
                                onChangedYes: (val) => cleanFeeding
                                    .onChange(val ?? SheepCleanFeeding.clean),
                                noValue: SheepCleanFeeding.unClean,
                                onChangedNo: (val) => cleanFeeding
                                    .onChange(val ?? SheepCleanFeeding.unClean),
                                groupValue: cleanFeeding.charcter,
                                noAnswerValue: SheepCleanFeeding.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    cleanFeeding.onChange(
                                        val ?? SheepCleanFeeding.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 75 if availableAllDay and 76 specificTimesaDay
                      LabelWidget(label: "What is the Feeding Regimen?".tr),
                      GetBuilder<SheepFeedingStausRadioController>(
                          init: SheepFeedingStausRadioController(),
                          builder: (feedingCtrl) {
                            return Column(
                              children: [
                                SheepFeedingRadioWidget(
                                    enumName: SheepFeedingStausRadio,
                                    yesValue: SheepFeedingStausRadio
                                        .availableAllDay,
                                    onChangedYes: (val) => feedingCtrl
                                        .onChange(
                                            val ??
                                                SheepFeedingStausRadio
                                                    .availableAllDay),
                                    noValue: SheepFeedingStausRadio
                                        .specificTimesaDay,
                                    onChangedNo: (val) => feedingCtrl.onChange(
                                        val ??
                                            SheepFeedingStausRadio
                                                .specificTimesaDay),
                                    groupValue: feedingCtrl.charcter,
                                    noAnswerValue:
                                        SheepFeedingStausRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        feedingCtrl.onChange(val ??
                                            SheepFeedingStausRadio.noAnswer)),
                                if (feedingCtrl.charcter ==
                                    SheepFeedingStausRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 77
                                      LabelWidget(
                                          label: "How many times to feed a day?"
                                              .tr),
                                      SheepHousingTextFieldWidget(
                                          title: "How many times to feed a day?"
                                              .tr,
                                          onNoteChange: (val) {
                                            textCtrl.onChangeRegimenfeedsNo(
                                                val ?? "");
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      // if (pensCtrl.charcter == SheepPensRadio.no)
                      //   const SheepBranNotExistWidget(),
                    ],
                  );
                });
          }),
    ]);
  }
}
