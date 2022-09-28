import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_clinical_changes_checkbox_controller.dart';
import '../../controller/goat_clinical_changes_radio_controller.dart';
import '../../controller/goat_clinical_textfield_controller.dart';
import '../../controller/goat_symptoms_before_abortion_radio_controller.dart';
import 'goat_clinical_examination_radio_widget.dart';
import 'goat_misccariage_time_widget.dart';
import 'goat_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class GoatMiscarriageFormWidget extends StatelessWidget {
  GoatMiscarriageFormWidget({Key? key}) : super(key: key);
  GoatClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(GoatClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        LabelWidget(label: "Number of cases : ".tr),
        GoatSymptomsTextFieldWidget(
            title: "Number of cases : ".tr,
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemiscarriage(val ?? "");
            }),
        //!Are there symptoms before the abortion?
        LabelWidget(label: "Are there symptoms before the abortion? ".tr),

        GetBuilder<GoatSymptomsBeforeAbortionRadioController>(
            init: GoatSymptomsBeforeAbortionRadioController(),
            builder: (symmptomsBeforeAbortionCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatClinicalExaminationRadioWidget(
                      enumName: GoatSymptomsBeforeAbortionRadio,
                      yesValue: GoatSymptomsBeforeAbortionRadio.yes,
                      onChangedYes: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? GoatSymptomsBeforeAbortionRadio.yes),
                      noValue: GoatSymptomsBeforeAbortionRadio.no,
                      onChangedNo: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? GoatSymptomsBeforeAbortionRadio.no),
                      groupValue: symmptomsBeforeAbortionCtrl.charcter,
                      noAnswerValue: GoatSymptomsBeforeAbortionRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(
                              val ?? GoatSymptomsBeforeAbortionRadio.noAnswer)),
                  if (symmptomsBeforeAbortionCtrl.charcter ==
                      GoatSymptomsBeforeAbortionRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Detect Symptoms".tr),
                        GoatSymptomsTextFieldWidget(
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
        const GoatMiscarriageTimeWidget(),

        //!Are there clinical changes after abortion?
        LabelWidget(label: "Are there clinical changes after abortion? ".tr),
        GetBuilder<GoatClinicalChangesRadioController>(
            init: GoatClinicalChangesRadioController(),
            builder: (clinicalChangesRadioCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatClinicalExaminationRadioWidget(
                      enumName: GoatClinicalChangesRadio,
                      yesValue: GoatClinicalChangesRadio.yes,
                      onChangedYes: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? GoatClinicalChangesRadio.yes),
                      noValue: GoatClinicalChangesRadio.no,
                      onChangedNo: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? GoatClinicalChangesRadio.no),
                      groupValue: clinicalChangesRadioCtrl.charcter,
                      noAnswerValue: GoatClinicalChangesRadio.noAnswer,
                      onChangedNoAnswer: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? GoatClinicalChangesRadio.noAnswer)),
                  if (clinicalChangesRadioCtrl.charcter ==
                      GoatClinicalChangesRadio.yes)
                    GetBuilder<GoatClinicalChangesCheckboxController>(
                        init: GoatClinicalChangesCheckboxController(choices: [
                          "Clinical changes in vaginal secretions after childbirth .",
                          "in the placenta .",
                          "in fetuses ."
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
