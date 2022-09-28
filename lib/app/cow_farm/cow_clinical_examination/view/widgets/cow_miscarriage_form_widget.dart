import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_clinical_changes_checkbox_controller.dart';
import '../../controller/cow_clinical_changes_radio_controller.dart';
import '../../controller/cow_clinical_textfield_controller.dart';
import '../../controller/cow_symptoms_before_abortion_radio_controller.dart';
import 'cow_clinical_examination_radio_widget.dart';
import 'cow_misccariage_time_widget.dart';
import 'cow_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class CowMiscarriageFormWidget extends StatelessWidget {
  CowMiscarriageFormWidget({Key? key}) : super(key: key);
  CowClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(CowClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
        LabelWidget(label: "Number of Cases".tr),
        CowSymptomsTextFieldWidget(
            title: "Number of Cases".tr,
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemiscarriage(val ?? "");
            }),
        //!Are there symptoms before the abortion?
        LabelWidget(label: "Are there symptoms before the abortion? ".tr),

        GetBuilder<CowSymptomsBeforeAbortionRadioController>(
            init: CowSymptomsBeforeAbortionRadioController(),
            builder: (symmptomsBeforeAbortionCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowClinicalExaminationRadioWidget(
                      enumName: CowSymptomsBeforeAbortionRadio,
                      yesValue: CowSymptomsBeforeAbortionRadio.yes,
                      onChangedYes: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? CowSymptomsBeforeAbortionRadio.yes),
                      noValue: CowSymptomsBeforeAbortionRadio.no,
                      onChangedNo: (val) => symmptomsBeforeAbortionCtrl
                          .onChange(val ?? CowSymptomsBeforeAbortionRadio.no),
                      groupValue: symmptomsBeforeAbortionCtrl.charcter,
                      noAnswerValue: CowSymptomsBeforeAbortionRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(
                              val ?? CowSymptomsBeforeAbortionRadio.noAnswer)),
                  if (symmptomsBeforeAbortionCtrl.charcter ==
                      CowSymptomsBeforeAbortionRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Detect Symptoms".tr),
                        CowSymptomsTextFieldWidget(
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
        const CowMiscarriageTimeWidget(),

        //!Are there clinical changes after abortion?
        LabelWidget(label: "Are there clinical changes after abortion? ".tr),
        GetBuilder<CowClinicalChangesRadioController>(
            init: CowClinicalChangesRadioController(),
            builder: (clinicalChangesRadioCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowClinicalExaminationRadioWidget(
                      enumName: CowClinicalChangesRadio,
                      yesValue: CowClinicalChangesRadio.yes,
                      onChangedYes: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CowClinicalChangesRadio.yes),
                      noValue: CowClinicalChangesRadio.no,
                      onChangedNo: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CowClinicalChangesRadio.no),
                      groupValue: clinicalChangesRadioCtrl.charcter,
                      noAnswerValue: CowClinicalChangesRadio.noAnswer,
                      onChangedNoAnswer: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? CowClinicalChangesRadio.noAnswer)),
                  if (clinicalChangesRadioCtrl.charcter ==
                      CowClinicalChangesRadio.yes)
                    GetBuilder<CowClinicalChangesCheckboxController>(
                        init: CowClinicalChangesCheckboxController(choices: [
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
