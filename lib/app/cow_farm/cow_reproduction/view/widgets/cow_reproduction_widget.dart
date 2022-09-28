import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../controller/cow_artificial_radio_controller.dart';
import '../../controller/cow_difficulty_pregnancy_radio_controller.dart';
import '../../controller/cow_obstructed_labor_radio_controller.dart';
import '../../controller/cow_reproduction_radio_controller.dart';
import '../../controller/cow_reproduction_textfeild_controller.dart';
import '../../controller/cow_semen_source_controller.dart';
import '../../controller/cow_unsatisfactory_abortion_radio_controller.dart';
import 'cow_breed_type_widget.dart';
import 'cow_difficult_childbirth_widget.dart';
import 'cow_fertilization_method_widget.dart';
import 'cow_reproduction_radio_widget.dart';
import 'cow_reproduction_textfield_widget.dart';
import 'cow_reproduction_way_widget.dart';
import 'cow_semen_souce_radio_widget.dart';

// ignore: must_be_immutable
class CowReproductionWidget extends StatelessWidget {
  CowReproductionWidget({Key? key}) : super(key: key);
  CowReproductionTextFieldController reproductionTextFieldCtrl =
      Get.put(CowReproductionTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCowHerdDataController>(
        init: SendCowHerdDataController(),
        builder: (sendDataCtrl) {
          return ListView(
            children: [
              //? push in api object with id 94 if yes and 95 No
              LabelWidget(label: "Is pregnancy diagnosed in the herd?".tr),
              GetBuilder<CowReproductionRadioController>(
                  init: CowReproductionRadioController(),
                  builder: (reproCtrl) {
                    return Column(
                      children: [
                        CowReproductionRadioWidget(
                          enumName: CowReproductionRadio,
                          yesValue: CowReproductionRadio.yes,
                          onChangedYes: (val) => reproCtrl
                              .onChange(val ?? CowReproductionRadio.yes),
                          noValue: CowReproductionRadio.no,
                          onChangedNo: (val) => reproCtrl
                              .onChange(val ?? CowReproductionRadio.no),
                          groupValue: reproCtrl.charcter,
                          noAnswerValue: CowReproductionRadio.noAnswer,
                          onChangedNoAnswer: (val) => reproCtrl
                              .onChange(val ?? CowReproductionRadio.noAnswer),
                        ),
                        if (reproCtrl.charcter == CowReproductionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label: "What is the diagnostic method?".tr),
                              const CowReproductionWayWidget(),
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
              GetBuilder<CowArtificialRadioController>(
                  init: CowArtificialRadioController(),
                  builder: (artCtrl) {
                    return Column(
                      children: [
                        //? push in api object with id 101 if yes and 102 No
                        CowReproductionRadioWidget(
                          enumName: CowArtificialRadio,
                          yesValue: CowArtificialRadio.yes,
                          onChangedYes: (val) =>
                              artCtrl.onChange(val ?? CowArtificialRadio.yes),
                          noValue: CowArtificialRadio.no,
                          onChangedNo: (val) =>
                              artCtrl.onChange(val ?? CowArtificialRadio.no),
                          groupValue: artCtrl.charcter,
                          noAnswerValue: CowArtificialRadio.noAnswer,
                          onChangedNoAnswer: (val) => artCtrl
                              .onChange(val ?? CowArtificialRadio.noAnswer),
                        ),
                        if (artCtrl.charcter == CowArtificialRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: 'What type of breed?'.tr),
                              const CowBreedTypeWidget(),
                              //? push in api object with id 107 if yes and 108 No
                              LabelWidget(
                                  label: "What is the source of semen?".tr),
                              GetBuilder<CowSemenSourceRadioController>(
                                  init: CowSemenSourceRadioController(),
                                  builder: (semenCtrl) {
                                    return Column(
                                      children: [
                                        CowSemenSourceRadioWidget(
                                          enumName: CowSemenSourceRadio,
                                          yesValue: CowSemenSourceRadio.local,
                                          onChangedYes: (val) =>
                                              semenCtrl.onChange(val ??
                                                  CowSemenSourceRadio.local),
                                          noValue:
                                              CowSemenSourceRadio.importation,
                                          onChangedNo: (val) =>
                                              semenCtrl.onChange(val ??
                                                  CowSemenSourceRadio
                                                      .importation),
                                          groupValue: semenCtrl.charcter,
                                          noAnswerValue:
                                              CowSemenSourceRadio.noAnswer,
                                          onChangedNoAnswer: (val) =>
                                              semenCtrl.onChange(val ??
                                                  CowSemenSourceRadio.noAnswer),
                                        ),
                                        if (semenCtrl.charcter ==
                                            CowSemenSourceRadio.importation)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              LabelWidget(
                                                  label:
                                                      "What is the importing country?"
                                                          .tr),
                                              CowReproductionTextFieldWidget(
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
                                  label:
                                      'Who does artificial insemination?'.tr),
                              const CowFertilizationMethodWidget()
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
              GetBuilder<CowDifficultyPregnancyRadioController>(
                  init: CowDifficultyPregnancyRadioController(),
                  builder: (diffCtrl) {
                    return Column(
                      children: [
                        CowReproductionRadioWidget(
                          enumName: CowDifficultyPregnancyRadio,
                          yesValue: CowDifficultyPregnancyRadio.yes,
                          onChangedYes: (val) => diffCtrl
                              .onChange(val ?? CowDifficultyPregnancyRadio.yes),
                          noValue: CowDifficultyPregnancyRadio.no,
                          onChangedNo: (val) => diffCtrl
                              .onChange(val ?? CowDifficultyPregnancyRadio.no),
                          groupValue: diffCtrl.charcter,
                          noAnswerValue: CowDifficultyPregnancyRadio.noAnswer,
                          onChangedNoAnswer: (val) => diffCtrl.onChange(
                              val ?? CowDifficultyPregnancyRadio.noAnswer),
                        ),
                        if (diffCtrl.charcter ==
                            CowDifficultyPregnancyRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of difficulty pregnancy?"
                                          .tr),
                              CowReproductionTextFieldWidget(
                                  title:
                                      "What is the number of cases of difficulty pregnancy?"
                                          .tr,
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
              GetBuilder<CowUnsatisfactoryAbortionRadioController>(
                  init: CowUnsatisfactoryAbortionRadioController(),
                  builder: (abortionCtrl) {
                    return Column(
                      children: [
                        CowReproductionRadioWidget(
                          enumName: CowUnsatisfactoryAbortionRadio,
                          yesValue: CowUnsatisfactoryAbortionRadio.yes,
                          onChangedYes: (val) => abortionCtrl.onChange(
                              val ?? CowUnsatisfactoryAbortionRadio.yes),
                          noValue: CowUnsatisfactoryAbortionRadio.no,
                          onChangedNo: (val) => abortionCtrl.onChange(
                              val ?? CowUnsatisfactoryAbortionRadio.no),
                          groupValue: abortionCtrl.charcter,
                          noAnswerValue:
                              CowUnsatisfactoryAbortionRadio.noAnswer,
                          onChangedNoAnswer: (val) => abortionCtrl.onChange(
                              val ?? CowUnsatisfactoryAbortionRadio.noAnswer),
                        ),
                        if (abortionCtrl.charcter ==
                            CowUnsatisfactoryAbortionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of unsatisfactory abortion?"
                                          .tr),
                              CowReproductionTextFieldWidget(
                                  title:
                                      "What is the number of cases of unsatisfactory abortion?"
                                          .tr,
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
              GetBuilder<CowobstructedLaborRadioController>(
                  init: CowobstructedLaborRadioController(),
                  builder: (obstructedCtrl) {
                    return Column(
                      children: [
                        CowReproductionRadioWidget(
                          enumName: CowobstructedLaborRadio,
                          yesValue: CowobstructedLaborRadio.yes,
                          onChangedYes: (val) => obstructedCtrl
                              .onChange(val ?? CowobstructedLaborRadio.yes),
                          noValue: CowobstructedLaborRadio.no,
                          onChangedNo: (val) => obstructedCtrl
                              .onChange(val ?? CowobstructedLaborRadio.no),
                          groupValue: obstructedCtrl.charcter,
                          noAnswerValue: CowobstructedLaborRadio.noAnswer,
                          onChangedNoAnswer: (val) => obstructedCtrl.onChange(
                              val ?? CowobstructedLaborRadio.noAnswer),
                        ),
                        if (obstructedCtrl.charcter ==
                            CowobstructedLaborRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "what is number of cases of obstructed labor?"
                                          .tr),
                              CowReproductionTextFieldWidget(
                                  title:
                                      "what is number of cases of obstructed labor?"
                                          .tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl
                                        .onChangeCaseNoLabor(val ?? "");
                                  }),
                              LabelWidget(
                                  label:
                                      "In the case of difficult childbirth, who is giving birth?"
                                          .tr),
                              const CowDifficultChildbirthWidget()
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
