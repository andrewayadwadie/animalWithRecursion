import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_animal_bathed_radio_controller.dart';
import '../../controller/sheep_animal_isolate_radio_controller.dart';
import '../../controller/sheep_animal_quarantine_radio_controller.dart';
import '../../controller/sheep_antibiotics_used_radio_controller.dart';
import '../../controller/sheep_feeder_cleaned_radio_controller.dart';
import '../../controller/sheep_floor_cleaned_radio_controller.dart';
import '../../controller/sheep_milker_exist_radio_controller.dart';
import '../../controller/sheep_operational_isolate_place_radio_controller.dart';
import '../../controller/sheep_operational_sick_isolate_radio_controller.dart';
import '../../controller/sheep_opertional_textfield_controller.dart';
import '../../controller/sheep_slaughter_place_radio_controller.dart';
import '../../controller/sheep_slaughter_radio_controller.dart';
import 'sheep_antibiotics_widget.dart';
import 'sheep_milker_exist_widget.dart';
import 'sheep_operational_radio_widget.dart';
import 'sheep_operational_textfield_widget.dart';

// ignore: must_be_immutable
class SheepOpertionalBiosecurityWidget extends StatelessWidget {
  SheepOpertionalBiosecurityWidget({Key? key}) : super(key: key);

  SheepOPertionalTextFieldController opertionalTextFieldController =
      Get.put(SheepOPertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //? push in api id 150LabelWidget(label: "Are sick animals isolated?".tr),
        GetBuilder<SheepsickIsolateRadioController>(
            init: SheepsickIsolateRadioController(),
            builder: (sickisolateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepsickIsolateRadio,
                      yesValue:
                          SheepsickIsolateRadio.yes, //? push in api id 150
                      onChangedYes: (val) => sickisolateCtrl
                          .onChange(val ?? SheepsickIsolateRadio.yes),
                      noValue: SheepsickIsolateRadio.no, //? push in api id 151
                      onChangedNo: (val) => sickisolateCtrl
                          .onChange(val ?? SheepsickIsolateRadio.no),
                      groupValue: sickisolateCtrl.charcter,
                      noAnswerValue:
                          SheepsickIsolateRadio.noAnswer, //? push in api id 152
                      onChangedNoAnswer: (val) => sickisolateCtrl
                          .onChange(val ?? SheepsickIsolateRadio.noAnswer)),
                  if (sickisolateCtrl.charcter == SheepsickIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated to isolate sick animals?"
                                    .tr),
                        GetBuilder<SheepIsolatePlaceRadioController>(
                            init: SheepIsolatePlaceRadioController(),
                            builder: (isoPlaceCtrl) {
                              return SheepOperationalRadioWidget(
                                  enumName: SheepIsolatePlaceRadio,
                                  yesValue: SheepIsolatePlaceRadio
                                      .yes, //? push in api id 152
                                  onChangedYes: (val) => isoPlaceCtrl.onChange(
                                      val ?? SheepIsolatePlaceRadio.yes),
                                  noValue: SheepIsolatePlaceRadio
                                      .no, //? push in api id 153
                                  onChangedNo: (val) => isoPlaceCtrl.onChange(
                                      val ?? SheepIsolatePlaceRadio.no),
                                  groupValue: isoPlaceCtrl.charcter,
                                  noAnswerValue: SheepIsolatePlaceRadio
                                      .noAnswer, //? push in api id 154
                                  onChangedNoAnswer: (val) =>
                                      isoPlaceCtrl.onChange(val ??
                                          SheepIsolatePlaceRadio.noAnswer));
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
        GetBuilder<SheepsickAnimalIsolateRadioController>(
            init: SheepsickAnimalIsolateRadioController(),
            builder: (animalIsoCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepsickAnimalIsolateRadio,
                      yesValue: SheepsickAnimalIsolateRadio
                          .yes, //? push in api id 154
                      onChangedYes: (val) => animalIsoCtrl
                          .onChange(val ?? SheepsickAnimalIsolateRadio.yes),
                      noValue:
                          SheepsickAnimalIsolateRadio.no, //? push in api id 155
                      onChangedNo: (val) => animalIsoCtrl
                          .onChange(val ?? SheepsickAnimalIsolateRadio.no),
                      groupValue: animalIsoCtrl.charcter,
                      noAnswerValue: SheepsickAnimalIsolateRadio.noAnswer,
                      onChangedNoAnswer: (val) => animalIsoCtrl.onChange(
                          val ?? SheepsickAnimalIsolateRadio.noAnswer)),
                  if (animalIsoCtrl.charcter == SheepsickAnimalIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated for quarantine ?"
                                    .tr),
                        GetBuilder<SheepAnimalIsolateQuarantineRadioController>(
                            init: SheepAnimalIsolateQuarantineRadioController(),
                            builder: (quarantineCtrl) {
                              return SheepOperationalRadioWidget(
                                  enumName: SheepAnimalIsolateQuarantineRadio,
                                  yesValue: SheepAnimalIsolateQuarantineRadio
                                      .yes, //? push in api id 156
                                  onChangedYes: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          SheepAnimalIsolateQuarantineRadio
                                              .yes),
                                  noValue: SheepAnimalIsolateQuarantineRadio
                                      .no, //? push in api id 157
                                  onChangedNo: (val) => quarantineCtrl.onChange(
                                      val ??
                                          SheepAnimalIsolateQuarantineRadio.no),
                                  groupValue: quarantineCtrl.charcter,
                                  noAnswerValue:
                                      SheepAnimalIsolateQuarantineRadio
                                          .noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          SheepAnimalIsolateQuarantineRadio
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
        GetBuilder<SheepAnimalBathedRadioController>(
            init: SheepAnimalBathedRadioController(),
            builder: (bathedCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepAnimalBathedRadio,
                      yesValue:
                          SheepAnimalBathedRadio.yes, //? push in api id 158
                      onChangedYes: (val) => bathedCtrl
                          .onChange(val ?? SheepAnimalBathedRadio.yes),
                      noValue: SheepAnimalBathedRadio.no, //? push in api id 159
                      onChangedNo: (val) =>
                          bathedCtrl.onChange(val ?? SheepAnimalBathedRadio.no),
                      groupValue: bathedCtrl.charcter,
                      noAnswerValue: SheepAnimalBathedRadio.noAnswer,
                      onChangedNoAnswer: (val) => bathedCtrl
                          .onChange(val ?? SheepAnimalBathedRadio.noAnswer)),
                  if (bathedCtrl.charcter == SheepAnimalBathedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr.tr),
                        SheepOperationalTextFieldWidget(
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

        //!-----------------------
        LabelWidget(label: "Is the floor cleaned ?".tr),
        GetBuilder<SheepFloorCleanedRadioController>(
            init: SheepFloorCleanedRadioController(),
            builder: (floorCleanedCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepFloorCleanedRadio,
                      yesValue:
                          SheepFloorCleanedRadio.yes, //? push in api id 161
                      onChangedYes: (val) => floorCleanedCtrl
                          .onChange(val ?? SheepFloorCleanedRadio.yes),
                      noValue: SheepFloorCleanedRadio.no, //? push in api id 162
                      onChangedNo: (val) => floorCleanedCtrl
                          .onChange(val ?? SheepFloorCleanedRadio.no),
                      groupValue: floorCleanedCtrl.charcter,
                      noAnswerValue: SheepFloorCleanedRadio
                          .noAnswer, //? push in api id 163
                      onChangedNoAnswer: (val) => floorCleanedCtrl
                          .onChange(val ?? SheepFloorCleanedRadio.noAnswer)),
                  if (floorCleanedCtrl.charcter == SheepFloorCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr.tr),
                        SheepOperationalTextFieldWidget(
                            title: "how many times?".tr.tr,
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
        GetBuilder<SheepFeederrCleanedRadioController>(
            init: SheepFeederrCleanedRadioController(),
            builder: (feederCleanedCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepFeederrCleanedRadio,
                      yesValue:
                          SheepFeederrCleanedRadio.yes, //? push in api id 164
                      onChangedYes: (val) => feederCleanedCtrl
                          .onChange(val ?? SheepFeederrCleanedRadio.yes),
                      noValue:
                          SheepFeederrCleanedRadio.no, //? push in api id 165
                      onChangedNo: (val) => feederCleanedCtrl
                          .onChange(val ?? SheepFeederrCleanedRadio.no),
                      groupValue: feederCleanedCtrl.charcter,
                      noAnswerValue: SheepFeederrCleanedRadio
                          .noAnswer, //? push in api id 166
                      onChangedNoAnswer: (val) => feederCleanedCtrl
                          .onChange(val ?? SheepFeederrCleanedRadio.noAnswer)),
                  if (feederCleanedCtrl.charcter ==
                      SheepFeederrCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        SheepOperationalTextFieldWidget(
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
        SheepOperationalTextFieldWidget(
            title: "How is farm waste disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangefarmWaste(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "How are dead animals disposed of?".tr),
        SheepOperationalTextFieldWidget(
            title: "How are dead animals disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangedeadAnimal(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(label: "Are the animals slaughtered inside the farm?".tr),
        GetBuilder<SheepSlaughterRadioController>(
            init: SheepSlaughterRadioController(),
            builder: (slaughterCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepSlaughterRadio,
                      yesValue: SheepSlaughterRadio.yes, //? push in api id 169
                      onChangedYes: (val) => slaughterCtrl
                          .onChange(val ?? SheepSlaughterRadio.yes),
                      noValue: SheepSlaughterRadio.no, //? push in api id 170
                      onChangedNo: (val) =>
                          slaughterCtrl.onChange(val ?? SheepSlaughterRadio.no),
                      groupValue: slaughterCtrl.charcter,
                      noAnswerValue:
                          SheepSlaughterRadio.noAnswer, //? push in api id 171
                      onChangedNoAnswer: (val) => slaughterCtrl
                          .onChange(val ?? SheepSlaughterRadio.noAnswer)),
                  if (slaughterCtrl.charcter == SheepSlaughterRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "Is there a place for slaughter?".tr),
                        GetBuilder<SheepSlaughterPlacerRadioController>(
                            init: SheepSlaughterPlacerRadioController(),
                            builder: (slaughterPlaceCtrl) {
                              return SheepOperationalRadioWidget(
                                  enumName: SheepSlaughterPlacerRadio,
                                  yesValue: SheepSlaughterPlacerRadio
                                      .yes, //? push in api id 171
                                  onChangedYes: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? SheepSlaughterPlacerRadio.yes),
                                  noValue: SheepSlaughterPlacerRadio
                                      .no, //? push in api id 172
                                  onChangedNo: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? SheepSlaughterPlacerRadio.no),
                                  groupValue: slaughterPlaceCtrl.charcter,
                                  noAnswerValue: SheepSlaughterPlacerRadio
                                      .noAnswer, //? push in api id 173

                                  onChangedNoAnswer: (val) =>
                                      slaughterPlaceCtrl.onChange(val ??
                                          SheepSlaughterPlacerRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "Is there a milker?".tr),
        GetBuilder<SheepMilkerExistRadioController>(
            init: SheepMilkerExistRadioController(),
            builder: (milkerExistCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepMilkerExistRadio,
                      yesValue:
                          SheepMilkerExistRadio.yes, //? push in api id 173
                      onChangedYes: (val) => milkerExistCtrl
                          .onChange(val ?? SheepMilkerExistRadio.yes),
                      noValue: SheepMilkerExistRadio.no, //? push in api id 174
                      onChangedNo: (val) => milkerExistCtrl
                          .onChange(val ?? SheepMilkerExistRadio.no),
                      groupValue: milkerExistCtrl.charcter,
                      noAnswerValue:
                          SheepMilkerExistRadio.noAnswer, //? push in api id 175
                      onChangedNoAnswer: (val) => milkerExistCtrl
                          .onChange(val ?? SheepMilkerExistRadio.noAnswer)),
                  if (milkerExistCtrl.charcter == SheepMilkerExistRadio.yes)
                    SheepMilkerExistWidget()
                ],
              );
            }),

        const LineWidget(),
        //!---------------------
        LabelWidget(label: "Are antibiotics used?".tr),
        GetBuilder<SheepAntibioticsUsedRadioController>(
            init: SheepAntibioticsUsedRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepAntibioticsUsedRadio,
                      yesValue:
                          SheepAntibioticsUsedRadio.yes, //? push in api id 214
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? SheepAntibioticsUsedRadio.yes),
                      noValue:
                          SheepAntibioticsUsedRadio.no, //? push in api id 215
                      onChangedNo: (val) => antiCtrl
                          .onChange(val ?? SheepAntibioticsUsedRadio.no),
                      groupValue: antiCtrl.charcter,
                      noAnswerValue: SheepAntibioticsUsedRadio
                          .noAnswer, //? push in api id 216

                      onChangedNoAnswer: (val) => antiCtrl
                          .onChange(val ?? SheepAntibioticsUsedRadio.noAnswer)),
                  if (antiCtrl.charcter == SheepAntibioticsUsedRadio.yes)
                    SheepAntibioticsWidget()
                ],
              );
            }),
      ],
    );
  }
}
