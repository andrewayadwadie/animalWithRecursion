import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_animals_show_symptoms_radio_controller.dart';
import '../../controller/cow_clinical_textfield_controller.dart';
import '../../controller/cow_disease_among_workers_radio_widget.dart';
import '../../controller/cow_disease_outbreak_radio_controller.dart';
import '../../controller/cow_health_issues_checkbox_controller.dart';
import '../../controller/cow_sick_case_radio_controller.dart';
import 'cow_clinical_examination_radio_widget.dart';
import 'cow_diagnoses_disease_widget.dart';
import 'cow_sick_animals_treated_widget.dart';
import 'cow_symptoms_checkbox_manual_widget.dart';
import 'cow_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class CowclinicalExaminationWidget extends StatelessWidget {
  CowclinicalExaminationWidget({Key? key}) : super(key: key);

  CowClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(CowClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(
            label:
                "What health problems have you noticed in the last year?".tr),
        GetBuilder<CowhealthIssuesCheckboxController>(
            init: CowhealthIssuesCheckboxController(choices: [
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
                "Are there any cases of illness in the herd at the time of the visit?"
                    .tr),
        GetBuilder<CowSickCaseRadioController>(
            init: CowSickCaseRadioController(),
            builder: (sickCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowClinicalExaminationRadioWidget(
                      enumName: CowSickCaseRadio,
                      yesValue: CowSickCaseRadio.yes,
                      onChangedYes: (val) =>
                          sickCtrl.onChange(val ?? CowSickCaseRadio.yes),
                      noValue: CowSickCaseRadio.no,
                      onChangedNo: (val) =>
                          sickCtrl.onChange(val ?? CowSickCaseRadio.no),
                      groupValue: sickCtrl.charcter,
                      noAnswerValue: CowSickCaseRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          sickCtrl.onChange(val ?? CowSickCaseRadio.noAnswer)),
                ],
              );
            }),
        const LineWidget(),
        LabelWidget(label: "What are the symptoms?".tr),
        //==================================================
        CowSymptomsCheckboxManualWidget(),
        //==================================================
        const LineWidget(),
        LabelWidget(label: "Did other animals show symptoms on the farm?".tr),
        GetBuilder<CowAnimalsShowSymptomsRadioController>(
            init: CowAnimalsShowSymptomsRadioController(),
            builder: (showSymptomsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowClinicalExaminationRadioWidget(
                      enumName: CowAnimalsShowSymptomsRadio,
                      yesValue: CowAnimalsShowSymptomsRadio.yes,
                      onChangedYes: (val) => showSymptomsCtrl
                          .onChange(val ?? CowAnimalsShowSymptomsRadio.yes),
                      noValue: CowAnimalsShowSymptomsRadio.no,
                      onChangedNo: (val) => showSymptomsCtrl
                          .onChange(val ?? CowAnimalsShowSymptomsRadio.no),
                      groupValue: showSymptomsCtrl.charcter,
                      noAnswerValue: CowAnimalsShowSymptomsRadio.noAnswer,
                      onChangedNoAnswer: (val) => showSymptomsCtrl.onChange(
                          val ?? CowAnimalsShowSymptomsRadio.noAnswer)),
                  if (showSymptomsCtrl.charcter ==
                      CowAnimalsShowSymptomsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Number of Cases".tr),
                        CowSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl
                                  .onChangeanimalSymptoms(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        LabelWidget(
            label:
                "Are there similar disease symptoms among farm workers or in contact with infected animals?"
                    .tr),
        GetBuilder<CowDiseaseAmongWorkersRadioController>(
            init: CowDiseaseAmongWorkersRadioController(),
            builder: (diseaseAmongWorkers) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowClinicalExaminationRadioWidget(
                      enumName: CowDiseaseAmongWorkersRadio,
                      yesValue: CowDiseaseAmongWorkersRadio.yes,
                      onChangedYes: (val) => diseaseAmongWorkers
                          .onChange(val ?? CowDiseaseAmongWorkersRadio.yes),
                      noValue: CowDiseaseAmongWorkersRadio.no,
                      onChangedNo: (val) => diseaseAmongWorkers
                          .onChange(val ?? CowDiseaseAmongWorkersRadio.no),
                      groupValue: diseaseAmongWorkers.charcter,
                      noAnswerValue: CowDiseaseAmongWorkersRadio.noAnswer,
                      onChangedNoAnswer: (val) => diseaseAmongWorkers.onChange(
                          val ?? CowDiseaseAmongWorkersRadio.noAnswer)),
                  if (diseaseAmongWorkers.charcter ==
                      CowDiseaseAmongWorkersRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Number of Cases".tr),
                        CowSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl
                                  .onChangediseaseNo(val ?? "");
                            }),
                        LabelWidget(label: "symptoms".tr),
                        CowSymptomsTextFieldWidget(
                            title: "symptoms".tr,
                            onNoteChange: (val) {
                              clinicalTextFieldCtrl
                                  .onChangediseaseSymptoms(val ?? "");
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        LabelWidget(label: "Who diagnoses disease states?".tr),
        const CowDiagnosesDiseaseWidget(),
        const LineWidget(),
        LabelWidget(label: "How are sick animals treated?".tr),
        const CowSickAnimalsTreatedWidget(),
        const LineWidget(),
        LabelWidget(
            label:
                "In the event of a disease outbreak on the farm, is the veterinary administration informed?"
                    .tr),
        GetBuilder<CowDiseaseOutbreakRadioController>(
            init: CowDiseaseOutbreakRadioController(),
            builder: (diseaseOutbreakCtrl) {
              return CowClinicalExaminationRadioWidget(
                  enumName: CowDiseaseOutbreakRadio,
                  yesValue: CowDiseaseOutbreakRadio.yes,
                  onChangedYes: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? CowDiseaseOutbreakRadio.yes),
                  noValue: CowDiseaseOutbreakRadio.no,
                  onChangedNo: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? CowDiseaseOutbreakRadio.no),
                  groupValue: diseaseOutbreakCtrl.charcter,
                  noAnswerValue: CowDiseaseOutbreakRadio.noAnswer,
                  onChangedNoAnswer: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? CowDiseaseOutbreakRadio.noAnswer));
            }),
      ],
    );
  }
}
