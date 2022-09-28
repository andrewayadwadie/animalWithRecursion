import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_clinical_changes_checkbox_controller.dart';
import '../../controller/camel_clinical_changes_radio_controller.dart';
import '../../controller/camel_clinical_textfield_controller.dart';
import '../../controller/camel_symptoms_before_abortion_radio_controller.dart';
import 'camel_clinical_examination_radio_widget.dart';
import 'camel_misccariage_time_widget.dart';
import 'camel_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class CamelMiscarriageFormWidget extends StatelessWidget {
  CamelMiscarriageFormWidget({Key? key}) : super(key: key);
  CamelClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(CamelClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        LabelWidget(label: "Number of Cases".tr),
        CamelSymptomsTextFieldWidget(
            title: "Number of Cases".tr,
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemiscarriage(val ?? "");
            }),
        //!Are there symptoms before the abortion?
        LabelWidget(label: "Are there symptoms before the abortion? ".tr),

        GetBuilder<CamelSymptomsBeforeAbortionRadioController>(
            init: CamelSymptomsBeforeAbortionRadioController(),
            builder: (symmptomsBeforeAbortionCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelSymptomsBeforeAbortionRadio,
                      yesValue: CamelSymptomsBeforeAbortionRadio.yes,
                      onChangedYes: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(
                              val ?? CamelSymptomsBeforeAbortionRadio.yes),
                      noValue: CamelSymptomsBeforeAbortionRadio.no,
                      onChangedNo: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? CamelSymptomsBeforeAbortionRadio.no),
                      groupValue: symmptomsBeforeAbortionCtrl.charcter,
                      noAnswerValue: CamelSymptomsBeforeAbortionRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(val ??
                              CamelSymptomsBeforeAbortionRadio.noAnswer)),
                  if (symmptomsBeforeAbortionCtrl.charcter ==
                      CamelSymptomsBeforeAbortionRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Detect Symptoms".tr),
                        CamelSymptomsTextFieldWidget(
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
        const CamelMiscarriageTimeWidget(),

        //!Are there clinical changes after abortion?
        LabelWidget(label: "Are there clinical changes after abortion? ".tr),
        GetBuilder<CamelClinicalChangesRadioController>(
            init: CamelClinicalChangesRadioController(),
            builder: (clinicalChangesRadioCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelClinicalExaminationRadioWidget(
                      enumName: CamelClinicalChangesRadio,
                      yesValue: CamelClinicalChangesRadio.yes,
                      onChangedYes: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CamelClinicalChangesRadio.yes),
                      noValue: CamelClinicalChangesRadio.no,
                      onChangedNo: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CamelClinicalChangesRadio.no),
                      groupValue: clinicalChangesRadioCtrl.charcter,
                      noAnswerValue: CamelClinicalChangesRadio.noAnswer,
                      onChangedNoAnswer: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CamelClinicalChangesRadio.noAnswer)),
                  if (clinicalChangesRadioCtrl.charcter ==
                      CamelClinicalChangesRadio.yes)
                    GetBuilder<CamelClinicalChangesCheckboxController>(
                        init: CamelClinicalChangesCheckboxController(choices: [
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
