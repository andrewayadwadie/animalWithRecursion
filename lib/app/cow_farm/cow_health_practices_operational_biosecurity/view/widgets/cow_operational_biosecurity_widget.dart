// ignore_for_file: must_be_immutable

 
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_animal_bathed_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_animal_isolate_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_animal_quarantine_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_antibiotics_used_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_feeder_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_floor_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_milker_exist_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_operational_isolate_place_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_operational_sick_isolate_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_slaughter_place_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_slaughter_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'cow_antibiotics_widget.dart';
import 'cow_milker_exist_widget.dart';
import 'cow_operational_radio_widget.dart';
import 'cow_operational_textfield_widget.dart';
 


class CowOpertionalBiosecurityWidget extends StatelessWidget {
  CowOpertionalBiosecurityWidget({Key? key}) : super(key: key);

  CowOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CowOPertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //? push in api id 150 LabelWidget(label: "Are sick animals isolated?".tr),
        GetBuilder<CowsickIsolateRadioController>(
            init: CowsickIsolateRadioController(),
            builder: (sickisolateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowsickIsolateRadio,
                      yesValue:
                          CowsickIsolateRadio.yes, //? push in api id 150
                      onChangedYes: (val) => sickisolateCtrl
                          .onChange(val ?? CowsickIsolateRadio.yes),
                      noValue: CowsickIsolateRadio.no, //? push in api id 151
                      onChangedNo: (val) => sickisolateCtrl
                          .onChange(val ?? CowsickIsolateRadio.no),
                      groupValue: sickisolateCtrl.charcter,
                      noAnswerValue:
                          CowsickIsolateRadio.noAnswer, //? push in api id 152
                      onChangedNoAnswer: (val) => sickisolateCtrl
                          .onChange(val ?? CowsickIsolateRadio.noAnswer)),
                  if (sickisolateCtrl.charcter == CowsickIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                 LabelWidget(
                            label:
                                "Are there places designated to isolate sick animals?".tr),
                        GetBuilder<CowIsolatePlaceRadioController>(
                            init: CowIsolatePlaceRadioController(),
                            builder: (isoPlaceCtrl) {
                              return CowOperationalRadioWidget(
                                  enumName: CowIsolatePlaceRadio,
                                  yesValue: CowIsolatePlaceRadio
                                      .yes, //? push in api id 152
                                  onChangedYes: (val) => isoPlaceCtrl.onChange(
                                      val ?? CowIsolatePlaceRadio.yes),
                                  noValue: CowIsolatePlaceRadio
                                      .no, //? push in api id 153
                                  onChangedNo: (val) => isoPlaceCtrl.onChange(
                                      val ?? CowIsolatePlaceRadio.no),
                                  groupValue: isoPlaceCtrl.charcter,
                                  noAnswerValue: CowIsolatePlaceRadio
                                      .noAnswer, //? push in api id 154
                                  onChangedNoAnswer: (val) =>
                                      isoPlaceCtrl.onChange(val ??
                                          CowIsolatePlaceRadio.noAnswer));
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
        GetBuilder<CowsickAnimalIsolateRadioController>(
            init: CowsickAnimalIsolateRadioController(),
            builder: (animalIsoCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowsickAnimalIsolateRadio,
                      yesValue: CowsickAnimalIsolateRadio
                          .yes, //? push in api id 154
                      onChangedYes: (val) => animalIsoCtrl
                          .onChange(val ?? CowsickAnimalIsolateRadio.yes),
                      noValue:
                          CowsickAnimalIsolateRadio.no, //? push in api id 155
                      onChangedNo: (val) => animalIsoCtrl
                          .onChange(val ?? CowsickAnimalIsolateRadio.no),
                      groupValue: animalIsoCtrl.charcter,
                      noAnswerValue: CowsickAnimalIsolateRadio.noAnswer,
                      onChangedNoAnswer: (val) => animalIsoCtrl.onChange(
                          val ?? CowsickAnimalIsolateRadio.noAnswer)),
                  if (animalIsoCtrl.charcter == CowsickAnimalIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                 LabelWidget(
                            label:
                                "Are there places designated for quarantine ?".tr),
                        GetBuilder<CowAnimalIsolateQuarantineRadioController>(
                            init: CowAnimalIsolateQuarantineRadioController(),
                            builder: (quarantineCtrl) {
                              return CowOperationalRadioWidget(
                                  enumName: CowAnimalIsolateQuarantineRadio,
                                  yesValue: CowAnimalIsolateQuarantineRadio
                                      .yes, //? push in api id 156
                                  onChangedYes: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          CowAnimalIsolateQuarantineRadio
                                              .yes),
                                  noValue: CowAnimalIsolateQuarantineRadio
                                      .no, //? push in api id 157
                                  onChangedNo: (val) => quarantineCtrl.onChange(
                                      val ??
                                          CowAnimalIsolateQuarantineRadio.no),
                                  groupValue: quarantineCtrl.charcter,
                                  noAnswerValue:
                                      CowAnimalIsolateQuarantineRadio
                                          .noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          CowAnimalIsolateQuarantineRadio
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
        GetBuilder<CowAnimalBathedRadioController>(
            init: CowAnimalBathedRadioController(),
            builder: (bathedCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowAnimalBathedRadio,
                      yesValue:
                          CowAnimalBathedRadio.yes, //? push in api id 158
                      onChangedYes: (val) => bathedCtrl
                          .onChange(val ?? CowAnimalBathedRadio.yes),
                      noValue: CowAnimalBathedRadio.no, //? push in api id 159
                      onChangedNo: (val) =>
                          bathedCtrl.onChange(val ?? CowAnimalBathedRadio.no),
                      groupValue: bathedCtrl.charcter,
                      noAnswerValue: CowAnimalBathedRadio.noAnswer,
                      onChangedNoAnswer: (val) => bathedCtrl
                          .onChange(val ?? CowAnimalBathedRadio.noAnswer)),
                  if (bathedCtrl.charcter == CowAnimalBathedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                 LabelWidget(label: "how many times?".tr.tr),
                        CowOperationalTextFieldWidget(
                            title: "how many times?".tr.tr,
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

        //!----------------------- LabelWidget(label: "Is the floor cleaned ?".tr),
        GetBuilder<CowFloorCleanedRadioController>(
            init: CowFloorCleanedRadioController(),
            builder: (floorCleanedCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowFloorCleanedRadio,
                      yesValue:
                          CowFloorCleanedRadio.yes, //? push in api id 161
                      onChangedYes: (val) => floorCleanedCtrl
                          .onChange(val ?? CowFloorCleanedRadio.yes),
                      noValue: CowFloorCleanedRadio.no, //? push in api id 162
                      onChangedNo: (val) => floorCleanedCtrl
                          .onChange(val ?? CowFloorCleanedRadio.no),
                      groupValue: floorCleanedCtrl.charcter,
                      noAnswerValue: CowFloorCleanedRadio
                          .noAnswer, //? push in api id 163
                      onChangedNoAnswer: (val) => floorCleanedCtrl
                          .onChange(val ?? CowFloorCleanedRadio.noAnswer)),
                  if (floorCleanedCtrl.charcter == CowFloorCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                 LabelWidget(label: "how many times?".tr),
                        CowOperationalTextFieldWidget(
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
        GetBuilder<CowFeederrCleanedRadioController>(
            init: CowFeederrCleanedRadioController(),
            builder: (feederCleanedCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowFeederrCleanedRadio,
                      yesValue:
                          CowFeederrCleanedRadio.yes, //? push in api id 164
                      onChangedYes: (val) => feederCleanedCtrl
                          .onChange(val ?? CowFeederrCleanedRadio.yes),
                      noValue:
                          CowFeederrCleanedRadio.no, //? push in api id 165
                      onChangedNo: (val) => feederCleanedCtrl
                          .onChange(val ?? CowFeederrCleanedRadio.no),
                      groupValue: feederCleanedCtrl.charcter,
                      noAnswerValue: CowFeederrCleanedRadio
                          .noAnswer, //? push in api id 166
                      onChangedNoAnswer: (val) => feederCleanedCtrl
                          .onChange(val ?? CowFeederrCleanedRadio.noAnswer)),
                  if (feederCleanedCtrl.charcter ==
                      CowFeederrCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                 LabelWidget(label: "how many times?".tr),
                        CowOperationalTextFieldWidget(
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
        CowOperationalTextFieldWidget(
            title: "How is farm waste disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangefarmWaste(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
         LabelWidget(label: "How are dead animals disposed of?".tr),
        CowOperationalTextFieldWidget(
            title: "How are dead animals disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangedeadAnimal(val ?? "");
            }),
        const LineWidget(),
         LabelWidget(
            label: "Are the animals slaughtered inside the farm?".tr),
        GetBuilder<CowSlaughterRadioController>(
            init: CowSlaughterRadioController(),
            builder: (slaughterCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowSlaughterRadio,
                      yesValue: CowSlaughterRadio.yes, //? push in api id 169
                      onChangedYes: (val) => slaughterCtrl
                          .onChange(val ?? CowSlaughterRadio.yes),
                      noValue: CowSlaughterRadio.no, //? push in api id 170
                      onChangedNo: (val) =>
                          slaughterCtrl.onChange(val ?? CowSlaughterRadio.no),
                      groupValue: slaughterCtrl.charcter,
                      noAnswerValue:
                          CowSlaughterRadio.noAnswer, //? push in api id 171
                      onChangedNoAnswer: (val) => slaughterCtrl
                          .onChange(val ?? CowSlaughterRadio.noAnswer)),
                  if (slaughterCtrl.charcter == CowSlaughterRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         LabelWidget(
                            label: "Is there a place for slaughter?".tr),
                        GetBuilder<CowSlaughterPlacerRadioController>(
                            init: CowSlaughterPlacerRadioController(),
                            builder: (slaughterPlaceCtrl) {
                              return CowOperationalRadioWidget(
                                  enumName: CowSlaughterPlacerRadio,
                                  yesValue: CowSlaughterPlacerRadio
                                      .yes, //? push in api id 171
                                  onChangedYes: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? CowSlaughterPlacerRadio.yes),
                                  noValue: CowSlaughterPlacerRadio
                                      .no, //? push in api id 172
                                  onChangedNo: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? CowSlaughterPlacerRadio.no),
                                  groupValue: slaughterPlaceCtrl.charcter,
                                  noAnswerValue: CowSlaughterPlacerRadio
                                      .noAnswer, //? push in api id 173

                                  onChangedNoAnswer: (val) =>
                                      slaughterPlaceCtrl.onChange(val ??
                                          CowSlaughterPlacerRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
         LabelWidget(label: "Is there a milker?".tr),
        GetBuilder<CowMilkerExistRadioController>(
            init: CowMilkerExistRadioController(),
            builder: (milkerExistCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowMilkerExistRadio,
                      yesValue:
                          CowMilkerExistRadio.yes, //? push in api id 173
                      onChangedYes: (val) => milkerExistCtrl
                          .onChange(val ?? CowMilkerExistRadio.yes),
                      noValue: CowMilkerExistRadio.no, //? push in api id 174
                      onChangedNo: (val) => milkerExistCtrl
                          .onChange(val ?? CowMilkerExistRadio.no),
                      groupValue: milkerExistCtrl.charcter,
                      noAnswerValue:
                          CowMilkerExistRadio.noAnswer, //? push in api id 175
                      onChangedNoAnswer: (val) => milkerExistCtrl
                          .onChange(val ?? CowMilkerExistRadio.noAnswer)),
                  if (milkerExistCtrl.charcter == CowMilkerExistRadio.yes)
                    CowMilkerExistWidget()
                ],
              );
            }),

        const LineWidget(),
        //!---------------------
         LabelWidget(label: "Are antibiotics used?".tr),
        GetBuilder<CowAntibioticsUsedRadioController>(
            init: CowAntibioticsUsedRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowAntibioticsUsedRadio,
                      yesValue:
                          CowAntibioticsUsedRadio.yes, //? push in api id 214
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? CowAntibioticsUsedRadio.yes),
                      noValue:
                          CowAntibioticsUsedRadio.no, //? push in api id 215
                      onChangedNo: (val) => antiCtrl
                          .onChange(val ?? CowAntibioticsUsedRadio.no),
                      groupValue: antiCtrl.charcter,
                      noAnswerValue: CowAntibioticsUsedRadio
                          .noAnswer, //? push in api id 216

                      onChangedNoAnswer: (val) => antiCtrl
                          .onChange(val ?? CowAntibioticsUsedRadio.noAnswer)),
                  if (antiCtrl.charcter == CowAntibioticsUsedRadio.yes)
                    CowAntibioticsWidget()
                ],
              );
            }),
      ],
    );
  }
}
