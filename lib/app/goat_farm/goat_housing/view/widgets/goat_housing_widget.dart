import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../controller/goat_animal_pens_radio_controller.dart';
import '../../controller/goat_barn_umberella_radio_controller.dart';
import '../../controller/goat_clean_floor_radio_controller.dart';
import '../../controller/goat_clean_watering_radio_controller.dart';
import '../../controller/goat_drinking_radio_controller.dart';
import '../../controller/goat_farm_fence_radio_controller.dart';
import '../../controller/goat_feeding_clean_radio_controller.dart';
import '../../controller/goat_feeding_status_radio_controller.dart';
import '../../controller/goat_fence_broken_or_not_radio_controller.dart';
import '../../controller/goat_housing_textfield_controller.dart';
import '../../controller/goat_location_feeding_controller.dart';
import '../../controller/goat_watering_location_radio_controlling.dart';
import 'goat_bran_exist_widget.dart';
import 'goat_clean_feeding_radio_widget.dart';
import 'goat_clean_floor_widget.dart';
import 'goat_clean_watering_widget.dart';
import 'goat_drinking_widget.dart';
import 'goat_feeding_location_widget.dart';
import 'goat_feeding_status_widget.dart';
import 'goat_fence_broken_radio_widget.dart';
import 'goat_housing_floor_type_widget.dart';
import 'goat_housing_radio_widget.dart';
import 'goat_housing_textfield_widget.dart';
import 'goat_watering_location_widget.dart';
 
 

