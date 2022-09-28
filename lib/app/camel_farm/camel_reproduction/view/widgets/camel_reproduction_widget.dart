import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../controller/camel_artificial_radio_controller.dart';
import '../../controller/camel_difficulty_pregnancy_radio_controller.dart';
import '../../controller/camel_obstructed_labor_radio_controller.dart';
import '../../controller/camel_reproduction_radio_controller.dart';
import '../../controller/camel_reproduction_textfeild_controller.dart';
import '../../controller/camel_semen_source_controller.dart';
import '../../controller/camel_unsatisfactory_abortion_radio_controller.dart';
import 'camel_breed_type_widget.dart';
import 'camel_difficult_childbirth_widget.dart';
import 'camel_fertilization_method_widget.dart';
import 'camel_reproduction_radio_widget.dart';
import 'camel_reproduction_textfield_widget.dart';
import 'camel_reproduction_way_widget.dart';
import 'camel_semen_souce_radio_widget.dart';

// ignore: must_be_immutable
class CamelReproductionWidget extends StatelessWidget {
  CamelReproductionWidget({Key? key}) : super(key: key);
  CamelReproductionTextFieldController reproductionTextFieldCtrl =
      Get.put(CamelReproductionTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCamelHerdDataController>(
        init: SendCamelHerdDataController(),
        builder: (sendDataCtrl) {
          return ListView(
            children: [
              //? push in api object with id 94 if yes and 95 No
              LabelWidget(label: "Is pregnancy diagnosed in the herd?".tr),
              GetBuilder<CamelReproductionRadioController>(
                  init: CamelReproductionRadioController(),
                  builder: (reproCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                          enumName: CamelReproductionRadio,
                          yesValue: CamelReproductionRadio.yes,
                          onChangedYes: (val) => reproCtrl
                              .onChange(val ?? CamelReproductionRadio.yes),
                          noValue: CamelReproductionRadio.no,
                          onChangedNo: (val) => reproCtrl
                              .onChange(val ?? CamelReproductionRadio.no),
                          groupValue: reproCtrl.charcter,
                          noAnswerValue: CamelReproductionRadio.noAnswer,
                          onChangedNoAnswer: (val) => reproCtrl
                              .onChange(val ?? CamelReproductionRadio.noAnswer),
                        ),
                        if (reproCtrl.charcter == CamelReproductionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label: "What is the diagnostic method?".tr),
                              const CamelReproductionWayWidget(),
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
              GetBuilder<CamelArtificialRadioController>(
                  init: CamelArtificialRadioController(),
                  builder: (artCtrl) {
                    return Column(
                      children: [
                        //? push in api object with id 101 if yes and 102 No
                        CamelReproductionRadioWidget(
                          enumName: CamelArtificialRadio,
                          yesValue: CamelArtificialRadio.yes,
                          onChangedYes: (val) =>
                              artCtrl.onChange(val ?? CamelArtificialRadio.yes),
                          noValue: CamelArtificialRadio.no,
                          onChangedNo: (val) =>
                              artCtrl.onChange(val ?? CamelArtificialRadio.no),
                          groupValue: artCtrl.charcter,
                          noAnswerValue: CamelArtificialRadio.noAnswer,
                          onChangedNoAnswer: (val) => artCtrl
                              .onChange(val ?? CamelArtificialRadio.noAnswer),
                        ),
                        if (artCtrl.charcter == CamelArtificialRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "What type of breed?".tr),
                              const CamelBreedTypeWidget(),
                              //? push in api object with id 107 if yes and 108 No
                              LabelWidget(
                                  label: "What is the source of semen?".tr),
                              GetBuilder<CamelSemenSourceRadioController>(
                                  init: CamelSemenSourceRadioController(),
                                  builder: (semenCtrl) {
                                    return Column(
                                      children: [
                                        CamelSemenSourceRadioWidget(
                                          enumName: CamelSemenSourceRadio,
                                          yesValue: CamelSemenSourceRadio.local,
                                          onChangedYes: (val) =>
                                              semenCtrl.onChange(val ??
                                                  CamelSemenSourceRadio.local),
                                          noValue:
                                              CamelSemenSourceRadio.importation,
                                          onChangedNo: (val) =>
                                              semenCtrl.onChange(val ??
                                                  CamelSemenSourceRadio
                                                      .importation),
                                          groupValue: semenCtrl.charcter,
                                          noAnswerValue:
                                              CamelSemenSourceRadio.noAnswer,
                                          onChangedNoAnswer: (val) =>
                                              semenCtrl.onChange(val ??
                                                  CamelSemenSourceRadio
                                                      .noAnswer),
                                        ),
                                        if (semenCtrl.charcter ==
                                            CamelSemenSourceRadio.importation)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              LabelWidget(
                                                  label:
                                                      "What is the importing country?"
                                                          .tr),
                                              CamelReproductionTextFieldWidget(
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
                                      "Who does artificial insemination?".tr),
                              const CamelFertilizationMethodWidget()
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
              GetBuilder<CamelDifficultyPregnancyRadioController>(
                  init: CamelDifficultyPregnancyRadioController(),
                  builder: (diffCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                          enumName: CamelDifficultyPregnancyRadio,
                          yesValue: CamelDifficultyPregnancyRadio.yes,
                          onChangedYes: (val) => diffCtrl.onChange(
                              val ?? CamelDifficultyPregnancyRadio.yes),
                          noValue: CamelDifficultyPregnancyRadio.no,
                          onChangedNo: (val) => diffCtrl.onChange(
                              val ?? CamelDifficultyPregnancyRadio.no),
                          groupValue: diffCtrl.charcter,
                          noAnswerValue: CamelDifficultyPregnancyRadio.noAnswer,
                          onChangedNoAnswer: (val) => diffCtrl.onChange(
                              val ?? CamelDifficultyPregnancyRadio.noAnswer),
                        ),
                        if (diffCtrl.charcter ==
                            CamelDifficultyPregnancyRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of difficulty pregnancy?"
                                          .tr),
                              CamelReproductionTextFieldWidget(
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
              GetBuilder<CamelUnsatisfactoryAbortionRadioController>(
                  init: CamelUnsatisfactoryAbortionRadioController(),
                  builder: (abortionCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                          enumName: CamelUnsatisfactoryAbortionRadio,
                          yesValue: CamelUnsatisfactoryAbortionRadio.yes,
                          onChangedYes: (val) => abortionCtrl.onChange(
                              val ?? CamelUnsatisfactoryAbortionRadio.yes),
                          noValue: CamelUnsatisfactoryAbortionRadio.no,
                          onChangedNo: (val) => abortionCtrl.onChange(
                              val ?? CamelUnsatisfactoryAbortionRadio.no),
                          groupValue: abortionCtrl.charcter,
                          noAnswerValue:
                              CamelUnsatisfactoryAbortionRadio.noAnswer,
                          onChangedNoAnswer: (val) => abortionCtrl.onChange(
                              val ?? CamelUnsatisfactoryAbortionRadio.noAnswer),
                        ),
                        if (abortionCtrl.charcter ==
                            CamelUnsatisfactoryAbortionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of unsatisfactory abortion?"
                                          .tr),
                              CamelReproductionTextFieldWidget(
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
              GetBuilder<CamelobstructedLaborRadioController>(
                  init: CamelobstructedLaborRadioController(),
                  builder: (obstructedCtrl) {
                    return Column(
                      children: [
                        CamelReproductionRadioWidget(
                          enumName: CamelobstructedLaborRadio,
                          yesValue: CamelobstructedLaborRadio.yes,
                          onChangedYes: (val) => obstructedCtrl
                              .onChange(val ?? CamelobstructedLaborRadio.yes),
                          noValue: CamelobstructedLaborRadio.no,
                          onChangedNo: (val) => obstructedCtrl
                              .onChange(val ?? CamelobstructedLaborRadio.no),
                          groupValue: obstructedCtrl.charcter,
                          noAnswerValue: CamelobstructedLaborRadio.noAnswer,
                          onChangedNoAnswer: (val) => obstructedCtrl.onChange(
                              val ?? CamelobstructedLaborRadio.noAnswer),
                        ),
                        if (obstructedCtrl.charcter ==
                            CamelobstructedLaborRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "what is number of cases of obstructed labor?"
                                          .tr),
                              CamelReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl
                                        .onChangeCaseNoLabor(val ?? "");
                                  }),
                              LabelWidget(
                                  label:
                                      "In the case of difficult childbirth, who is giving birth?"
                                          .tr),
                              const CamelDifficultChildbirthWidget()
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
