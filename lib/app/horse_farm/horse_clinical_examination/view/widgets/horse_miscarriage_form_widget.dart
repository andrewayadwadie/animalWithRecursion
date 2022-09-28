import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_clinical_changes_checkbox_controller.dart';
import '../../controller/horse_clinical_changes_radio_controller.dart';
import '../../controller/horse_clinical_textfield_controller.dart';
import '../../controller/horse_symptoms_before_abortion_radio_controller.dart';
import 'horse_clinical_examination_radio_widget.dart';
import 'horse_misccariage_time_widget.dart';
import 'horse_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class HorseMiscarriageFormWidget extends StatelessWidget {
  HorseMiscarriageFormWidget({Key? key}) : super(key: key);
  HorseClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(HorseClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        LabelWidget(label: "Number of Cases".tr),
        HorseSymptomsTextFieldWidget(
            title: "Number of Cases".tr,
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemiscarriage(val ?? "");
            }),
        //!Are there symptoms before the abortion?
        LabelWidget(label: "Are there symptoms before the abortion? ".tr),

        GetBuilder<HorseSymptomsBeforeAbortionRadioController>(
            init: HorseSymptomsBeforeAbortionRadioController(),
            builder: (symmptomsBeforeAbortionCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseClinicalExaminationRadioWidget(
                      enumName: HorseSymptomsBeforeAbortionRadio,
                      yesValue: HorseSymptomsBeforeAbortionRadio.yes,
                      onChangedYes: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(
                              val ?? HorseSymptomsBeforeAbortionRadio.yes),
                      noValue: HorseSymptomsBeforeAbortionRadio.no,
                      onChangedNo: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? HorseSymptomsBeforeAbortionRadio.no),
                      groupValue: symmptomsBeforeAbortionCtrl.charcter,
                      noAnswerValue: HorseSymptomsBeforeAbortionRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(val ??
                              HorseSymptomsBeforeAbortionRadio.noAnswer)),
                  if (symmptomsBeforeAbortionCtrl.charcter ==
                      HorseSymptomsBeforeAbortionRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Detect Symptoms".tr),
                        HorseSymptomsTextFieldWidget(
                            title: "Detect Symptoms".tr,
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl
                                  .onChangesymptomsAbortion(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        //!What is the timing of the abortion?
        LabelWidget(label: "What is the timing of the abortion? ".tr),
        const HorseMiscarriageTimeWidget(),

        //!Are there clinical changes after abortion?
        LabelWidget(label: "Are there clinical changes after abortion? ".tr),
        GetBuilder<HorseClinicalChangesRadioController>(
            init: HorseClinicalChangesRadioController(),
            builder: (clinicalChangesRadioCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseClinicalExaminationRadioWidget(
                      enumName: HorseClinicalChangesRadio,
                      yesValue: HorseClinicalChangesRadio.yes,
                      onChangedYes: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? HorseClinicalChangesRadio.yes),
                      noValue: HorseClinicalChangesRadio.no,
                      onChangedNo: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? HorseClinicalChangesRadio.no),
                      groupValue: clinicalChangesRadioCtrl.charcter,
                      noAnswerValue: HorseClinicalChangesRadio.noAnswer,
                      onChangedNoAnswer: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? HorseClinicalChangesRadio.noAnswer)),
                  if (clinicalChangesRadioCtrl.charcter ==
                      HorseClinicalChangesRadio.yes)
                    GetBuilder<HorseClinicalChangesCheckboxController>(
                        init: HorseClinicalChangesCheckboxController(choices: [
                           "Clinical changes in vaginal secretions after childbirth .",
                          "in the placenta .",
                          "in fetuses .",
                        ]),
                        builder: (clinicalChangesCheckboxCtrl) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: List.generate(
                                    clinicalChangesCheckboxCtrl
                                        .choicesBoolList.length, (index) {
                                  return ListTile(
                                    title: Text(clinicalChangesCheckboxCtrl
                                        .choices[index].tr),
                                    leading: Checkbox(
                                      value: clinicalChangesCheckboxCtrl
                                          .choicesBoolList[index],
                                      onChanged: (val) =>
                                          clinicalChangesCheckboxCtrl.onChange(
                                              val, index),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          );
                        })
                ],
              );
            }),
      ],
    );
  }
}
