import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../controller/cow_animal_pens_radio_controller.dart';
import '../../controller/cow_barn_umberella_radio_controller.dart';
import '../../controller/cow_clean_floor_radio_controller.dart';
import '../../controller/cow_clean_watering_radio_controller.dart';
import '../../controller/cow_drinking_radio_controller.dart';
import '../../controller/cow_farm_fence_radio_controller.dart';
import '../../controller/cow_feeding_clean_radio_controller.dart';
import '../../controller/cow_feeding_status_radio_controller.dart';
import '../../controller/cow_fence_broken_or_not_radio_controller.dart';
import '../../controller/cow_housing_textfield_controller.dart';
import '../../controller/cow_location_feeding_controller.dart';
import '../../controller/cow_watering_location_radio_controlling.dart';
import 'cow_bran_exist_widget.dart';
import 'cow_clean_feeding_radio_widget.dart';
import 'cow_clean_floor_widget.dart';
import 'cow_clean_watering_widget.dart';
import 'cow_drinking_widget.dart';
import 'cow_feeding_location_widget.dart';
import 'cow_feeding_status_widget.dart';
import 'cow_fence_broken_radio_widget.dart';
import 'cow_housing_floor_type_widget.dart';
import 'cow_housing_radio_widget.dart';
import 'cow_housing_textfield_widget.dart';
import 'cow_watering_location_widget.dart';

