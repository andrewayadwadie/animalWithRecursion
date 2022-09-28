import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_animals_show_symptoms_radio_controller.dart';
import '../../controller/horse_clinical_textfield_controller.dart';
import '../../controller/horse_disease_among_workers_radio_widget.dart';
import '../../controller/horse_disease_outbreak_radio_controller.dart';
import '../../controller/horse_health_issues_checkbox_controller.dart';
import '../../controller/horse_sick_case_radio_controller.dart';
import 'horse_clinical_examination_radio_widget.dart';
import 'horse_diagnoses_disease_widget.dart';
import 'horse_sick_animals_treated_widget.dart';
import 'horse_symptoms_checkbox_manual_widget.dart';
import 'horse_symptoms_types_textfield_widget.dart';

// ignore: must_be_immutable
class HorseclinicalExaminationWidget extends StatelessWidget {
  HorseclinicalExaminationWidget({Key? key}) : super(key: key);
 
  HorseClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(HorseClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LabelWidget(
            label: "What health problems have you noticed in the last year?".tr),
        GetBuilder<HorsehealthIssuesCheckboxController>(
            init: HorsehealthIssuesCheckboxController(choices: [
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
        GetBuilder<HorseSickCaseRadioController>(
            init: HorseSickCaseRadioController(),
            builder: (sickCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseClinicalExaminationRadioWidget(
                      enumName: HorseSickCaseRadio,
                      yesValue: HorseSickCaseRadio.yes,
                      onChangedYes: (val) =>
                          sickCtrl.onChange(val ?? HorseSickCaseRadio.yes),
                      noValue: HorseSickCaseRadio.no,
                      onChangedNo: (val) =>
                          sickCtrl.onChange(val ?? HorseSickCaseRadio.no),
                      groupValue: sickCtrl.charcter,
                      noAnswerValue: HorseSickCaseRadio.noAnswer,
                      onChangedNoAnswer: (val) => sickCtrl
                          .onChange(val ?? HorseSickCaseRadio.noAnswer)),
                ],
              );
            }),
        const LineWidget(),
        LabelWidget(label: "What are the symptoms?".tr),
        //==================================================
        HorseSymptomsCheckboxManualWidget(),
        //==================================================
        const LineWidget(),
        LabelWidget(
            label: "Did other animals show symptoms on the farm?".tr),
        GetBuilder<HorseAnimalsShowSymptomsRadioController>(
            init: HorseAnimalsShowSymptomsRadioController(),
            builder: (showSymptomsCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseClinicalExaminationRadioWidget(
                      enumName: HorseAnimalsShowSymptomsRadio,
                      yesValue: HorseAnimalsShowSymptomsRadio.yes,
                      onChangedYes: (val) => showSymptomsCtrl
                          .onChange(val ?? HorseAnimalsShowSymptomsRadio.yes),
                      noValue: HorseAnimalsShowSymptomsRadio.no,
                      onChangedNo: (val) => showSymptomsCtrl
                          .onChange(val ?? HorseAnimalsShowSymptomsRadio.no),
                      groupValue: showSymptomsCtrl.charcter,
                      noAnswerValue: HorseAnimalsShowSymptomsRadio.noAnswer,
                      onChangedNoAnswer: (val) => showSymptomsCtrl.onChange(
                          val ?? HorseAnimalsShowSymptomsRadio.noAnswer)),
                  if (showSymptomsCtrl.charcter ==
                      HorseAnimalsShowSymptomsRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Number of Cases".tr),
                        HorseSymptomsTextFieldWidget(
                            title: "Number of Cases".tr ,
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
        GetBuilder<HorseDiseaseAmongWorkersRadioController>(
            init: HorseDiseaseAmongWorkersRadioController(),
            builder: (diseaseAmongWorkers) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseClinicalExaminationRadioWidget(
                      enumName: HorseDiseaseAmongWorkersRadio,
                      yesValue: HorseDiseaseAmongWorkersRadio.yes,
                      onChangedYes: (val) => diseaseAmongWorkers
                          .onChange(val ?? HorseDiseaseAmongWorkersRadio.yes),
                      noValue: HorseDiseaseAmongWorkersRadio.no,
                      onChangedNo: (val) => diseaseAmongWorkers
                          .onChange(val ?? HorseDiseaseAmongWorkersRadio.no),
                      groupValue: diseaseAmongWorkers.charcter,
                      noAnswerValue: HorseDiseaseAmongWorkersRadio.noAnswer,
                      onChangedNoAnswer: (val) => diseaseAmongWorkers.onChange(
                          val ?? HorseDiseaseAmongWorkersRadio.noAnswer)),
                  if (diseaseAmongWorkers.charcter ==
                      HorseDiseaseAmongWorkersRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Number of Cases".tr),
                        HorseSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                            clinicalTextFieldCtrl.onChangediseaseNo(val??"");
                            }),
                        LabelWidget(label: "symptoms".tr),
                        HorseSymptomsTextFieldWidget(
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
        const HorseDiagnosesDiseaseWidget(),
        const LineWidget(),
        LabelWidget(label: "How are sick animals treated?".tr),
        const HorseSickAnimalsTreatedWidget(),
        const LineWidget(),
        LabelWidget(
            label:
                "In the event of a disease outbreak on the farm, is the veterinary administration informed?".tr),
        GetBuilder<HorseDiseaseOutbreakRadioController>(
            init: HorseDiseaseOutbreakRadioController(),
            builder: (diseaseOutbreakCtrl) {
              return HorseClinicalExaminationRadioWidget(
                  enumName: HorseDiseaseOutbreakRadio,
                  yesValue: HorseDiseaseOutbreakRadio.yes,
                  onChangedYes: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? HorseDiseaseOutbreakRadio.yes),
                  noValue: HorseDiseaseOutbreakRadio.no,
                  onChangedNo: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? HorseDiseaseOutbreakRadio.no),
                  groupValue: diseaseOutbreakCtrl.charcter,
                  noAnswerValue: HorseDiseaseOutbreakRadio.noAnswer,
                  onChangedNoAnswer: (val) => diseaseOutbreakCtrl
                      .onChange(val ?? HorseDiseaseOutbreakRadio.noAnswer));
            }),
      ],
    );
  }
}
