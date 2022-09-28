 
 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_animals_show_symptoms_radio_controller.dart';
import '../../controller/sheep_clinical_textfield_controller.dart';
import '../../controller/sheep_disease_among_workers_radio_widget.dart';
import '../../controller/sheep_disease_outbreak_radio_controller.dart';
import '../../controller/sheep_health_issues_checkbox_controller.dart';
import '../../controller/sheep_sick_case_radio_controller.dart';
import 'sheep_clinical_examination_radio_widget.dart';
import 'sheep_diagnoses_disease_widget.dart';
import 'sheep_sick_animals_treated_widget.dart';
import 'sheep_symptoms_checkbox_manual_widget.dart';
import 'sheep_symptoms_types_textfield_widget.dart';
 
// ignore: must_be_immutable
class SheepclinicalExaminationWidget extends StatelessWidget {
  SheepclinicalExaminationWidget({Key? key}) : super(key: key);
 
  SheepClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(SheepClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [LabelWidget(
            label: "What health problems have you noticed in the last year?".tr),
        GetBuilder<SheephealthIssuesCheckboxController>(
            init: SheephealthIssuesCheckboxController(choices: [
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
        GetBuilder<SheepSickCaseRadioController>(
            init: SheepSickCaseRadioController(),
            builder: (sickCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepClinicalExaminationRadioWidget(
                      enumName: SheepSickCaseRadio,
                      yesValue: SheepSickCaseRadio.yes,
                      onChangedYes: (val) =>
                          sickCtrl.onChange(val ?? SheepSickCaseRadio.yes),
                      noValue: SheepSickCaseRadio.no,
                      onChangedNo: (val) =>
                          sickCtrl.onChange(val ?? SheepSickCaseRadio.no),
                      groupValue: sickCtrl.charcter,
                      noAnswerValue: SheepSickCaseRadio.noAnswer,
                      onChangedNoAnswer: (val) => sickCtrl
                          .onChange(val ?? SheepSickCaseRadio.noAnswer)),
                ],
              );
            }),
        const LineWidget(),
        LabelWidget(label: "What are the symptoms?".tr),
        //==================================================
        SheepSymptomsCheckboxManualWidget(),
        //==================================================
        const LineWidget(),
        LabelWidget(
            label: "Did other animals show symptoms on the farm?".tr),
        GetBuilder<SheepAnimalsShowSymptomsRadioController>(
            init: SheepAnimalsShowSymptomsRadioController(),
            builder: (showSymptomsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepClinicalExaminationRadioWidget(
                      enumName: SheepAnimalsShowSymptomsRadio,
                      yesValue: SheepAnimalsShowSymptomsRadio.yes,
                      onChangedYes: (val) => showSymptomsCtrl
                          .onChange(val ?? SheepAnimalsShowSymptomsRadio.yes),
                      noValue: SheepAnimalsShowSymptomsRadio.no,
                      onChangedNo: (val) => showSymptomsCtrl
                          .onChange(val ?? SheepAnimalsShowSymptomsRadio.no),
                      groupValue: showSymptomsCtrl.charcter,
                      noAnswerValue: SheepAnimalsShowSymptomsRadio.noAnswer,
                      onChangedNoAnswer: (val) => showSymptomsCtrl.onChange(
                          val ?? SheepAnimalsShowSymptomsRadio.noAnswer)),
                  if (showSymptomsCtrl.charcter ==
                      SheepAnimalsShowSymptomsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "Number of Cases".tr),
                        SheepSymptomsTextFieldWidget(
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
        GetBuilder<SheepDiseaseAmongWorkersRadioController>(
            init: SheepDiseaseAmongWorkersRadioController(),
            builder: (diseaseAmongWorkers) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepClinicalExaminationRadioWidget(
                      enumName: SheepDiseaseAmongWorkersRadio,
                      yesValue: SheepDiseaseAmongWorkersRadio.yes,
                      onChangedYes: (val) => diseaseAmongWorkers
                          .onChange(val ?? SheepDiseaseAmongWorkersRadio.yes),
                      noValue: SheepDiseaseAmongWorkersRadio.no,
                      onChangedNo: (val) => diseaseAmongWorkers
                          .onChange(val ?? SheepDiseaseAmongWorkersRadio.no),
                      groupValue: diseaseAmongWorkers.charcter,
                      noAnswerValue: SheepDiseaseAmongWorkersRadio.noAnswer,
                      onChangedNoAnswer: (val) => diseaseAmongWorkers.onChange(
                          val ?? SheepDiseaseAmongWorkersRadio.noAnswer)),
                  if (diseaseAmongWorkers.charcter ==
                      SheepDiseaseAmongWorkersRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "Number of Cases".tr),
                        SheepSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                            clinicalTextFieldCtrl.onChangediseaseNo(val??"");
                            }),
                          LabelWidget(label: "symptoms".tr),
                        SheepSymptomsTextFieldWidget(
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
        const SheepDiagnosesDiseaseWidget(),
        const LineWidget(),
          LabelWidget(label: "How are sick animals treated?".tr),
        const SheepSickAnimalsTreatedWidget(),
        const LineWidget(),
          LabelWidget(
            label:
                "In the event of a disease outbreak on the farm, is the veterinary administration informed?".tr),
        GetBuilder<SheepDiseaseOutbreakRadioController>(
            init: SheepDiseaseOutbreakRadioController(),
            builder: (diseaseOutbreakCtrl) {
              return SheepClinicalExaminationRadioWidget(
                  enumName: SheepDiseaseOutbreakRadio,
                  yesValue: SheepDiseaseOutbreakRadio.yes,
                  onChangedYes: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? SheepDiseaseOutbreakRadio.yes),
                  noValue: SheepDiseaseOutbreakRadio.no,
                  onChangedNo: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? SheepDiseaseOutbreakRadio.no),
                  groupValue: diseaseOutbreakCtrl.charcter,
                  noAnswerValue: SheepDiseaseOutbreakRadio.noAnswer,
                  onChangedNoAnswer: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? SheepDiseaseOutbreakRadio.noAnswer));
            }),
      ],
    );
  }
}
