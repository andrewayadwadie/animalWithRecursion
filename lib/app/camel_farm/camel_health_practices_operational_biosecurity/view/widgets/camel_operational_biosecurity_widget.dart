// ignore_for_file: must_be_immutable

import 'package:animal_wealth/app/camel_farm/camel_health_practices_operational_biosecurity/controller/camel_opertional_textfield_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_animal_bathed_radio_controller.dart';
import '../../controller/camel_animal_isolate_radio_controller.dart';
import '../../controller/camel_animal_quarantine_radio_controller.dart';
import '../../controller/camel_antibiotics_used_radio_controller.dart';
import '../../controller/camel_feeder_cleaned_radio_controller.dart';
import '../../controller/camel_floor_cleaned_radio_controller.dart';
import '../../controller/camel_milker_exist_radio_controller.dart';
import '../../controller/camel_operational_isolate_place_radio_controller.dart';
import '../../controller/camel_operational_sick_isolate_radio_controller.dart';
import '../../controller/camel_slaughter_place_radio_controller.dart';
import '../../controller/camel_slaughter_radio_controller.dart';
import 'camel_antibiotics_widget.dart';
import 'camel_milker_exist_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';

class CamelOpertionalBiosecurityWidget extends StatelessWidget {
  CamelOpertionalBiosecurityWidget({Key? key}) : super(key: key);

  CamelOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CamelOPertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //? push in api id 150
        LabelWidget(label: "Are sick animals isolated?".tr),
        GetBuilder<CamelsickIsolateRadioController>(
            init: CamelsickIsolateRadioController(),
            builder: (sickisolateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelsickIsolateRadio,
                      yesValue:
                          CamelsickIsolateRadio.yes, //? push in api id 150
                      onChangedYes: (val) => sickisolateCtrl
                          .onChange(val ?? CamelsickIsolateRadio.yes),
                      noValue: CamelsickIsolateRadio.no, //? push in api id 151
                      onChangedNo: (val) => sickisolateCtrl
                          .onChange(val ?? CamelsickIsolateRadio.no),
                      groupValue: sickisolateCtrl.charcter,
                      noAnswerValue:
                          CamelsickIsolateRadio.noAnswer, //? push in api id 152
                      onChangedNoAnswer: (val) => sickisolateCtrl
                          .onChange(val ?? CamelsickIsolateRadio.noAnswer)),
                  if (sickisolateCtrl.charcter == CamelsickIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated to isolate sick animals?".tr),
                        GetBuilder<CamelIsolatePlaceRadioController>(
                            init: CamelIsolatePlaceRadioController(),
                            builder: (isoPlaceCtrl) {
                              return CamelOperationalRadioWidget(
                                  enumName: CamelIsolatePlaceRadio,
                                  yesValue: CamelIsolatePlaceRadio
                                      .yes, //? push in api id 152
                                  onChangedYes: (val) => isoPlaceCtrl.onChange(
                                      val ?? CamelIsolatePlaceRadio.yes),
                                  noValue: CamelIsolatePlaceRadio
                                      .no, //? push in api id 153
                                  onChangedNo: (val) => isoPlaceCtrl.onChange(
                                      val ?? CamelIsolatePlaceRadio.no),
                                  groupValue: isoPlaceCtrl.charcter,
                                  noAnswerValue: CamelIsolatePlaceRadio
                                      .noAnswer, //? push in api id 154
                                  onChangedNoAnswer: (val) =>
                                      isoPlaceCtrl.onChange(val ??
                                          CamelIsolatePlaceRadio.noAnswer));
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
        GetBuilder<CamelsickAnimalIsolateRadioController>(
            init: CamelsickAnimalIsolateRadioController(),
            builder: (animalIsoCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelsickAnimalIsolateRadio,
                      yesValue: CamelsickAnimalIsolateRadio
                          .yes, //? push in api id 154
                      onChangedYes: (val) => animalIsoCtrl
                          .onChange(val ?? CamelsickAnimalIsolateRadio.yes),
                      noValue:
                          CamelsickAnimalIsolateRadio.no, //? push in api id 155
                      onChangedNo: (val) => animalIsoCtrl
                          .onChange(val ?? CamelsickAnimalIsolateRadio.no),
                      groupValue: animalIsoCtrl.charcter,
                      noAnswerValue: CamelsickAnimalIsolateRadio.noAnswer,
                      onChangedNoAnswer: (val) => animalIsoCtrl.onChange(
                          val ?? CamelsickAnimalIsolateRadio.noAnswer)),
                  if (animalIsoCtrl.charcter == CamelsickAnimalIsolateRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label:
                                "Are there places designated for quarantine ?".tr),
                        GetBuilder<CamelAnimalIsolateQuarantineRadioController>(
                            init: CamelAnimalIsolateQuarantineRadioController(),
                            builder: (quarantineCtrl) {
                              return CamelOperationalRadioWidget(
                                  enumName: CamelAnimalIsolateQuarantineRadio,
                                  yesValue: CamelAnimalIsolateQuarantineRadio
                                      .yes, //? push in api id 156
                                  onChangedYes: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          CamelAnimalIsolateQuarantineRadio
                                              .yes),
                                  noValue: CamelAnimalIsolateQuarantineRadio
                                      .no, //? push in api id 157
                                  onChangedNo: (val) => quarantineCtrl.onChange(
                                      val ??
                                          CamelAnimalIsolateQuarantineRadio.no),
                                  groupValue: quarantineCtrl.charcter,
                                  noAnswerValue:
                                      CamelAnimalIsolateQuarantineRadio
                                          .noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      quarantineCtrl.onChange(val ??
                                          CamelAnimalIsolateQuarantineRadio
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
        GetBuilder<CamelAnimalBathedRadioController>(
            init: CamelAnimalBathedRadioController(),
            builder: (bathedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelAnimalBathedRadio,
                      yesValue:
                          CamelAnimalBathedRadio.yes, //? push in api id 158
                      onChangedYes: (val) => bathedCtrl
                          .onChange(val ?? CamelAnimalBathedRadio.yes),
                      noValue: CamelAnimalBathedRadio.no, //? push in api id 159
                      onChangedNo: (val) =>
                          bathedCtrl.onChange(val ?? CamelAnimalBathedRadio.no),
                      groupValue: bathedCtrl.charcter,
                      noAnswerValue: CamelAnimalBathedRadio.noAnswer,
                      onChangedNoAnswer: (val) => bathedCtrl
                          .onChange(val ?? CamelAnimalBathedRadio.noAnswer)),
                  if (bathedCtrl.charcter == CamelAnimalBathedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CamelOperationalTextFieldWidget(
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
        GetBuilder<CamelFloorCleanedRadioController>(
            init: CamelFloorCleanedRadioController(),
            builder: (floorCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelFloorCleanedRadio,
                      yesValue:
                          CamelFloorCleanedRadio.yes, //? push in api id 161
                      onChangedYes: (val) => floorCleanedCtrl
                          .onChange(val ?? CamelFloorCleanedRadio.yes),
                      noValue: CamelFloorCleanedRadio.no, //? push in api id 162
                      onChangedNo: (val) => floorCleanedCtrl
                          .onChange(val ?? CamelFloorCleanedRadio.no),
                      groupValue: floorCleanedCtrl.charcter,
                      noAnswerValue: CamelFloorCleanedRadio
                          .noAnswer, //? push in api id 163
                      onChangedNoAnswer: (val) => floorCleanedCtrl
                          .onChange(val ?? CamelFloorCleanedRadio.noAnswer)),
                  if (floorCleanedCtrl.charcter == CamelFloorCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CamelOperationalTextFieldWidget(
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
        GetBuilder<CamelFeederrCleanedRadioController>(
            init: CamelFeederrCleanedRadioController(),
            builder: (feederCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelFeederrCleanedRadio,
                      yesValue:
                          CamelFeederrCleanedRadio.yes, //? push in api id 164
                      onChangedYes: (val) => feederCleanedCtrl
                          .onChange(val ?? CamelFeederrCleanedRadio.yes),
                      noValue:
                          CamelFeederrCleanedRadio.no, //? push in api id 165
                      onChangedNo: (val) => feederCleanedCtrl
                          .onChange(val ?? CamelFeederrCleanedRadio.no),
                      groupValue: feederCleanedCtrl.charcter,
                      noAnswerValue: CamelFeederrCleanedRadio
                          .noAnswer, //? push in api id 166
                      onChangedNoAnswer: (val) => feederCleanedCtrl
                          .onChange(val ?? CamelFeederrCleanedRadio.noAnswer)),
                  if (feederCleanedCtrl.charcter ==
                      CamelFeederrCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CamelOperationalTextFieldWidget(
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
        CamelOperationalTextFieldWidget(
            title: "How is farm waste disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangefarmWaste(val ?? "");
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "How are dead animals disposed of?".tr),
        CamelOperationalTextFieldWidget(
            title: "How are dead animals disposed of?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangedeadAnimal(val ?? "");
            }),
        const LineWidget(),
        LabelWidget(
            label: "Are the animals slaughtered inside the farm?".tr),
        GetBuilder<CamelSlaughterRadioController>(
            init: CamelSlaughterRadioController(),
            builder: (slaughterCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelSlaughterRadio,
                      yesValue: CamelSlaughterRadio.yes, //? push in api id 169
                      onChangedYes: (val) => slaughterCtrl
                          .onChange(val ?? CamelSlaughterRadio.yes),
                      noValue: CamelSlaughterRadio.no, //? push in api id 170
                      onChangedNo: (val) =>
                          slaughterCtrl.onChange(val ?? CamelSlaughterRadio.no),
                      groupValue: slaughterCtrl.charcter,
                      noAnswerValue:
                          CamelSlaughterRadio.noAnswer, //? push in api id 171
                      onChangedNoAnswer: (val) => slaughterCtrl
                          .onChange(val ?? CamelSlaughterRadio.noAnswer)),
                  if (slaughterCtrl.charcter == CamelSlaughterRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "Is there a place for slaughter?".tr),
                        GetBuilder<CamelSlaughterPlacerRadioController>(
                            init: CamelSlaughterPlacerRadioController(),
                            builder: (slaughterPlaceCtrl) {
                              return CamelOperationalRadioWidget(
                                  enumName: CamelSlaughterPlacerRadio,
                                  yesValue: CamelSlaughterPlacerRadio
                                      .yes, //? push in api id 171
                                  onChangedYes: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? CamelSlaughterPlacerRadio.yes),
                                  noValue: CamelSlaughterPlacerRadio
                                      .no, //? push in api id 172
                                  onChangedNo: (val) =>
                                      slaughterPlaceCtrl.onChange(
                                          val ?? CamelSlaughterPlacerRadio.no),
                                  groupValue: slaughterPlaceCtrl.charcter,
                                  noAnswerValue: CamelSlaughterPlacerRadio
                                      .noAnswer, //? push in api id 173

                                  onChangedNoAnswer: (val) =>
                                      slaughterPlaceCtrl.onChange(val ??
                                          CamelSlaughterPlacerRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!88888888888888888888888888888888888888888888888888888888888888888888888
        LabelWidget(label: "Is there a milker?".tr),
        GetBuilder<CamelMilkerExistRadioController>(
            init: CamelMilkerExistRadioController(),
            builder: (milkerExistCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelMilkerExistRadio,
                      yesValue:
                          CamelMilkerExistRadio.yes, //? push in api id 173
                      onChangedYes: (val) => milkerExistCtrl
                          .onChange(val ?? CamelMilkerExistRadio.yes),
                      noValue: CamelMilkerExistRadio.no, //? push in api id 174
                      onChangedNo: (val) => milkerExistCtrl
                          .onChange(val ?? CamelMilkerExistRadio.no),
                      groupValue: milkerExistCtrl.charcter,
                      noAnswerValue:
                          CamelMilkerExistRadio.noAnswer, //? push in api id 175
                      onChangedNoAnswer: (val) => milkerExistCtrl
                          .onChange(val ?? CamelMilkerExistRadio.noAnswer)),
                  if (milkerExistCtrl.charcter == CamelMilkerExistRadio.yes)
                    CamelMilkerExistWidget()
                ],
              );
            }),

        const LineWidget(),
        //!---------------------
        LabelWidget(label: "Are antibiotics used?".tr),
        GetBuilder<CamelAntibioticsUsedRadioController>(
            init: CamelAntibioticsUsedRadioController(),
            builder: (antiCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelAntibioticsUsedRadio,
                      yesValue:
                          CamelAntibioticsUsedRadio.yes, //? push in api id 214
                      onChangedYes: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUsedRadio.yes),
                      noValue:
                          CamelAntibioticsUsedRadio.no, //? push in api id 215
                      onChangedNo: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUsedRadio.no),
                      groupValue: antiCtrl.charcter,
                      noAnswerValue: CamelAntibioticsUsedRadio
                          .noAnswer, //? push in api id 216

                      onChangedNoAnswer: (val) => antiCtrl
                          .onChange(val ?? CamelAntibioticsUsedRadio.noAnswer)),
                  if (antiCtrl.charcter == CamelAntibioticsUsedRadio.yes)
                    CamelAntibioticsWidget()
                ],
              );
            }),
      ],
    );
  }
}
