import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../controller/horse_animal_pens_radio_controller.dart';
import '../../controller/horse_barn_umberella_radio_controller.dart';
import '../../controller/horse_clean_floor_radio_controller.dart';
import '../../controller/horse_clean_watering_radio_controller.dart';
import '../../controller/horse_drinking_radio_controller.dart';
import '../../controller/horse_farm_fence_radio_controller.dart';
import '../../controller/horse_feeding_clean_radio_controller.dart';
import '../../controller/horse_feeding_status_radio_controller.dart';
import '../../controller/horse_fence_broken_or_not_radio_controller.dart';
import '../../controller/horse_housing_textfield_controller.dart';
import '../../controller/horse_location_feeding_controller.dart';
import '../../controller/horse_watering_location_radio_controlling.dart';
import 'horse_bran_exist_widget.dart';
import 'horse_clean_feeding_radio_widget.dart';
import 'horse_clean_floor_widget.dart';
import 'horse_clean_watering_widget.dart';
import 'horse_drinking_widget.dart';
import 'horse_feeding_location_widget.dart';
import 'horse_feeding_status_widget.dart';
import 'horse_fence_broken_radio_widget.dart';
import 'horse_housing_floor_type_widget.dart';
import 'horse_housing_radio_widget.dart';
import 'horse_housing_textfield_widget.dart';
import 'horse_watering_location_widget.dart';

