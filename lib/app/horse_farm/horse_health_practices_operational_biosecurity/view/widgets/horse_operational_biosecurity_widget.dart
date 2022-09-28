// ignore_for_file: must_be_immutable

import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_animal_bathed_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_animal_isolate_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_animal_quarantine_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_antibiotics_used_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_feeder_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_floor_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_milker_exist_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_operational_isolate_place_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_operational_sick_isolate_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_slaughter_place_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_slaughter_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'horse_antibiotics_widget.dart';
import 'horse_milker_exist_widget.dart';
import 'horse_operational_radio_widget.dart';
import 'horse_operational_textfield_widget.dart';


class HorseOpertionalBiosecurityWidget extends StatelessWidget {
  HorseOpertionalBiosecurityWidget({Key? key}) : super(key: key);

  HorseOertionalTextFieldController opertionalTextFieldController =
      Get.put(HorseOertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //? push in api id 150
        LabelWidget(label: "Are sick animals isolated?".tr),
        GetBuilder<HorsesickIsolateRadioController>(
            init: HorsesickIsolateRadioController(),
            builder: (sickisolateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorsesickIsolateRadio,
                      yesValue:
                          HorsesickIsolateRadio.yes, //? push in api id 150
                      onChangedYes: (val) => sickisolateCtrl
                          .onChange(val ?? HorsesickIsolateRadio.yes),
                      noValue: HorsesickIsolateRadio.no, //? push in api id 151
                      onChangedNo: (val) => sickisolateCtrl
                          .onChange(val ?? HorsesickIsolateRadio.no),
                      groupValue: sickisolateCtrl.charcter,
                      noAnswerValue:
                          HorsesickIsolateRadio.noAnswer, //? push in api id 152
                      onChangedNoAnswer: (val) => sickisolateCtrl
                          .onChange(val ?? HorsesickIsolateRadio.noAnswer)),
                  if (sickisolateCtrl.charcter == HorsesickIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated to isolate sick animals?".tr),
                        GetBuilder<HorseIsolatePlaceRadioController>(
                            init: HorseIsolatePlaceRadioController(),
                            builder: (isoPlaceCtrl) {
                              return HorseOperationalRadioWidget(
                                  enumName: HorseIsolatePlaceRadio,
                                  yesValue: HorseIsolatePlaceRadio
                                      .yes, //? push in api id 152
                                  onChangedYes: (val) => isoPlaceCtrl.onChange(
                                      val ?? HorseIsolatePlaceRadio.yes),
                                  noValue: HorseIsolatePlaceRadio
                                      .no, //? push in api id 153
                                  onChangedNo: (val) => isoPlaceCtrl.onChange(
                                      val ?? HorseIsolatePlaceRadio.no),
                                  groupValue: isoPlaceCtrl.charcter,
                                  noAnswerValue: HorseIsolatePlaceRadio
                                      .noAnswer, //? push in api id 154
                                  onChangedNoAnswer: (val) =>
                                      isoPlaceCtrl.onChange(val ??
                                          HorseIsolatePlaceRadio.noAnswer));
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
                "Are newly purchased animals isolated before entering the herd ?".tr),
        GetBuilder<HorsesickAnimalIsolateRadioController>(
            init: HorsesickAnimalIsolateRadioController(),
            builder: (animalIsoCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorsesickAnimalIsolateRadio,
                      yesValue: HorsesickAnimalIsolateRadio
                          .yes, //? push in api id 154
                      onChangedYes: (val) => animalIsoCtrl
                          .onChange(val ?? HorsesickAnimalIsolateRadio.yes),
                      noValue:
                          HorsesickAnimalIsolateRadio.no, //? push in api id 155
                      onChangedNo: (val) => animalIsoCtrl
                          .onChange(val ?? HorsesickAnimalIsolateRadio.no),
                      groupValue: animalIsoCtrl.charcter,
                      noAnswerValue: HorsesickAnimalIsolateRadio.noAnswer,
                      onChangedNoAnswer: (val) => animalIsoCtrl.onChange(
                          val ?? HorsesickAnimalIsolateRadio.noAnswer)),
                  if (animalIsoCtrl.charcter == HorsesickAnimalIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated for quarantine ?".tr),
                        GetBuilder<HorseAnimalIsolateQuarantineRadioController>(
                            init: HorseAnimalIsolateQuarantineRadioController(),
                            builder: (quarantineCtrl) {
                              return HorseOperationalRadioWidget(
                                  enumName: HorseAnimalIsolateQuarantineRadio,
                                  yesValue: HorseAnimalIsolateQuarantineRadio
                                      .yes, //? push in api id 156
                                  onChangedYes: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          HorseAnimalIsolateQuarantineRadio
                                              .yes),
                                  noValue: HorseAnimalIsolateQuarantineRadio
                                      .no, //? push in api id 157
                                  onChangedNo: (val) => quarantineCtrl.onChange(
                                      val ??
                                          HorseAnimalIsolateQuarantineRadio.no),
                                  groupValue: quarantineCtrl.charcter,
                                  noAnswerValue:
                                      HorseAnimalIsolateQuarantineRadio
                                          .noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          HorseAnimalIsolateQuarantineRadio
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
        GetBuilder<HorseAnimalBathedRadioController>(
            init: HorseAnimalBathedRadioController(),
            builder: (bathedCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseAnimalBathedRadio,
                      yesValue:
                          HorseAnimalBathedRadio.yes, //? push in api id 158
                      onChangedYes: (val) => bathedCtrl
                          .onChange(val ?? HorseAnimalBathedRadio.yes),
                      noValue: HorseAnimalBathedRadio.no, //? push in api id 159
                      onChangedNo: (val) =>
                          bathedCtrl.onChange(val ?? HorseAnimalBathedRadio.no),
                      groupValue: bathedCtrl.charcter,
                      noAnswerValue: HorseAnimalBathedRadio.noAnswer,
                      onChangedNoAnswer: (val) => bathedCtrl
                          .onChange(val ?? HorseAnimalBathedRadio.noAnswer)),
                  if (bathedCtrl.charcter == HorseAnimalBathedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        HorseOperationalTextFieldWidget(
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
        GetBuilder<HorseFloorCleanedRadioController>(
            init: HorseFloorCleanedRadioController(),
            builder: (floorCleanedCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseFloorCleanedRadio,
                      yesValue:
                          HorseFloorCleanedRadio.yes, //? push in api id 161
                      onChangedYes: (val) => floorCleanedCtrl
                          .onChange(val ?? HorseFloorCleanedRadio.yes),
                      noValue: HorseFloorCleanedRadio.no, //? push in api id 162
                      onChangedNo: (val) => floorCleanedCtrl
                          .onChange(val ?? HorseFloorCleanedRadio.no),
                      groupValue: floorCleanedCtrl.charcter,
                      noAnswerValue: HorseFloorCleanedRadio
                          .noAnswer, //? push in api id 163
                      onChangedNoAnswer: (val) => floorCleanedCtrl
                          .onChange(val ?? HorseFloorCleanedRadio.noAnswer)),
                  if (floorCleanedCtrl.charcter == HorseFloorCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        HorseOperationalTextFieldWidget(
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
        GetBuilder<HorseFeederrCleanedRadioController>(
            init: HorseFeederrCleanedRadioController(),
            builder: (feederCleanedCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseFeederrCleanedRadio,
                      yesValue:
                          HorseFeederrCleanedRadio.yes, //? push in api id 164
                      onChangedYes: (val) => feederCleanedCtrl
                          .onChange(val ?? HorseFeederrCleanedRadio.yes),
                      noValue:
                          HorseFeederrCleanedRadio.no, //? push in api id 165
                      onChangedNo: (val) => feederCleanedCtrl
                          .onChange(val ?? HorseFeederrCleanedRadio.no),
                      groupValue: feederCleanedCtrl.charcter,
                      noAnswerValue: HorseFeederrCleanedRadio
                          .noAnswer, //? push in api id 166
                      onChangedNoAnswer: (val) => feederCleanedCtrl
                          .onChange(val ?? HorseFeederrCleanedRadio.noAnswer)),
                  if (feederCleanedCtrl.charcter ==
                      HorseFeederrCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        HorseOperationalTextFieldWidget(
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
        HorseOperationalTextFieldWidget(
            title: "How is farm waste disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangefarmWaste(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "How are dead animals disposed of?".tr),
        HorseOperationalTextFieldWidget(
            title: "How are dead animals disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangedeadAnimal(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(
            label: "Are the animals slaughtered inside the farm?".tr),
        GetBuilder<HorseSlaughterRadioController>(
            init: HorseSlaughterRadioController(),
            builder: (slaughterCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseSlaughterRadio,
                      yesValue: HorseSlaughterRadio.yes, //? push in api id 169
                      onChangedYes: (val) => slaughterCtrl
                          .onChange(val ?? HorseSlaughterRadio.yes),
                      noValue: HorseSlaughterRadio.no, //? push in api id 170
                      onChangedNo: (val) =>
                          slaughterCtrl.onChange(val ?? HorseSlaughterRadio.no),
                      groupValue: slaughterCtrl.charcter,
                      noAnswerValue:
                          HorseSlaughterRadio.noAnswer, //? push in api id 171
                      onChangedNoAnswer: (val) => slaughterCtrl
                          .onChange(val ?? HorseSlaughterRadio.noAnswer)),
                  if (slaughterCtrl.charcter == HorseSlaughterRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "Is there a place for slaughter?".tr),
                        GetBuilder<HorseSlaughterPlacerRadioController>(
                            init: HorseSlaughterPlacerRadioController(),
                            builder: (slaughterPlaceCtrl) {
                              return HorseOperationalRadioWidget(
                                  enumName: HorseSlaughterPlacerRadio,
                                  yesValue: HorseSlaughterPlacerRadio
                                      .yes, //? push in api id 171
                                  onChangedYes: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? HorseSlaughterPlacerRadio.yes),
                                  noValue: HorseSlaughterPlacerRadio
                                      .no, //? push in api id 172
                                  onChangedNo: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? HorseSlaughterPlacerRadio.no),
                                  groupValue: slaughterPlaceCtrl.charcter,
                                  noAnswerValue: HorseSlaughterPlacerRadio
                                      .noAnswer, //? push in api id 173

                                  onChangedNoAnswer: (val) =>
                                      slaughterPlaceCtrl.onChange(val ??
                                          HorseSlaughterPlacerRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "Is there a milker?".tr),
        GetBuilder<HorseMilkerExistRadioController>(
            init: HorseMilkerExistRadioController(),
            builder: (milkerExistCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseMilkerExistRadio,
                      yesValue:
                          HorseMilkerExistRadio.yes, //? push in api id 173
                      onChangedYes: (val) => milkerExistCtrl
                          .onChange(val ?? HorseMilkerExistRadio.yes),
                      noValue: HorseMilkerExistRadio.no, //? push in api id 174
                      onChangedNo: (val) => milkerExistCtrl
                          .onChange(val ?? HorseMilkerExistRadio.no),
                      groupValue: milkerExistCtrl.charcter,
                      noAnswerValue:
                          HorseMilkerExistRadio.noAnswer, //? push in api id 175
                      onChangedNoAnswer: (val) => milkerExistCtrl
                          .onChange(val ?? HorseMilkerExistRadio.noAnswer)),
                  if (milkerExistCtrl.charcter == HorseMilkerExistRadio.yes)
                    HorseMilkerExistWidget()
                ],
              );
            }),

        const LineWidget(),
        //!---------------------
        LabelWidget(label: "Are antibiotics used?".tr),
        GetBuilder<HorseAntibioticsUsedRadioController>(
            init: HorseAntibioticsUsedRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseAntibioticsUsedRadio,
                      yesValue:
                          HorseAntibioticsUsedRadio.yes, //? push in api id 214
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? HorseAntibioticsUsedRadio.yes),
                      noValue:
                          HorseAntibioticsUsedRadio.no, //? push in api id 215
                      onChangedNo: (val) => antiCtrl
                          .onChange(val ?? HorseAntibioticsUsedRadio.no),
                      groupValue: antiCtrl.charcter,
                      noAnswerValue: HorseAntibioticsUsedRadio
                          .noAnswer, //? push in api id 216

                      onChangedNoAnswer: (val) => antiCtrl
                          .onChange(val ?? HorseAntibioticsUsedRadio.noAnswer)),
                  if (antiCtrl.charcter == HorseAntibioticsUsedRadio.yes)
                    HorseAntibioticsWidget()
                ],
              );
            }),
      ],
    );
  }
}
