// ignore_for_file: must_be_immutable

import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_animal_bathed_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_animal_isolate_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_animal_quarantine_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_antibiotics_used_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_feeder_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_floor_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_milker_exist_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_operational_isolate_place_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_operational_sick_isolate_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_slaughter_place_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_slaughter_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'goat_antibiotics_widget.dart';
import 'goat_milker_exist_widget.dart';
import 'goat_operational_radio_widget.dart';
import 'goat_operational_textfield_widget.dart';

class GoatOpertionalBiosecurityWidget extends StatelessWidget {
  GoatOpertionalBiosecurityWidget({Key? key}) : super(key: key);

  GoatOpertionalTextFieldController opertionalTextFieldController =
      Get.put(GoatOpertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //? push in api id 150
        LabelWidget(label: "Are sick animals isolated?".tr),
        GetBuilder<GoatsickIsolateRadioController>(
            init: GoatsickIsolateRadioController(),
            builder: (sickisolateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatsickIsolateRadio,
                      yesValue: GoatsickIsolateRadio.yes, //? push in api id 150
                      onChangedYes: (val) => sickisolateCtrl
                          .onChange(val ?? GoatsickIsolateRadio.yes),
                      noValue: GoatsickIsolateRadio.no, //? push in api id 151
                      onChangedNo: (val) => sickisolateCtrl
                          .onChange(val ?? GoatsickIsolateRadio.no),
                      groupValue: sickisolateCtrl.charcter,
                      noAnswerValue:
                          GoatsickIsolateRadio.noAnswer, //? push in api id 152
                      onChangedNoAnswer: (val) => sickisolateCtrl
                          .onChange(val ?? GoatsickIsolateRadio.noAnswer)),
                  if (sickisolateCtrl.charcter == GoatsickIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated to isolate sick animals?"
                                    .tr),
                        GetBuilder<GoatIsolatePlaceRadioController>(
                            init: GoatIsolatePlaceRadioController(),
                            builder: (isoPlaceCtrl) {
                              return GoatOperationalRadioWidget(
                                  enumName: GoatIsolatePlaceRadio,
                                  yesValue: GoatIsolatePlaceRadio
                                      .yes, //? push in api id 152
                                  onChangedYes: (val) => isoPlaceCtrl.onChange(
                                      val ?? GoatIsolatePlaceRadio.yes),
                                  noValue: GoatIsolatePlaceRadio
                                      .no, //? push in api id 153
                                  onChangedNo: (val) => isoPlaceCtrl.onChange(
                                      val ?? GoatIsolatePlaceRadio.no),
                                  groupValue: isoPlaceCtrl.charcter,
                                  noAnswerValue: GoatIsolatePlaceRadio
                                      .noAnswer, //? push in api id 154
                                  onChangedNoAnswer: (val) =>
                                      isoPlaceCtrl.onChange(val ??
                                          GoatIsolatePlaceRadio.noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(
            label:
                "Are newly purchased animals isolated before entering the herd ?"
                    .tr),
        GetBuilder<GoatsickAnimalIsolateRadioController>(
            init: GoatsickAnimalIsolateRadioController(),
            builder: (animalIsoCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatsickAnimalIsolateRadio,
                      yesValue:
                          GoatsickAnimalIsolateRadio.yes, //? push in api id 154
                      onChangedYes: (val) => animalIsoCtrl
                          .onChange(val ?? GoatsickAnimalIsolateRadio.yes),
                      noValue:
                          GoatsickAnimalIsolateRadio.no, //? push in api id 155
                      onChangedNo: (val) => animalIsoCtrl
                          .onChange(val ?? GoatsickAnimalIsolateRadio.no),
                      groupValue: animalIsoCtrl.charcter,
                      noAnswerValue: GoatsickAnimalIsolateRadio.noAnswer,
                      onChangedNoAnswer: (val) => animalIsoCtrl.onChange(
                          val ?? GoatsickAnimalIsolateRadio.noAnswer)),
                  if (animalIsoCtrl.charcter == GoatsickAnimalIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated for quarantine ?"
                                    .tr),
                        GetBuilder<GoatAnimalIsolateQuarantineRadioController>(
                            init: GoatAnimalIsolateQuarantineRadioController(),
                            builder: (quarantineCtrl) {
                              return GoatOperationalRadioWidget(
                                  enumName: GoatAnimalIsolateQuarantineRadio,
                                  yesValue: GoatAnimalIsolateQuarantineRadio
                                      .yes, //? push in api id 156
                                  onChangedYes: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          GoatAnimalIsolateQuarantineRadio.yes),
                                  noValue: GoatAnimalIsolateQuarantineRadio
                                      .no, //? push in api id 157
                                  onChangedNo: (val) => quarantineCtrl.onChange(
                                      val ??
                                          GoatAnimalIsolateQuarantineRadio.no),
                                  groupValue: quarantineCtrl.charcter,
                                  noAnswerValue:
                                      GoatAnimalIsolateQuarantineRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          GoatAnimalIsolateQuarantineRadio
                                              .noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are animals bathed ?".tr),
        GetBuilder<GoatAnimalBathedRadioController>(
            init: GoatAnimalBathedRadioController(),
            builder: (bathedCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatAnimalBathedRadio,
                      yesValue:
                          GoatAnimalBathedRadio.yes, //? push in api id 158
                      onChangedYes: (val) =>
                          bathedCtrl.onChange(val ?? GoatAnimalBathedRadio.yes),
                      noValue: GoatAnimalBathedRadio.no, //? push in api id 159
                      onChangedNo: (val) =>
                          bathedCtrl.onChange(val ?? GoatAnimalBathedRadio.no),
                      groupValue: bathedCtrl.charcter,
                      noAnswerValue: GoatAnimalBathedRadio.noAnswer,
                      onChangedNoAnswer: (val) => bathedCtrl
                          .onChange(val ?? GoatAnimalBathedRadio.noAnswer)),
                  if (bathedCtrl.charcter == GoatAnimalBathedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        GoatOperationalTextFieldWidget(
                            title: "how many times?".tr,
                            onNoteChange: (val) {
                              opertionalTextFieldController
                                  .onChangeBathedNo(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),

        //!-----------------------
        LabelWidget(label: "Is the floor cleaned ?".tr),
        GetBuilder<GoatFloorCleanedRadioController>(
            init: GoatFloorCleanedRadioController(),
            builder: (floorCleanedCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatFloorCleanedRadio,
                      yesValue:
                          GoatFloorCleanedRadio.yes, //? push in api id 161
                      onChangedYes: (val) => floorCleanedCtrl
                          .onChange(val ?? GoatFloorCleanedRadio.yes),
                      noValue: GoatFloorCleanedRadio.no, //? push in api id 162
                      onChangedNo: (val) => floorCleanedCtrl
                          .onChange(val ?? GoatFloorCleanedRadio.no),
                      groupValue: floorCleanedCtrl.charcter,
                      noAnswerValue:
                          GoatFloorCleanedRadio.noAnswer, //? push in api id 163
                      onChangedNoAnswer: (val) => floorCleanedCtrl
                          .onChange(val ?? GoatFloorCleanedRadio.noAnswer)),
                  if (floorCleanedCtrl.charcter == GoatFloorCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        GoatOperationalTextFieldWidget(
                            title: "how many times?".tr,
                            onNoteChange: (val) {
                              opertionalTextFieldController
                                  .onChangefloorCleanNo(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are waterers and feeders cleaned ?".tr),
        GetBuilder<GoatFeederrCleanedRadioController>(
            init: GoatFeederrCleanedRadioController(),
            builder: (feederCleanedCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatFeederrCleanedRadio,
                      yesValue:
                          GoatFeederrCleanedRadio.yes, //? push in api id 164
                      onChangedYes: (val) => feederCleanedCtrl
                          .onChange(val ?? GoatFeederrCleanedRadio.yes),
                      noValue:
                          GoatFeederrCleanedRadio.no, //? push in api id 165
                      onChangedNo: (val) => feederCleanedCtrl
                          .onChange(val ?? GoatFeederrCleanedRadio.no),
                      groupValue: feederCleanedCtrl.charcter,
                      noAnswerValue: GoatFeederrCleanedRadio
                          .noAnswer, //? push in api id 166
                      onChangedNoAnswer: (val) => feederCleanedCtrl
                          .onChange(val ?? GoatFeederrCleanedRadio.noAnswer)),
                  if (feederCleanedCtrl.charcter == GoatFeederrCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        GoatOperationalTextFieldWidget(
                            title: "how many times?".tr,
                            onNoteChange: (val) {
                              opertionalTextFieldController
                                  .onChangewatererCleanNo(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "How is farm waste disposed of?".tr),
        GoatOperationalTextFieldWidget(
            title: "How is farm waste disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangefarmWaste(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "How are dead animals disposed of?".tr),
        GoatOperationalTextFieldWidget(
            title: "How are dead animals disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangedeadAnimal(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(label: "Are the animals slaughtered inside the farm?".tr),
        GetBuilder<GoatSlaughterRadioController>(
            init: GoatSlaughterRadioController(),
            builder: (slaughterCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatSlaughterRadio,
                      yesValue: GoatSlaughterRadio.yes, //? push in api id 169
                      onChangedYes: (val) =>
                          slaughterCtrl.onChange(val ?? GoatSlaughterRadio.yes),
                      noValue: GoatSlaughterRadio.no, //? push in api id 170
                      onChangedNo: (val) =>
                          slaughterCtrl.onChange(val ?? GoatSlaughterRadio.no),
                      groupValue: slaughterCtrl.charcter,
                      noAnswerValue:
                          GoatSlaughterRadio.noAnswer, //? push in api id 171
                      onChangedNoAnswer: (val) => slaughterCtrl
                          .onChange(val ?? GoatSlaughterRadio.noAnswer)),
                  if (slaughterCtrl.charcter == GoatSlaughterRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "Is there a place for slaughter?".tr),
                        GetBuilder<GoatSlaughterPlacerRadioController>(
                            init: GoatSlaughterPlacerRadioController(),
                            builder: (slaughterPlaceCtrl) {
                              return GoatOperationalRadioWidget(
                                  enumName: GoatSlaughterPlacerRadio,
                                  yesValue: GoatSlaughterPlacerRadio
                                      .yes, //? push in api id 171
                                  onChangedYes: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? GoatSlaughterPlacerRadio.yes),
                                  noValue: GoatSlaughterPlacerRadio
                                      .no, //? push in api id 172
                                  onChangedNo: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? GoatSlaughterPlacerRadio.no),
                                  groupValue: slaughterPlaceCtrl.charcter,
                                  noAnswerValue: GoatSlaughterPlacerRadio
                                      .noAnswer, //? push in api id 173

                                  onChangedNoAnswer: (val) =>
                                      slaughterPlaceCtrl.onChange(val ??
                                          GoatSlaughterPlacerRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "Is there a milker?".tr),
        GetBuilder<GoatMilkerExistRadioController>(
            init: GoatMilkerExistRadioController(),
            builder: (milkerExistCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatMilkerExistRadio,
                      yesValue: GoatMilkerExistRadio.yes, //? push in api id 173
                      onChangedYes: (val) => milkerExistCtrl
                          .onChange(val ?? GoatMilkerExistRadio.yes),
                      noValue: GoatMilkerExistRadio.no, //? push in api id 174
                      onChangedNo: (val) => milkerExistCtrl
                          .onChange(val ?? GoatMilkerExistRadio.no),
                      groupValue: milkerExistCtrl.charcter,
                      noAnswerValue:
                          GoatMilkerExistRadio.noAnswer, //? push in api id 175
                      onChangedNoAnswer: (val) => milkerExistCtrl
                          .onChange(val ?? GoatMilkerExistRadio.noAnswer)),
                  if (milkerExistCtrl.charcter == GoatMilkerExistRadio.yes)
                    GoatMilkerExistWidget()
                ],
              );
            }),

        const LineWidget(),
        //!---------------------
        LabelWidget(label: "Are antibiotics used?".tr),
        GetBuilder<GoatAntibioticsUsedRadioController>(
            init: GoatAntibioticsUsedRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatAntibioticsUsedRadio,
                      yesValue:
                          GoatAntibioticsUsedRadio.yes, //? push in api id 214
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? GoatAntibioticsUsedRadio.yes),
                      noValue:
                          GoatAntibioticsUsedRadio.no, //? push in api id 215
                      onChangedNo: (val) =>
                          antiCtrl.onChange(val ?? GoatAntibioticsUsedRadio.no),
                      groupValue: antiCtrl.charcter,
                      noAnswerValue: GoatAntibioticsUsedRadio
                          .noAnswer, //? push in api id 216

                      onChangedNoAnswer: (val) => antiCtrl
                          .onChange(val ?? GoatAntibioticsUsedRadio.noAnswer)),
                  if (antiCtrl.charcter == GoatAntibioticsUsedRadio.yes)
                    GoatAntibioticsWidget()
                ],
              );
            }),
      ],
    );
  }
}