// ignore: must_be_immutable
class GoatHousingWidget extends StatelessWidget {
    GoatHousingWidget({Key? key}) : super(key: key);
GoatHousingTextFieldController textCtrl = Get.put(GoatHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //? push in api object with id 46 if yes and 47 No
        LabelWidget(label: "Are there any animal pens?".tr),
      GetBuilder<GoatPensRadioController>(
          init: GoatPensRadioController(),
          builder: (pensCtrl) { 
            return GetBuilder<SendGoatHerdDataController>(
                init: SendGoatHerdDataController(),
                builder: (sendDataCtrl) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GoatPensRadioWidget(
                        enumName: GoatPensRadio,
                        yesValue: GoatPensRadio.yes,
                        onChangedYes: (val) =>
                            pensCtrl.onChange(val ?? GoatPensRadio.yes),
                        noValue: GoatPensRadio.no,
                        onChangedNo: (val) =>
                            pensCtrl.onChange(val ?? GoatPensRadio.no),
                        groupValue: pensCtrl.charcter,
                        noAnswerValue: GoatPensRadio.noAnswer,
                        onChangedNoAnswer: (val) =>
                            pensCtrl.onChange(val ?? GoatPensRadio.noAnswer),
                      ),
                      if (pensCtrl.charcter == GoatPensRadio.yes)
                          GoatBranExistWidget(),
                      //? push in api object with id 51 and 52
                        LabelWidget(
                          label: "Are there umbrellas for barns?".tr),
                      GetBuilder<GoatBarnUmberellaController>(
                          init: GoatBarnUmberellaController(),
                          builder: (barnCtrl) {
                            return GoatPensRadioWidget(
                                enumName: GoatBarnUmberella,
                                yesValue: GoatBarnUmberella.yes,
                                onChangedYes: (val) => barnCtrl
                                    .onChange(val ?? GoatBarnUmberella.yes),
                                noValue: GoatBarnUmberella.no,
                                onChangedNo: (val) => barnCtrl
                                    .onChange(val ?? GoatBarnUmberella.no),
                                groupValue: barnCtrl.charcter,
                                noAnswerValue: GoatBarnUmberella.noAnswer,
                                onChangedNoAnswer: (val) => barnCtrl.onChange(
                                    val ?? GoatBarnUmberella.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 53
                        LabelWidget(
                          label: "Is there a fence for the farm ?".tr),
                      GetBuilder<GoatFenceController>(
                          init: GoatFenceController(),
                          builder: (fenceCtrl) {
                            return Column(
                              children: [
                                GoatPensRadioWidget(
                                    enumName: GoatFence,
                                    yesValue: GoatFence.yes,
                                    onChangedYes: (val) => fenceCtrl
                                        .onChange(val ?? GoatFence.yes),
                                    noValue: GoatFence.no,
                                    onChangedNo: (val) => fenceCtrl
                                        .onChange(val ?? GoatFence.no),
                                    groupValue: fenceCtrl.charcter,
                                    noAnswerValue: GoatFence.noAnswer,
                                    onChangedNoAnswer: (val) => fenceCtrl
                                        .onChange(val ?? GoatFence.noAnswer)),
                                if (fenceCtrl.charcter == GoatFence.yes)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                        LabelWidget(
                                          label: "farm fence Status ?".tr),
                                      //? push in api object with id 53 if yes and 54 No
                                      GetBuilder<GoatBrokenFenceController>(
                                          init: GoatBrokenFenceController(),
                                          builder: (broken) {
                                            return GoatFenceBrokenRadioWidget(
                                              enumName: GoatBrokenFence,
                                              yesValue: GoatBrokenFence.broken,
                                              onChangedYes: (val) =>
                                                  broken.onChange(val ??
                                                      GoatBrokenFence.broken),
                                              noValue: GoatBrokenFence.good,
                                              onChangedNo: (val) =>
                                                  broken.onChange(val ??
                                                      GoatBrokenFence.good),
                                              groupValue: broken.charcter,
                                              noAnswerValue:
                                                  GoatBrokenFence.noAnswer,
                                              onChangedNoAnswer: (val) =>
                                                  broken.onChange(val ??
                                                      GoatBrokenFence
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
                      const GoatFloorTypeWidget(),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 60 if yes and 61 No
                        LabelWidget(label: "floor condition ?".tr),
                      GetBuilder<GoatCleanFloorController>(
                          init: GoatCleanFloorController(),
                          builder: (cleanCtrl) {
                            return GoatCleanFloorWidget(
                                enumName: GoatCleanFloor,
                                yesValue: GoatCleanFloor.clean,
                                onChangedYes: (val) => cleanCtrl
                                    .onChange(val ?? GoatCleanFloor.clean),
                                noValue: GoatCleanFloor.unClean,
                                onChangedNo: (val) => cleanCtrl
                                    .onChange(val ?? GoatCleanFloor.unClean),
                                groupValue: cleanCtrl.charcter,
                                noAnswerValue: GoatCleanFloor.noAnswer,
                                onChangedNoAnswer: (val) => cleanCtrl
                                    .onChange(val ?? GoatCleanFloor.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 62
                        LabelWidget(label: "How many waterings?".tr),
                      GoatHousingTextFieldWidget(
                          title:"How many waterings?".tr ,
                          onNoteChange: (val) {
                           textCtrl.onChangeWateringNo(val??"");
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 63 if underCanopy and 64 outdoors
                        LabelWidget(
                          label:
                              "What is the location of the watering cans on the farm?".tr),
                      GetBuilder<GoatWateringLocationController>(
                          init: GoatWateringLocationController(),
                          builder: (wateringLocationCtrl) {
                            return GoatWateringLocationWidget(
                                enumName: GoatWateringLocation,
                                yesValue: GoatWateringLocation.underCanopy,
                                onChangedYes: (val) =>
                                    wateringLocationCtrl.onChange(val ??
                                        GoatWateringLocation.underCanopy),
                                noValue: GoatWateringLocation.outdoors,
                                onChangedNo: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? GoatWateringLocation.outdoors),
                                groupValue: wateringLocationCtrl.charcter,
                                noAnswerValue: GoatWateringLocation.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    wateringLocationCtrl.onChange(
                                        val ?? GoatWateringLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 65 if clean and 66 unClean
                        LabelWidget(
                          label:
                              "What is the state of the water in the watering cans?".tr),
                      GetBuilder<GoatCleanWateringController>(
                          init: GoatCleanWateringController(),
                          builder: (cleanWater) {
                            return GoatCleanWateringWidget(
                                enumName: GoatCleanWatering,
                                yesValue: GoatCleanWatering.clean,
                                onChangedYes: (val) => cleanWater
                                    .onChange(val ?? GoatCleanWatering.clean),
                                noValue: GoatCleanWatering.unClean,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? GoatCleanWatering.unClean),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: GoatCleanWatering.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? GoatCleanWatering.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 67 availableAllDay and 68 specificTimesaDay
                        LabelWidget(label: "What is the drinking regimen?".tr),
                      GetBuilder<GoatDinkingRadioController>(
                          init: GoatDinkingRadioController(),
                          builder: (dinkingCtrl) {
                            return Column(
                              children: [
                                GoatDinkingRadioWidget(
                                    enumName: GoatDinkingRadio,
                                    yesValue: GoatDinkingRadio.availableAllDay,
                                    onChangedYes: (val) => dinkingCtrl.onChange(
                                        val ??
                                            GoatDinkingRadio.availableAllDay),
                                    noValue:
                                        GoatDinkingRadio.specificTimesaDay,
                                    onChangedNo: (val) => dinkingCtrl.onChange(
                                        val ??
                                            GoatDinkingRadio
                                                .specificTimesaDay),
                                    groupValue: dinkingCtrl.charcter,
                                    noAnswerValue: GoatDinkingRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        dinkingCtrl.onChange(
                                            val ?? GoatDinkingRadio.noAnswer)),
                                if (dinkingCtrl.charcter ==
                                    GoatDinkingRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 69
                                        LabelWidget(
                                          label:
                                              "How many times to drink a day?".tr),
                                      GoatHousingTextFieldWidget(
                                          title:
                                              "How many times to drink a day?".tr,
                                          onNoteChange: (val) {
                                           textCtrl.onChangedrinkNo(val??"");
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
                      GoatHousingTextFieldWidget(
                          title: "What is the number of feeds?".tr ,
                          onNoteChange: (val) {
                            textCtrl.onChangefeedsNo(val??"");
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 71 if yes and 72 No
                        LabelWidget(
                          label:
                              "What is the location of the fodder on the farm? ".tr),
                      GetBuilder<GoatFeedingLocationController>(
                          init: GoatFeedingLocationController(),
                          builder: (cleanWater) {
                            return GoatFeedingLocationWidget(
                                enumName: GoatFeedingLocation,
                                yesValue: GoatFeedingLocation.underCanopy,
                                onChangedYes: (val) => cleanWater.onChange(
                                    val ?? GoatFeedingLocation.underCanopy),
                                noValue: GoatFeedingLocation.outdoors,
                                onChangedNo: (val) => cleanWater.onChange(
                                    val ?? GoatFeedingLocation.outdoors),
                                groupValue: cleanWater.charcter,
                                noAnswerValue: GoatFeedingLocation.noAnswer,
                                onChangedNoAnswer: (val) => cleanWater.onChange(
                                    val ?? GoatFeedingLocation.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 73 if clean and 74 unClean
                        LabelWidget(
                          label: "What is the status of the feed ?".tr),
                      GetBuilder<GoatCleanFeedingController>(
                          init: GoatCleanFeedingController(),
                          builder: (cleanFeeding) {
                            return GoatCleanFeedingWidget(
                                enumName: GoatCleanFeeding,
                                yesValue: GoatCleanFeeding.clean,
                                onChangedYes: (val) => cleanFeeding
                                    .onChange(val ?? GoatCleanFeeding.clean),
                                noValue: GoatCleanFeeding.unClean,
                                onChangedNo: (val) => cleanFeeding
                                    .onChange(val ?? GoatCleanFeeding.unClean),
                                groupValue: cleanFeeding.charcter,
                                noAnswerValue: GoatCleanFeeding.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    cleanFeeding.onChange(
                                        val ?? GoatCleanFeeding.noAnswer));
                          }),
                      Divider(
                        color: Colors.grey.withOpacity(0.5),
                        thickness: 1,
                      ),
                      //? push in api object with id 75 if availableAllDay and 76 specificTimesaDay
                        LabelWidget(label: "What is the Feeding Regimen?".tr),
                      GetBuilder<GoatFeedingStausRadioController>(
                          init: GoatFeedingStausRadioController(),
                          builder: (feedingCtrl) {
                            return Column(
                              children: [
                                GoatFeedingRadioWidget(
                                    enumName: GoatFeedingStausRadio,
                                    yesValue: GoatFeedingStausRadio
                                        .availableAllDay,
                                    onChangedYes: (val) => feedingCtrl
                                        .onChange(
                                            val ??
                                                GoatFeedingStausRadio
                                                    .availableAllDay),
                                    noValue: GoatFeedingStausRadio
                                        .specificTimesaDay,
                                    onChangedNo: (val) => feedingCtrl.onChange(
                                        val ??
                                            GoatFeedingStausRadio
                                                .specificTimesaDay),
                                    groupValue: feedingCtrl.charcter,
                                    noAnswerValue:
                                        GoatFeedingStausRadio.noAnswer,
                                    onChangedNoAnswer: (val) =>
                                        feedingCtrl.onChange(val ??
                                            GoatFeedingStausRadio.noAnswer)),
                                if (feedingCtrl.charcter ==
                                    GoatFeedingStausRadio.specificTimesaDay)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //? push in api object with id 77
                                        LabelWidget(
                                          label:
                                              "How many times to feed a day?".tr),
                                      GoatHousingTextFieldWidget(
                                          title:
                                         "How many times to feed a day?".tr   ,
                                          onNoteChange: (val) {
                                            textCtrl.onChangeRegimenfeedsNo(val??"");
                                          }),
                                    ],
                                  ),
                              ],
                            );
                          }),
                      // if (pensCtrl.charcter == GoatPensRadio.no)
                      //   const GoatBranNotExistWidget(),
                    ],
                  );
                });
          }),
    ]);
  }
}