// ignore: must_be_immutable
class CowHousingWidget extends StatelessWidget {
  CowHousingWidget({Key? key}) : super(key: key);
  CowHousingTextFieldController textCtrl =
      Get.put(CowHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //? push in api object with id 46 if yes and 47 No
      LabelWidget(label: "Are there any animal pens?".tr),
      GetBuilder<CowPensRadioController>(
          init: CowPensRadioController(),
          builder: (pensCtrl) {
            return GetBuilder<SendCowHerdDataController>(
                init: SendCowHerdDataController(),
                builder: (sendDataCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CowPensRadioWidget(
                        enumName: CowPensRadio,
                        yesValue: CowPensRadio.yes,
                        onChangedYes: (val) =>
                            pensCtrl.onChange(val ?? CowPensRadio.yes),
                        noValue: CowPensRadio.no,
                        onChangedNo: (val) =>
                            pensCtrl.onChange(val ?? CowPensRadio.no),
                        groupValue: pensCtrl.charcter,
                        noAnswerValue: CowPensRadio.noAnswer,
                        onChangedNoAnswer: (val) =>
                            pensCtrl.onChange(val ?? CowPensRadio.noAnswer),
                      ),
                      if (pensCtrl.charcter == CowPensRadio.yes)
                        CowBranExistWidget(),
                      //? push in api object with id 51 and 52
                      LabelWidget(label: "Are there umbrellas for barns?".tr),
                      GetBuilder<CowBarnUmberellaController>(
                          init: CowBarnUmberellaController(),
                          builder: (barnCtrl) {
                            return CowPensRadioWidget(
                                enumName: CowBarnUmberella,
                                yesValue: CowBarnUmberella.yes,
                                onChangedYes: (val) => barnCtrl
                                    .onChange(val ?? CowBarnUmberella.yes),
                                noValue: CowBarnUmberella.no,
                                onChangedNo: (val) => barnCtrl
                                    .onChange(val ?? CowBarnUmberella.no),
                                groupValue: barnCtrl.charcter,
                                noAnswerValue: CowBarnUmberella.noAnswer,
                                onChangedNoAnswer: (val) => barnCtrl.onChange(
                                    val ?? CowBarnUmberella.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 53
                      LabelWidget(label: "Is there a fence for the farm ?".tr),
                      GetBuilder<CowFenceController>(
                          init: CowFenceController(),
                          builder: (fenceCtrl) {
                            return Column(
                              children: [
                                CowPensRadioWidget(
                                    enumName: CowFence,
                                    yesValue: CowFence.yes,
                                    onChangedYes: (val) =>
                                        fenceCtrl.onChange(val ?? CowFence.yes),
                                    noValue: CowFence.no,
                                    onChangedNo: (val) =>
                                        fenceCtrl.onChange(val ?? CowFence.no),
                                    groupValue: fenceCtrl.charcter,
                                    noAnswerValue: CowFence.noAnswer,
                                    onChangedNoAnswer: (val) => fenceCtrl
                                        .onChange(val ?? CowFence.noAnswer)),
                                if (fenceCtrl.charcter == CowFence.yes)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LabelWidget(
                                          label: "farm fence Status ?".tr),
                                      //? push in api object with id 53 if yes and 54 No
                                      GetBuilder<CowBrokenFenceController>(
                                          init: CowBrokenFenceController(),
                                          builder: (broken) {
                                            return CowFenceBrokenRadioWidget(
                                              enumName: CowBrokenFence,
                                              yesValue: CowBrokenFence.broken,
                                              onChangedYes: (val) =>
                                                  broken.onChange(val ??
                                                      CowBrokenFence.broken),
                                              noValue: CowBrokenFence.good,
                                              onChangedNo: (val) =>
                                                  broken.onChange(val ??
                                                      CowBrokenFence.good),
                                              groupValue: broken.charcter,
                                              noAnswerValue:
                                                  CowBrokenFence.noAnswer,
                                              onChangedNoAnswer: (val) =>
                                                  broken.onChange(val ??
                                                      CowBrokenFence.noAnswer),
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
                      const CowFloorTypeWidget(),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 60 if yes and 61 No
                      LabelWidget(label: "floor condition ?".tr),
                      GetBuilder<CowCleanFloorController>(
                          init: CowCleanFloorController(),
                          builder: (cleanCtrl) {
                            return CowCleanFloorWidget(
                                enumName: CowCleanFloor,
                                yesValue: CowCleanFloor.clean,
                                onChangedYes: (val) => cleanCtrl
                                    .onChange(val ?? CowCleanFloor.clean),
                                noValue: CowCleanFloor.unClean,
                                onChangedNo: (val) => cleanCtrl
                                    .onChange(val ?? CowCleanFloor.unClean),
                                groupValue: cleanCtrl.charcter,
                                noAnswerValue: CowCleanFloor.noAnswer,
                                onChangedNoAnswer: (val) => cleanCtrl
                                    .onChange(val ?? CowCleanFloor.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 62
                      LabelWidget(label: "How many waterings?".tr),
                      CowHousingTextFieldWidget(
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
                      GetBuilder<CowWateringLocationController>(
                          init: CowWateringLocationController(),
                          builder: (wateringLocationCtrl) {
                            return CowWateringLocationWidget(
                                enumName: CowWateringLocation,
                                yesValue: CowWateringLocation.underCanopy,
                                onChangedYes: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? CowWateringLocation.underCanopy),
                                noValue: CowWateringLocation.outdoors,
                                onChangedNo: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? CowWateringLocation.outdoors),
                                groupValue: wateringLocationCtrl.charcter,
                                noAnswerValue: CowWateringLocation.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? CowWateringLocation.noAnswer));
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
                      GetBuilder<CowCleanWateringController>(
                          init: CowCleanWateringController(),
                          builder: (cleanWater) {
                            return CowCleanWateringWidget(
                                enumName: CowCleanWatering,
                                yesValue: CowCleanWatering.clean,
                                onChangedYes: (val) => cleanWater
                                    .onChange(val ?? CowCleanWatering.clean),
                                noValue: CowCleanWatering.unClean,
                                onChangedNo: (val) => cleanWater
                                    .onChange(val ?? CowCleanWatering.unClean),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: CowCleanWatering.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? CowCleanWatering.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 67 availableAllDay and 68 specificTimesaDay
                      LabelWidget(label: "What is the drinking regimen?".tr),
                      GetBuilder<CowDinkingRadioController>(
                          init: CowDinkingRadioController(),
                          builder: (dinkingCtrl) {
                            return Column(
                              children: [
                                CowDrinkingRadioWidget(
                                    enumName: CowDinkingRadio,
                                    yesValue: CowDinkingRadio.availableAllDay,
                                    onChangedYes: (val) => dinkingCtrl.onChange(
                                        val ?? CowDinkingRadio.availableAllDay),
                                    noValue: CowDinkingRadio.specificTimesaDay,
                                    onChangedNo: (val) => dinkingCtrl.onChange(
                                        val ??
                                            CowDinkingRadio.specificTimesaDay),
                                    groupValue: dinkingCtrl.charcter,
                                    noAnswerValue: CowDinkingRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        dinkingCtrl.onChange(
                                            val ?? CowDinkingRadio.noAnswer)),
                                if (dinkingCtrl.charcter ==
                                    CowDinkingRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 69
                                      LabelWidget(
                                          label:
                                              "How many times to drink a day?"
                                                  .tr),
                                      CowHousingTextFieldWidget(
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
                      CowHousingTextFieldWidget(
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
                      GetBuilder<CowFeedingLocationController>(
                          init: CowFeedingLocationController(),
                          builder: (cleanWater) {
                            return CowFeedingLocationWidget(
                                enumName: CowFeedingLocation,
                                yesValue: CowFeedingLocation.underCanopy,
                                onChangedYes: (val) => cleanWater.onChange(
                                    val ?? CowFeedingLocation.underCanopy),
                                noValue: CowFeedingLocation.outdoors,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? CowFeedingLocation.outdoors),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: CowFeedingLocation.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? CowFeedingLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 73 if clean and 74 unClean
                      LabelWidget(label: "What is the status of the feed ?".tr),
                      GetBuilder<CowCleanFeedingController>(
                          init: CowCleanFeedingController(),
                          builder: (cleanFeeding) {
                            return CowCleanFeedingWidget(
                                enumName: CowCleanFeeding,
                                yesValue: CowCleanFeeding.clean,
                                onChangedYes: (val) => cleanFeeding
                                    .onChange(val ?? CowCleanFeeding.clean),
                                noValue: CowCleanFeeding.unClean,
                                onChangedNo: (val) => cleanFeeding
                                    .onChange(val ?? CowCleanFeeding.unClean),
                                groupValue: cleanFeeding.charcter,
                                noAnswerValue: CowCleanFeeding.noAnswer,
                                onChangedNoAnswer: (val) => cleanFeeding
                                    .onChange(val ?? CowCleanFeeding.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 75 if availableAllDay and 76 specificTimesaDay
                      LabelWidget(label: "What is the Feeding Regimen?".tr),
                      GetBuilder<CowFeedingStausRadioController>(
                          init: CowFeedingStausRadioController(),
                          builder: (feedingCtrl) {
                            return Column(
                              children: [
                                CowFeedingRadioWidget(
                                    enumName: CowFeedingStausRadio,
                                    yesValue:
                                        CowFeedingStausRadio.availableAllDay,
                                    onChangedYes: (val) => feedingCtrl.onChange(
                                        val ??
                                            CowFeedingStausRadio
                                                .availableAllDay),
                                    noValue:
                                        CowFeedingStausRadio.specificTimesaDay,
                                    onChangedNo: (val) => feedingCtrl.onChange(
                                        val ??
                                            CowFeedingStausRadio
                                                .specificTimesaDay),
                                    groupValue: feedingCtrl.charcter,
                                    noAnswerValue:
                                        CowFeedingStausRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        feedingCtrl.onChange(val ??
                                            CowFeedingStausRadio.noAnswer)),
                                if (feedingCtrl.charcter ==
                                    CowFeedingStausRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 77
                                      LabelWidget(
                                          label: "How many times to feed a day?"
                                              .tr),
                                      CowHousingTextFieldWidget(
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
                      // if (pensCtrl.charcter == CowPensRadio.no)
                      //   const CowBranNotExistWidget(),
                    ],
                  );
                });
          }),
    ]);
  }
}
