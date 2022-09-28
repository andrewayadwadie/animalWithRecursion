import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../controller/goat_artificial_radio_controller.dart';
import '../../controller/goat_difficulty_pregnancy_radio_controller.dart';
import '../../controller/goat_obstructed_labor_radio_controller.dart';
import '../../controller/goat_reproduction_radio_controller.dart';
import '../../controller/goat_reproduction_textfeild_controller.dart';
import '../../controller/goat_semen_source_controller.dart';
import '../../controller/goat_unsatisfactory_abortion_radio_controller.dart';
import 'goat_breed_type_widget.dart';
import 'goat_difficult_childbirth_widget.dart';
import 'goat_fertilization_method_widget.dart';
import 'goat_reproduction_radio_widget.dart';
import 'goat_reproduction_textfield_widget.dart';
import 'goat_reproduction_way_widget.dart';
import 'goat_semen_souce_radio_widget.dart';

// ignore: must_be_immutable
class GoatReproductionWidget extends StatelessWidget {
  GoatReproductionWidget({Key? key}) : super(key: key);
  GoatReproductionTextFieldController reproductionTextFieldCtrl =
      Get.put(GoatReproductionTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendGoatHerdDataController>(
        init: SendGoatHerdDataController(),
        builder: (sendDataCtrl) {
          return ListView(
            children: [
              //? push in api object with id 94 if yes and 95 No
              LabelWidget(label: "Is pregnancy diagnosed in the herd?".tr),
              GetBuilder<GoatReproductionRadioController>(
                  init: GoatReproductionRadioController(),
                  builder: (reproCtrl) {
                    return Column(
                      children: [
                        GoatReproductionRadioWidget(
                          enumName: GoatReproductionRadio,
                          yesValue: GoatReproductionRadio.yes,
                          onChangedYes: (val) => reproCtrl
                              .onChange(val ?? GoatReproductionRadio.yes),
                          noValue: GoatReproductionRadio.no,
                          onChangedNo: (val) => reproCtrl
                              .onChange(val ?? GoatReproductionRadio.no),
                          groupValue: reproCtrl.charcter,
                          noAnswerValue: GoatReproductionRadio.noAnswer,
                          onChangedNoAnswer: (val) => reproCtrl
                              .onChange(val ?? GoatReproductionRadio.noAnswer),
                        ),
                        if (reproCtrl.charcter == GoatReproductionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "Is pregnancy diagnosed in the herd?".tr),
                              const GoatReproductionWayWidget(),
                            ],
                          )
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              LabelWidget(label: "Is there artificial insemination?".tr),
              GetBuilder<GoatArtificialRadioController>(
                  init: GoatArtificialRadioController(),
                  builder: (artCtrl) {
                    return Column(
                      children: [
                        //? push in api object with id 101 if yes and 102 No
                        GoatReproductionRadioWidget(
                          enumName: GoatArtificialRadio,
                          yesValue: GoatArtificialRadio.yes,
                          onChangedYes: (val) =>
                              artCtrl.onChange(val ?? GoatArtificialRadio.yes),
                          noValue: GoatArtificialRadio.no,
                          onChangedNo: (val) =>
                              artCtrl.onChange(val ?? GoatArtificialRadio.no),
                          groupValue: artCtrl.charcter,
                          noAnswerValue: GoatArtificialRadio.noAnswer,
                          onChangedNoAnswer: (val) => artCtrl
                              .onChange(val ?? GoatArtificialRadio.noAnswer),
                        ),
                        if (artCtrl.charcter == GoatArtificialRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "What type of breed?".tr),
                              const GoatBreedTypeWidget(),
                              //? push in api object with id 107 if yes and 108 No
                              LabelWidget(
                                  label: "What is the source of semen?".tr),
                              GetBuilder<GoatSemenSourceRadioController>(
                                  init: GoatSemenSourceRadioController(),
                                  builder: (semenCtrl) {
                                    return Column(
                                      children: [
                                        GoatSemenSourceRadioWidget(
                                          enumName: GoatSemenSourceRadio,
                                          yesValue: GoatSemenSourceRadio.local,
                                          onChangedYes: (val) =>
                                              semenCtrl.onChange(val ??
                                                  GoatSemenSourceRadio.local),
                                          noValue:
                                              GoatSemenSourceRadio.importation,
                                          onChangedNo: (val) =>
                                              semenCtrl.onChange(val ??
                                                  GoatSemenSourceRadio
                                                      .importation),
                                          groupValue: semenCtrl.charcter,
                                          noAnswerValue:
                                              GoatSemenSourceRadio.noAnswer,
                                          onChangedNoAnswer: (val) =>
                                              semenCtrl.onChange(val ??
                                                  GoatSemenSourceRadio
                                                      .noAnswer),
                                        ),
                                        if (semenCtrl.charcter ==
                                            GoatSemenSourceRadio.importation)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              LabelWidget(
                                                  label:
                                                      "What is the importing country?"
                                                          .tr),
                                              GoatReproductionTextFieldWidget(
                                                  title:
                                                      "What is the importing country?"
                                                          .tr,
                                                  onNoteChange: (val) {
                                                    reproductionTextFieldCtrl
                                                        .onChangeImportingCounrty(
                                                            val ?? "");
                                                  })
                                            ],
                                          )
                                      ],
                                    );
                                  }),
                                LabelWidget(
                                  label: "Who does artificial insemination?".tr),
                              const GoatFertilizationMethodWidget()
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //? push in api object with id 113 if yes and 114 No
              LabelWidget(label: "Are there cases of difficulty pregnancy?".tr),
              GetBuilder<GoatDifficultyPregnancyRadioController>(
                  init: GoatDifficultyPregnancyRadioController(),
                  builder: (diffCtrl) {
                    return Column(
                      children: [
                        GoatReproductionRadioWidget(
                          enumName: GoatDifficultyPregnancyRadio,
                          yesValue: GoatDifficultyPregnancyRadio.yes,
                          onChangedYes: (val) => diffCtrl.onChange(
                              val ?? GoatDifficultyPregnancyRadio.yes),
                          noValue: GoatDifficultyPregnancyRadio.no,
                          onChangedNo: (val) => diffCtrl
                              .onChange(val ?? GoatDifficultyPregnancyRadio.no),
                          groupValue: diffCtrl.charcter,
                          noAnswerValue: GoatDifficultyPregnancyRadio.noAnswer,
                          onChangedNoAnswer: (val) => diffCtrl.onChange(
                              val ?? GoatDifficultyPregnancyRadio.noAnswer),
                        ),
                        if (diffCtrl.charcter ==
                            GoatDifficultyPregnancyRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of difficulty pregnancy?"
                                          .tr),
                              GoatReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl
                                        .onChangeCaseNoDifficulty(val ?? "");
                                  })
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //!--------------------------------------------------------------
              //? push in api object with id 116 if yes and 117 No
              LabelWidget(
                  label: "Are there cases of unsatisfactory abortion".tr),
              GetBuilder<GoatUnsatisfactoryAbortionRadioController>(
                  init: GoatUnsatisfactoryAbortionRadioController(),
                  builder: (abortionCtrl) {
                    return Column(
                      children: [
                        GoatReproductionRadioWidget(
                          enumName: GoatUnsatisfactoryAbortionRadio,
                          yesValue: GoatUnsatisfactoryAbortionRadio.yes,
                          onChangedYes: (val) => abortionCtrl.onChange(
                              val ?? GoatUnsatisfactoryAbortionRadio.yes),
                          noValue: GoatUnsatisfactoryAbortionRadio.no,
                          onChangedNo: (val) => abortionCtrl.onChange(
                              val ?? GoatUnsatisfactoryAbortionRadio.no),
                          groupValue: abortionCtrl.charcter,
                          noAnswerValue:
                              GoatUnsatisfactoryAbortionRadio.noAnswer,
                          onChangedNoAnswer: (val) => abortionCtrl.onChange(
                              val ?? GoatUnsatisfactoryAbortionRadio.noAnswer),
                        ),
                        if (abortionCtrl.charcter ==
                            GoatUnsatisfactoryAbortionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of unsatisfactory abortion?"
                                          .tr),
                              GoatReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl
                                        .onChangeCaseNoAboration(val ?? "");
                                  })
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //!--------------------------------------------------------------
              //? push in api object with id 119 if yes and 120 No
              LabelWidget(label: "Are there cases of obstructed labor?".tr),
              GetBuilder<GoatobstructedLaborRadioController>(
                  init: GoatobstructedLaborRadioController(),
                  builder: (obstructedCtrl) {
                    return Column(
                      children: [
                        GoatReproductionRadioWidget(
                          enumName: GoatobstructedLaborRadio,
                          yesValue: GoatobstructedLaborRadio.yes,
                          onChangedYes: (val) => obstructedCtrl
                              .onChange(val ?? GoatobstructedLaborRadio.yes),
                          noValue: GoatobstructedLaborRadio.no,
                          onChangedNo: (val) => obstructedCtrl
                              .onChange(val ?? GoatobstructedLaborRadio.no),
                          groupValue: obstructedCtrl.charcter,
                          noAnswerValue: GoatobstructedLaborRadio.noAnswer,
                          onChangedNoAnswer: (val) => obstructedCtrl.onChange(
                              val ?? GoatobstructedLaborRadio.noAnswer),
                        ),
                        if (obstructedCtrl.charcter ==
                            GoatobstructedLaborRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "what is number of cases of obstructed labor?"
                                          .tr),
                              GoatReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl
                                        .onChangeCaseNoLabor(val ?? "");
                                  }),
                              LabelWidget(
                                  label:
                                      "In the case of difficult childbirth, who is giving birth?"
                                          .tr),
                              const GoatDifficultChildbirthWidget()
                            ],
                          ),
                      ],
                    );
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
            ],
          );
        });
  }
}
