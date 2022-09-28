import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/add_ainmal_date_controller.dart';
import '../../controller/add_animal_two_week_controller.dart';
import '../../controller/anatomical_symptoms_checkbox_controller.dart';
import '../../controller/anatomy_dead_cases_radio_controller.dart';
import '../../controller/disease_outbreak_textfield_controller.dart';
import '../../controller/exit_animal_date_controller.dart';
import '../../controller/exit_animal_last_week_radio_controller.dart';
import '../../controller/outbreak_animals_isolated_radio_controller.dart';
import '../../controller/outbreak_date_widget.dart';
import '../../controller/outbreak_disease_appear_radio_controller.dart';
import '../../controller/outbreak_immunization_date_controller.dart';
import '../../controller/outbreak_immunization_radio_controller.dart';
import '../../controller/similar_symptoms_region_raio_controller.dart';
import 'outbreak_raio_widget.dart';
import 'outbreak_textfield_widget.dart';

// ignore: must_be_immutable
class EpidemiologicalInformationWidget extends StatelessWidget {
  EpidemiologicalInformationWidget({Key? key}) : super(key: key);

  DiseaseOutbreakTextfieldController textFieldCtrl =
      Get.put(DiseaseOutbreakTextfieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(
          label: "The date of the first appearance of the disease".tr,
        ),
        GetBuilder<OutBreakDateController>(
            init: OutBreakDateController(),
            builder: (dateCtrl) {
              return CupertinoButton(
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: MediaQuery.of(context).size.height / 13,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "${dateCtrl.date.year} - ${dateCtrl.date.month} - ${dateCtrl.date.day} ",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: whiteColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                  onPressed: () => dateCtrl.onDateChange(context));
            }),
        LabelWidget(
            label:
                "The total number of infected cases since the first case appeared"
                    .tr),
        OutBreakextFieldWidget(
            controller: textFieldCtrl.noOfInfected,
            title: "Number of Cases".tr,
            // onNoteChange: (val) {
            //   textFieldCtrl.onChangeNoOfInfected(val ?? "");
            // },
            keyboardType: TextInputType.number),
        LabelWidget(
            label: "The number of deaths since the first case appeared".tr),
        OutBreakextFieldWidget(
            controller: textFieldCtrl.noOfDeath,
            title: "Number of Cases".tr,
            // onNoteChange: (val) {
            //   textFieldCtrl.onChangeNoOfDeath(val ?? "");
            // },
            keyboardType: TextInputType.number),
        LabelWidget(label: "Was an autopsy performed on the dead cases?".tr),
        GetBuilder<AnatomyDeadCasesController>(
            init: AnatomyDeadCasesController(),
            builder: (anatomyCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutBreakRadioWidget(
                      enumName: AnatomyDeadCases,
                      yesValue: AnatomyDeadCases.yes,
                      onChangedYes: (val) =>
                          anatomyCtrl.onChange(val ?? AnatomyDeadCases.yes),
                      noValue: AnatomyDeadCases.no,
                      onChangedNo: (val) =>
                          anatomyCtrl.onChange(val ?? AnatomyDeadCases.no),
                      groupValue: anatomyCtrl.charcter,
                      noAnswerValue: AnatomyDeadCases.noAnswer,
                      onChangedNoAnswer: (val) => anatomyCtrl
                          .onChange(val ?? AnatomyDeadCases.noAnswer)),
                  if (anatomyCtrl.charcter == AnatomyDeadCases.yes)
                    GetBuilder<AnatomicalSymptomsCheckBoxController>(
                        init: AnatomicalSymptomsCheckBoxController(choices: [
                          "nothing",
                          "bleeding",
                          "the heart",
                          "liver",
                          "lung",
                          "the kidneys",
                          "spleen",
                          "Lymph nodes",
                          "Digestive",
                        ]),
                        builder: (anatomicalCheckCtrl) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 50,
                                    right:
                                        MediaQuery.of(context).size.width / 50),
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 60,
                                    right:
                                        MediaQuery.of(context).size.width / 60),
                                height: MediaQuery.of(context).size.height / 3,
                                decoration: BoxDecoration(
                                    color: greyColor.withOpacity(0.3),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )),
                                child: ListView(
                                  children: List.generate(
                                      anatomicalCheckCtrl
                                          .choicesBoolList.length, (index) {
                                    return ListTile(
                                      title: Text(anatomicalCheckCtrl
                                          .choices[index].tr),
                                      leading: Checkbox(
                                        value: anatomicalCheckCtrl
                                            .choicesBoolList[index],
                                        onChanged: (val) => anatomicalCheckCtrl
                                            .onChange(val, index),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: greyColor.withOpacity(0.3),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          60,
                                      right: MediaQuery.of(context).size.width /
                                          60),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height / 12,
                                  child: OutBreakextFieldWidget(
                                    controller: textFieldCtrl.autopsy,
                                    title: 'other'.tr,
                                    // onNoteChange: (value) {
                                    //   textFieldCtrl
                                    //       .onChangeAutopsy(value ?? "");
                                    // },
                                    keyboardType: TextInputType.text,
                                  ))
                            ],
                          );
                        }),
                  LabelWidget(
                      label: "Are there similar symptoms in the region?".tr),
                  GetBuilder<SimilarSymptomsRegionController>(
                      init: SimilarSymptomsRegionController(),
                      builder: (similarCtrl) {
                        return OutBreakRadioWidget(
                            enumName: SimilarSymptomsRegion,
                            yesValue: SimilarSymptomsRegion.yes,
                            onChangedYes: (val) => similarCtrl
                                .onChange(val ?? SimilarSymptomsRegion.yes),
                            noValue: SimilarSymptomsRegion.no,
                            onChangedNo: (val) => similarCtrl
                                .onChange(val ?? SimilarSymptomsRegion.no),
                            groupValue: similarCtrl.charcter,
                            noAnswerValue: SimilarSymptomsRegion.noAnswer,
                            onChangedNoAnswer: (val) => similarCtrl.onChange(
                                val ?? SimilarSymptomsRegion.noAnswer));
                      }),
                  LabelWidget(
                      label: "Were the animals added during the last two weeks?"
                          .tr),
                  GetBuilder<AddAnimalTwoWeekController>(
                      init: AddAnimalTwoWeekController(),
                      builder: (addTwoWeekCtrl) {
                        return Column(
                          children: [
                            OutBreakRadioWidget(
                                enumName: AddAnimalTwoWeek,
                                yesValue: AddAnimalTwoWeek.yes,
                                onChangedYes: (val) => addTwoWeekCtrl
                                    .onChange(val ?? AddAnimalTwoWeek.yes),
                                noValue: AddAnimalTwoWeek.no,
                                onChangedNo: (val) => addTwoWeekCtrl
                                    .onChange(val ?? AddAnimalTwoWeek.no),
                                groupValue: addTwoWeekCtrl.charcter,
                                noAnswerValue: AddAnimalTwoWeek.noAnswer,
                                onChangedNoAnswer: (val) =>
                                    addTwoWeekCtrl.onChange(
                                        val ?? AddAnimalTwoWeek.noAnswer)),
                            if (addTwoWeekCtrl.charcter == AddAnimalTwoWeek.yes)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LabelWidget(label: "Added date".tr),
                                  GetBuilder<AddAnimalDateController>(
                                      init: AddAnimalDateController(),
                                      builder: (addAnimaldateCtrl) {
                                        return CupertinoButton(
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                alignment: Alignment.center,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    13,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Text(
                                                  "${addAnimaldateCtrl.date.year} - ${addAnimaldateCtrl.date.month} - ${addAnimaldateCtrl.date.day} ",
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            onPressed: () => addAnimaldateCtrl
                                                .onDateChange(context));
                                      }),
                                  LabelWidget(label: "animal source".tr),
                                  OutBreakextFieldWidget(
                                      controller: textFieldCtrl.animalSource,
                                      title: "animal source".tr,
                                      // onNoteChange: (val) {
                                      //   textFieldCtrl
                                      //       .onChangeAnimalSource(val ?? "");
                                      // },
                                      keyboardType: TextInputType.text),
                                  LabelWidget(label: "number of animals".tr),
                                  OutBreakextFieldWidget(
                                      controller: textFieldCtrl.noOfAnimal,
                                      title: "number of animals".tr,
                                      // onNoteChange: (val) {
                                      //   textFieldCtrl
                                      //       .onChangeNumberOfAnimals(val ?? "");
                                      // },
                                      keyboardType: TextInputType.number),
                                  LabelWidget(
                                      label: "Were the animals isolated?".tr),
                                  GetBuilder<OutBreakAnimalIsolatedController>(
                                      init: OutBreakAnimalIsolatedController(),
                                      builder: (isoCtrl) {
                                        return OutBreakRadioWidget(
                                            enumName: OutBreakAnimalIsolated,
                                            yesValue:
                                                OutBreakAnimalIsolated.yes,
                                            onChangedYes: (val) =>
                                                isoCtrl.onChange(val ??
                                                    OutBreakAnimalIsolated.yes),
                                            noValue: OutBreakAnimalIsolated.no,
                                            onChangedNo: (val) =>
                                                isoCtrl.onChange(val ??
                                                    OutBreakAnimalIsolated.no),
                                            groupValue: isoCtrl.charcter,
                                            noAnswerValue:
                                                OutBreakAnimalIsolated.noAnswer,
                                            onChangedNoAnswer: (val) =>
                                                isoCtrl.onChange(val ??
                                                    OutBreakAnimalIsolated
                                                        .noAnswer));
                                      }),
                                  LabelWidget(
                                      label:
                                          "Did the symptoms of the disease appear on the animals during or after the quarantine?"
                                              .tr),
                                  GetBuilder<OutBreakDiseaseAppearController>(
                                      init: OutBreakDiseaseAppearController(),
                                      builder: (appearCtrl) {
                                        return OutBreakRadioWidget(
                                            enumName: OutBreakDiseaseAppear,
                                            yesValue: OutBreakDiseaseAppear.yes,
                                            onChangedYes: (val) =>
                                                appearCtrl.onChange(val ??
                                                    OutBreakDiseaseAppear.yes),
                                            noValue: OutBreakDiseaseAppear.no,
                                            onChangedNo: (val) =>
                                                appearCtrl.onChange(val ??
                                                    OutBreakDiseaseAppear.no),
                                            groupValue: appearCtrl.charcter,
                                            noAnswerValue:
                                                OutBreakDiseaseAppear.noAnswer,
                                            onChangedNoAnswer: (val) =>
                                                appearCtrl.onChange(val ??
                                                    OutBreakDiseaseAppear
                                                        .noAnswer));
                                      }),
                                ],
                              ),
                          ],
                        );
                      }),
                ],
              );
            }),
        LabelWidget(
            label:
                "Were the animals out of the farm in the last two weeks?".tr),
        GetBuilder<ExitAnimalLastWeekController>(
            init: ExitAnimalLastWeekController(),
            builder: (exitRadioCtrl) {
              return Column(
                children: [
                  OutBreakRadioWidget(
                      enumName: ExitAnimalLastWeek,
                      yesValue: ExitAnimalLastWeek.yes,
                      onChangedYes: (val) =>
                          exitRadioCtrl.onChange(val ?? ExitAnimalLastWeek.yes),
                      noValue: ExitAnimalLastWeek.no,
                      onChangedNo: (val) =>
                          exitRadioCtrl.onChange(val ?? ExitAnimalLastWeek.no),
                      groupValue: exitRadioCtrl.charcter,
                      noAnswerValue: ExitAnimalLastWeek.noAnswer,
                      onChangedNoAnswer: (val) => exitRadioCtrl
                          .onChange(val ?? ExitAnimalLastWeek.noAnswer)),
                  if (exitRadioCtrl.charcter == ExitAnimalLastWeek.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Exit date".tr),
                        GetBuilder<ExitAnimalDateController>(
                            init: ExitAnimalDateController(),
                            builder: (exitDateCtrl) {
                              return CupertinoButton(
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              13,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "${exitDateCtrl.date.year} - ${exitDateCtrl.date.month} - ${exitDateCtrl.date.day} ",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  onPressed: () =>
                                      exitDateCtrl.onDateChange(context));
                            }),
                        LabelWidget(label: "number of animals".tr),
                        OutBreakextFieldWidget(
                            controller: textFieldCtrl.noOfAnimalTwoWeek,
                            title: "number of animals".tr,
                            // onNoteChange: (val) {
                            //   textFieldCtrl
                            //       .onChangeNumberOfAnimalsTwoWeek(val ?? "");
                            // },
                            keyboardType: TextInputType.number),
                        LabelWidget(label: "exit purpose".tr),
                        OutBreakextFieldWidget(
                            controller: textFieldCtrl.exitPurpose,
                            title: "exit purpose".tr,
                            // onNoteChange: (val) {
                            //   textFieldCtrl.onChangeExitPurpose(val ?? "");
                            // },
                            keyboardType: TextInputType.text),
                        LabelWidget(label: "Exit address".tr),
                        OutBreakextFieldWidget(
                            controller: textFieldCtrl.exitAddress,
                            title: "Exit address".tr,
                            // onNoteChange: (val) {
                            //   textFieldCtrl.onChangeExitAddress(val ?? "");
                            // },
                            keyboardType: TextInputType.text),
                      ],
                    ),
                ],
              );
            }),
        LabelWidget(
            label:
                "Have the animals been immunized against the suspected disease in the last 12 months?"
                    .tr),
        GetBuilder<OutBreakImmunizationController>(
            init: OutBreakImmunizationController(),
            builder: (outBreakImmunizationCtl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutBreakRadioWidget(
                      enumName: OutBreakImmunization,
                      yesValue: OutBreakImmunization.yes,
                      onChangedYes: (val) => outBreakImmunizationCtl
                          .onChange(val ?? OutBreakImmunization.yes),
                      noValue: OutBreakImmunization.no,
                      onChangedNo: (val) => outBreakImmunizationCtl
                          .onChange(val ?? OutBreakImmunization.no),
                      groupValue: outBreakImmunizationCtl.charcter,
                      noAnswerValue: OutBreakImmunization.noAnswer,
                      onChangedNoAnswer: (val) => outBreakImmunizationCtl
                          .onChange(val ?? OutBreakImmunization.noAnswer)),
                  if (outBreakImmunizationCtl.charcter ==
                      OutBreakImmunization.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "number of doses".tr),
                        OutBreakextFieldWidget(
                            controller: textFieldCtrl.numberOfDoses,
                            title: "number of doses".tr,
                            // onNoteChange: (val) {
                            //   textFieldCtrl.onChangeNumberOfDoses(val ?? "");
                            // },
                            keyboardType: TextInputType.number),
                        LabelWidget(label: "Dosing Date".tr),
                        GetBuilder<OutBreakImmunizationDateController>(
                            init: OutBreakImmunizationDateController(),
                            builder: (immunization) {
                              return CupertinoButton(
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              13,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "${immunization.date.year} - ${immunization.date.month} - ${immunization.date.day} ",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  onPressed: () =>
                                      immunization.onDateChange(context));
                            }),
                      ],
                    ),
                ],
              );
            }),
      ],
    );
  }
}
