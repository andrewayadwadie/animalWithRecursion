 
 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_clinical_changes_checkbox_controller.dart';
import '../../controller/sheep_clinical_changes_radio_controller.dart';
import '../../controller/sheep_clinical_textfield_controller.dart';
import '../../controller/sheep_symptoms_before_abortion_radio_controller.dart';
import 'sheep_clinical_examination_radio_widget.dart';
import 'sheep_misccariage_time_widget.dart';
import 'sheep_symptoms_types_textfield_widget.dart';
 

// ignore: must_be_immutable
class SheepMiscarriageFormWidget extends StatelessWidget {
  SheepMiscarriageFormWidget({Key? key}) : super(key: key);
  SheepClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(SheepClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
          LabelWidget(label: "Number of Cases".tr),
        SheepSymptomsTextFieldWidget(
            title: "Number of Cases".tr,
            onNoteChange: (val) {
            clinicalTextFieldCtrl.onChangemiscarriage(val??"");
            }),
        //!Are there symptoms before the abortion?
          LabelWidget(label: "Are there symptoms before the abortion? ".tr),

        GetBuilder<SheepSymptomsBeforeAbortionRadioController>(
            init: SheepSymptomsBeforeAbortionRadioController(),
            builder: (symmptomsBeforeAbortionCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepClinicalExaminationRadioWidget(
                      enumName: SheepSymptomsBeforeAbortionRadio,
                      yesValue: SheepSymptomsBeforeAbortionRadio.yes,
                      onChangedYes: (val) =>
                          symmptomsBeforeAbortionCtrl.onChange(
                              val ?? SheepSymptomsBeforeAbortionRadio.yes),
                      noValue: SheepSymptomsBeforeAbortionRadio.no,
                      onChangedNo: (val) => symmptomsBeforeAbortionCtrl.onChange(val ?? SheepSymptomsBeforeAbortionRadio.no),
                      groupValue: symmptomsBeforeAbortionCtrl.charcter,
                      noAnswerValue: SheepSymptomsBeforeAbortionRadio.noAnswer,
                      onChangedNoAnswer: (val) => symmptomsBeforeAbortionCtrl.onChange(val ??SheepSymptomsBeforeAbortionRadio.noAnswer)

                      
                      ),
                  if (symmptomsBeforeAbortionCtrl.charcter ==
                      SheepSymptomsBeforeAbortionRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "Detect Symptoms".tr),
                        SheepSymptomsTextFieldWidget(
                            title: "symptoms".tr,
                            onNoteChange: (val) {
                            clinicalTextFieldCtrl.onChangesymptomsAbortion(val??"");
                          
                            })
                      ],
                    )
                ],
              );
            }),
        //!What is the timing of the abortion?
          LabelWidget(label: "What is the timing of the abortion? ".tr),
        const SheepMiscarriageTimeWidget(),

        //!Are there clinical changes after abortion?
          LabelWidget(label: "Are there clinical changes after abortion? ".tr),
        GetBuilder<SheepClinicalChangesRadioController>(
            init: SheepClinicalChangesRadioController(),
            builder: (clinicalChangesRadioCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepClinicalExaminationRadioWidget(
                      enumName: SheepClinicalChangesRadio,
                      yesValue: SheepClinicalChangesRadio.yes,
                      onChangedYes: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? SheepClinicalChangesRadio.yes),
                      noValue: SheepClinicalChangesRadio.no,
                      onChangedNo: (val) => clinicalChangesRadioCtrl
                          .onChange(val ?? SheepClinicalChangesRadio.no),
                      groupValue: clinicalChangesRadioCtrl.charcter,
                      noAnswerValue: SheepClinicalChangesRadio.noAnswer,
                      onChangedNoAnswer: (val) => clinicalChangesRadioCtrl
                          .onChange(val ??
                              SheepClinicalChangesRadio.noAnswer)
 
                      ),
                  if (clinicalChangesRadioCtrl.charcter ==
                      SheepClinicalChangesRadio.yes)
                    GetBuilder<SheepClinicalChangesCheckboxController>(
                        init: SheepClinicalChangesCheckboxController(choices: [
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
