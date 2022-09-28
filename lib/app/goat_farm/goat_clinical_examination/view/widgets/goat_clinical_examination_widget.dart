import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_clinical_textfield_controller.dart';
import '../../controller/goat_disease_among_workers_radio_widget.dart';
import '../../controller/goat_disease_outbreak_radio_controller.dart';
import '../../controller/goat_health_issues_checkbox_controller.dart';
import '../../controller/goat_sick_case_radio_controller.dart';
import '../../controller/goatanimals_show_symptoms_radio_controller.dart';
import 'goat_clinical_examination_radio_widget.dart';
import 'goat_diagnoses_disease_widget.dart';
import 'goat_sick_animals_treated_widget.dart';
import 'goat_symptoms_checkbox_manual_widget.dart';
import 'goat_symptoms_types_textfield_widget.dart';
 

// ignore: must_be_immutable
class GoatclinicalExaminationWidget extends StatelessWidget {
  GoatclinicalExaminationWidget({Key? key}) : super(key: key);
 
  GoatClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(GoatClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         LabelWidget(
            label: "What health problems have you noticed in the last year?".tr),
        GetBuilder<GoathealthIssuesCheckboxController>(
            init: GoathealthIssuesCheckboxController(choices: [
              "Gastrointestinal diseases",
              "respiratory system diseases",
              "nervous system diseases",
              "diseases of the circulatory system",
              "skin desies",
              "venereal disease",
              "Muscle and joint diseases",
              "malnutrition diseases",
              "Global Warming",
              "Wounds and fractures",
            ]),
            builder: (healthIssuesCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: List.generate(
                        healthIssuesCtrl.choicesBoolList.length, (index) {
                      return ListTile(
                        title: Text(healthIssuesCtrl.choices[index].tr),
                        leading: Checkbox(
                          value: healthIssuesCtrl.choicesBoolList[index],
                          onChanged: (val) =>
                              healthIssuesCtrl.onChange(val, index),
                        ),
                      );
                    }),
                  ),
                ],
              );
            }),
        const LineWidget(),
         LabelWidget(
            label:
                "Are there any cases of illness in the herd at the time of the visit?".tr),
        GetBuilder<GoatSickCaseRadioController>(
            init: GoatSickCaseRadioController(),
            builder: (sickCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatClinicalExaminationRadioWidget(
                      enumName: GoatSickCaseRadio,
                      yesValue: GoatSickCaseRadio.yes,
                      onChangedYes: (val) =>
                          sickCtrl.onChange(val ?? GoatSickCaseRadio.yes),
                      noValue: GoatSickCaseRadio.no,
                      onChangedNo: (val) =>
                          sickCtrl.onChange(val ?? GoatSickCaseRadio.no),
                      groupValue: sickCtrl.charcter,
                      noAnswerValue: GoatSickCaseRadio.noAnswer,
                      onChangedNoAnswer: (val) => sickCtrl
                          .onChange(val ?? GoatSickCaseRadio.noAnswer)),
                ],
              );
            }),
        const LineWidget(),
         LabelWidget(label: "What are the symptoms?".tr),
        //==================================================
        GoatSymptomsCheckboxManualWidget(),
        //==================================================
        const LineWidget(),
         LabelWidget(
            label: "Did other animals show symptoms on the farm?".tr),
        GetBuilder<GoatAnimalsShowSymptomsRadioController>(
            init: GoatAnimalsShowSymptomsRadioController(),
            builder: (showSymptomsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatClinicalExaminationRadioWidget(
                      enumName: GoatAnimalsShowSymptomsRadio,
                      yesValue: GoatAnimalsShowSymptomsRadio.yes,
                      onChangedYes: (val) => showSymptomsCtrl
                          .onChange(val ?? GoatAnimalsShowSymptomsRadio.yes),
                      noValue: GoatAnimalsShowSymptomsRadio.no,
                      onChangedNo: (val) => showSymptomsCtrl
                          .onChange(val ?? GoatAnimalsShowSymptomsRadio.no),
                      groupValue: showSymptomsCtrl.charcter,
                      noAnswerValue: GoatAnimalsShowSymptomsRadio.noAnswer,
                      onChangedNoAnswer: (val) => showSymptomsCtrl.onChange(
                          val ?? GoatAnimalsShowSymptomsRadio.noAnswer)),
                  if (showSymptomsCtrl.charcter ==
                      GoatAnimalsShowSymptomsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         LabelWidget(label: "Number of Cases".tr),
                        GoatSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl.onChangeanimalSymptoms(val??"");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
         LabelWidget(
            label:
                "Are there similar disease symptoms among farm workers or in contact with infected animals?".tr),
        GetBuilder<GoatDiseaseAmongWorkersRadioController>(
            init: GoatDiseaseAmongWorkersRadioController(),
            builder: (diseaseAmongWorkers) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatClinicalExaminationRadioWidget(
                      enumName: GoatDiseaseAmongWorkersRadio,
                      yesValue: GoatDiseaseAmongWorkersRadio.yes,
                      onChangedYes: (val) => diseaseAmongWorkers
                          .onChange(val ?? GoatDiseaseAmongWorkersRadio.yes),
                      noValue: GoatDiseaseAmongWorkersRadio.no,
                      onChangedNo: (val) => diseaseAmongWorkers
                          .onChange(val ?? GoatDiseaseAmongWorkersRadio.no),
                      groupValue: diseaseAmongWorkers.charcter,
                      noAnswerValue: GoatDiseaseAmongWorkersRadio.noAnswer,
                      onChangedNoAnswer: (val) => diseaseAmongWorkers.onChange(
                          val ?? GoatDiseaseAmongWorkersRadio.noAnswer)),
                  if (diseaseAmongWorkers.charcter ==
                      GoatDiseaseAmongWorkersRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         LabelWidget(label: "Number of Cases".tr),
                        GoatSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                            clinicalTextFieldCtrl.onChangediseaseNo(val??"");
                            }),
                         LabelWidget(label: "symptoms".tr),
                        GoatSymptomsTextFieldWidget(
                            title: "symptoms".tr,
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl.onChangediseaseSymptoms(val??"");
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
         LabelWidget(label: "Who diagnoses disease states?".tr),
        const GoatDiagnosesDiseaseWidget(),
        const LineWidget(),
         LabelWidget(label: "How are sick animals treated?".tr),
        const GoatSickAnimalsTreatedWidget(),
        const LineWidget(),
         LabelWidget(
            label:
                "In the event of a disease outbreak on the farm, is the veterinary administration informed?".tr),
        GetBuilder<GoatDiseaseOutbreakRadioController>(
            init: GoatDiseaseOutbreakRadioController(),
            builder: (diseaseOutbreakCtrl) {
              return GoatClinicalExaminationRadioWidget(
                  enumName: GoatDiseaseOutbreakRadio,
                  yesValue: GoatDiseaseOutbreakRadio.yes,
                  onChangedYes: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? GoatDiseaseOutbreakRadio.yes),
                  noValue: GoatDiseaseOutbreakRadio.no,
                  onChangedNo: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? GoatDiseaseOutbreakRadio.no),
                  groupValue: diseaseOutbreakCtrl.charcter,
                  noAnswerValue: GoatDiseaseOutbreakRadio.noAnswer,
                  onChangedNoAnswer: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? GoatDiseaseOutbreakRadio.noAnswer));
            }),
      ],
    );
  }
}