// ignore: must_be_immutable
class HorseHousingWidget extends StatelessWidget {
  HorseHousingWidget({Key? key}) : super(key: key);
  HorseHousingTextFieldController textCtrl =
      Get.put(HorseHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //? push in api object with id 46 if yes and 47 No
      LabelWidget(label: "Are there any animal pens?".tr),
      GetBuilder<HorsePensRadioController>(
          init: HorsePensRadioController(),
          builder: (pensCtrl) {
            return GetBuilder<SendHorseHerdDataController>(
                init: SendHorseHerdDataController(),
                builder: (sendDataCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HorsePensRadioWidget(
                        enumName: HorsePensRadio,
                        yesValue: HorsePensRadio.yes,
                        onChangedYes: (val) =>
                            pensCtrl.onChange(val ?? HorsePensRadio.yes),
                        noValue: HorsePensRadio.no,
                        onChangedNo: (val) =>
                            pensCtrl.onChange(val ?? HorsePensRadio.no),
                        groupValue: pensCtrl.charcter,
                        noAnswerValue: HorsePensRadio.noAnswer,
                        onChangedNoAnswer: (val) =>
                            pensCtrl.onChange(val ?? HorsePensRadio.noAnswer),
                      ),
                      if (pensCtrl.charcter == HorsePensRadio.yes)
                        HorseBranExistWidget(),
                      //? push in api object with id 51 and 52
                      LabelWidget(label: "Are there umbrellas for barns?".tr),
                      GetBuilder<HorseBarnUmberellaController>(
                          init: HorseBarnUmberellaController(),
                          builder: (barnCtrl) {
                            return HorsePensRadioWidget(
                                enumName: HorseBarnUmberella,
                                yesValue: HorseBarnUmberella.yes,
                                onChangedYes: (val) => barnCtrl
                                    .onChange(val ?? HorseBarnUmberella.yes),
                                noValue: HorseBarnUmberella.no,
                                onChangedNo: (val) => barnCtrl
                                    .onChange(val ?? HorseBarnUmberella.no),
                                groupValue: barnCtrl.charcter,
                                noAnswerValue: HorseBarnUmberella.noAnswer,
                                onChangedNoAnswer: (val) => barnCtrl.onChange(
                                    val ?? HorseBarnUmberella.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 53
                      LabelWidget(label: "Is there a fence for the farm ?".tr),
                      GetBuilder<HorseFenceController>(
                          init: HorseFenceController(),
                          builder: (fenceCtrl) {
                            return Column(
                              children: [
                                HorsePensRadioWidget(
                                    enumName: HorseFence,
                                    yesValue: HorseFence.yes,
                                    onChangedYes: (val) => fenceCtrl
                                        .onChange(val ?? HorseFence.yes),
                                    noValue: HorseFence.no,
                                    onChangedNo: (val) => fenceCtrl
                                        .onChange(val ?? HorseFence.no),
                                    groupValue: fenceCtrl.charcter,
                                    noAnswerValue: HorseFence.noAnswer,
                                    onChangedNoAnswer: (val) => fenceCtrl
                                        .onChange(val ?? HorseFence.noAnswer)),
                                if (fenceCtrl.charcter == HorseFence.yes)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LabelWidget(
                                          label: "farm fence Status ?".tr),
                                      //? push in api object with id 53 if yes and 54 No
                                      GetBuilder<HorseBrokenFenceController>(
                                          init: HorseBrokenFenceController(),
                                          builder: (broken) {
                                            return HorseFenceBrokenRadioWidget(
                                              enumName: HorseBrokenFence,
                                              yesValue: HorseBrokenFence.broken,
                                              onChangedYes: (val) =>
                                                  broken.onChange(val ??
                                                      HorseBrokenFence.broken),
                                              noValue: HorseBrokenFence.good,
                                              onChangedNo: (val) =>
                                                  broken.onChange(val ??
                                                      HorseBrokenFence.good),
                                              groupValue: broken.charcter,
                                              noAnswerValue:
                                                  HorseBrokenFence.noAnswer,
                                              onChangedNoAnswer: (val) =>
                                                  broken.onChange(val ??
                                                      HorseBrokenFence
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
                      const HorseFloorTypeWidget(),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 60 if yes and 61 No
                      LabelWidget(label: "floor condition ?".tr),
                      GetBuilder<HorseCleanFloorController>(
                          init: HorseCleanFloorController(),
                          builder: (cleanCtrl) {
                            return HorseCleanFloorWidget(
                                enumName: HorseCleanFloor,
                                yesValue: HorseCleanFloor.clean,
                                onChangedYes: (val) => cleanCtrl
                                    .onChange(val ?? HorseCleanFloor.clean),
                                noValue: HorseCleanFloor.unClean,
                                onChangedNo: (val) => cleanCtrl
                                    .onChange(val ?? HorseCleanFloor.unClean),
                                groupValue: cleanCtrl.charcter,
                                noAnswerValue: HorseCleanFloor.noAnswer,
                                onChangedNoAnswer: (val) => cleanCtrl
                                    .onChange(val ?? HorseCleanFloor.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 62
                      LabelWidget(label: "How many waterings?".tr),
                      HorseHousingTextFieldWidget(
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
                      GetBuilder<HorseWateringLocationController>(
                          init: HorseWateringLocationController(),
                          builder: (wateringLocationCtrl) {
                            return HorseWateringLocationWidget(
                                enumName: HorseWateringLocation,
                                yesValue: HorseWateringLocation.underCanopy,
                                onChangedYes: (val) =>
                                    wateringLocationCtrl.onChange(val ??
                                        HorseWateringLocation.underCanopy),
                                noValue: HorseWateringLocation.outdoors,
                                onChangedNo: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? HorseWateringLocation.outdoors),
                                groupValue: wateringLocationCtrl.charcter,
                                noAnswerValue: HorseWateringLocation.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? HorseWateringLocation.noAnswer));
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
                      GetBuilder<HorseCleanWateringController>(
                          init: HorseCleanWateringController(),
                          builder: (cleanWater) {
                            return HorseCleanWateringWidget(
                                enumName: HorseCleanWatering,
                                yesValue: HorseCleanWatering.clean,
                                onChangedYes: (val) => cleanWater
                                    .onChange(val ?? HorseCleanWatering.clean),
                                noValue: HorseCleanWatering.unClean,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? HorseCleanWatering.unClean),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: HorseCleanWatering.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? HorseCleanWatering.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 67 availableAllDay and 68 specificTimesaDay
                      LabelWidget(label: "What is the drinking regimen?".tr),
                      GetBuilder<HorseDinkingRadioController>(
                          init: HorseDinkingRadioController(),
                          builder: (dinkingCtrl) {
                            return Column(
                              children: [
                                HorseDrinkingRadioWidget(
                                    enumName: HorseDinkingRadio,
                                    yesValue: HorseDinkingRadio.availableAllDay,
                                    onChangedYes: (val) => dinkingCtrl.onChange(
                                        val ??
                                            HorseDinkingRadio.availableAllDay),
                                    noValue:
                                        HorseDinkingRadio.specificTimesaDay,
                                    onChangedNo: (val) => dinkingCtrl.onChange(
                                        val ??
                                            HorseDinkingRadio
                                                .specificTimesaDay),
                                    groupValue: dinkingCtrl.charcter,
                                    noAnswerValue: HorseDinkingRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        dinkingCtrl.onChange(
                                            val ?? HorseDinkingRadio.noAnswer)),
                                if (dinkingCtrl.charcter ==
                                    HorseDinkingRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 69
                                      LabelWidget(
                                          label:
                                              "How many times to drink a day?"
                                                  .tr),
                                      HorseHousingTextFieldWidget(
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
                      HorseHousingTextFieldWidget(
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
                      GetBuilder<HorseFeedingLocationController>(
                          init: HorseFeedingLocationController(),
                          builder: (cleanWater) {
                            return HorseFeedingLocationWidget(
                                enumName: HorseFeedingLocation,
                                yesValue: HorseFeedingLocation.underCanopy,
                                onChangedYes: (val) => cleanWater.onChange(
                                    val ?? HorseFeedingLocation.underCanopy),
                                noValue: HorseFeedingLocation.outdoors,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? HorseFeedingLocation.outdoors),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: HorseFeedingLocation.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? HorseFeedingLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 73 if clean and 74 unClean
                      LabelWidget(label: "What is the status of the feed ?".tr),
                      GetBuilder<HorseCleanFeedingController>(
                          init: HorseCleanFeedingController(),
                          builder: (cleanFeeding) {
                            return HorseCleanFeedingWidget(
                                enumName: HorseCleanFeeding,
                                yesValue: HorseCleanFeeding.clean,
                                onChangedYes: (val) => cleanFeeding
                                    .onChange(val ?? HorseCleanFeeding.clean),
                                noValue: HorseCleanFeeding.unClean,
                                onChangedNo: (val) => cleanFeeding
                                    .onChange(val ?? HorseCleanFeeding.unClean),
                                groupValue: cleanFeeding.charcter,
                                noAnswerValue: HorseCleanFeeding.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    cleanFeeding.onChange(
                                        val ?? HorseCleanFeeding.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 75 if availableAllDay and 76 specificTimesaDay
                      LabelWidget(label: "What is the Feeding Regimen?".tr),
                      GetBuilder<HorseFeedingStausRadioController>(
                          init: HorseFeedingStausRadioController(),
                          builder: (feedingCtrl) {
                            return Column(
                              children: [
                                HorseFeedingRadioWidget(
                                    enumName: HorseFeedingStausRadio,
                                    yesValue: HorseFeedingStausRadio
                                        .availableAllDay,
                                    onChangedYes: (val) => feedingCtrl
                                        .onChange(
                                            val ??
                                                HorseFeedingStausRadio
                                                    .availableAllDay),
                                    noValue: HorseFeedingStausRadio
                                        .specificTimesaDay,
                                    onChangedNo: (val) => feedingCtrl.onChange(
                                        val ??
                                            HorseFeedingStausRadio
                                                .specificTimesaDay),
                                    groupValue: feedingCtrl.charcter,
                                    noAnswerValue:
                                        HorseFeedingStausRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        feedingCtrl.onChange(val ??
                                            HorseFeedingStausRadio.noAnswer)),
                                if (feedingCtrl.charcter ==
                                    HorseFeedingStausRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 77
                                      LabelWidget(
                                          label: "How many times to feed a day?"
                                              .tr),
                                      HorseHousingTextFieldWidget(
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
                      // if (pensCtrl.charcter == HorsePensRadio.no)
                      //   const HorseBranNotExistWidget(),
                    ],
                  );
                });
          }),
    ]);
  }
}
