import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../controller/horse_artificial_radio_controller.dart';
import '../../controller/horse_difficulty_pregnancy_radio_controller.dart';
import '../../controller/horse_obstructed_labor_radio_controller.dart';
import '../../controller/horse_reproduction_radio_controller.dart';
import '../../controller/horse_reproduction_textfeild_controller.dart';
import '../../controller/horse_semen_source_controller.dart';
import '../../controller/horse_unsatisfactory_abortion_radio_controller.dart';
import 'horse_breed_type_widget.dart';
import 'horse_difficult_childbirth_widget.dart';
import 'horse_fertilization_method_widget.dart';
import 'horse_reproduction_radio_widget.dart';
import 'horse_reproduction_textfield_widget.dart';
import 'horse_reproduction_way_widget.dart';
import 'horse_semen_souce_radio_widget.dart';

// ignore: must_be_immutable
class HorseReproductionWidget extends StatelessWidget {
    HorseReproductionWidget({Key? key}) : super(key: key);
HorseReproductionTextFieldController  reproductionTextFieldCtrl = Get.put(HorseReproductionTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendHorseHerdDataController>(
        init: SendHorseHerdDataController(),
        builder: (sendDataCtrl) {
          return ListView(
            children: [
              //? push in api object with id 94 if yes and 95 No
              LabelWidget(label: "Is pregnancy diagnosed in the herd?".tr),
              GetBuilder<HorseReproductionRadioController>(
                  init: HorseReproductionRadioController(),
                  builder: (reproCtrl) {
                    return Column(
                      children: [
                        HorseReproductionRadioWidget(
                            enumName: HorseReproductionRadio,
                            yesValue: HorseReproductionRadio.yes,
                            onChangedYes: (val) => reproCtrl
                                .onChange(val ?? HorseReproductionRadio.yes),
                            noValue: HorseReproductionRadio.no,
                            onChangedNo: (val) => reproCtrl
                                .onChange(val ?? HorseReproductionRadio.no),
                            groupValue: reproCtrl.charcter,
                             noAnswerValue:HorseReproductionRadio .noAnswer,
                            onChangedNoAnswer: (val) => reproCtrl
                                .onChange(val ??HorseReproductionRadio .noAnswer),
                            ),
                        if (reproCtrl.charcter == HorseReproductionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:   [
                  LabelWidget(
                                  label: "What is the diagnostic method?".tr),
                              const HorseReproductionWayWidget(),
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
              GetBuilder<HorseArtificialRadioController>(
                  init: HorseArtificialRadioController(),
                  builder: (artCtrl) {
                    return Column(
                      children: [
                        //? push in api object with id 101 if yes and 102 No
                        HorseReproductionRadioWidget(
                            enumName: HorseArtificialRadio,
                            yesValue: HorseArtificialRadio.yes,
                            onChangedYes: (val) => artCtrl
                                .onChange(val ?? HorseArtificialRadio.yes),
                            noValue: HorseArtificialRadio.no,
                            onChangedNo: (val) => artCtrl
                                .onChange(val ?? HorseArtificialRadio.no),
                            groupValue: artCtrl.charcter,
                            noAnswerValue:HorseArtificialRadio .noAnswer,
                            onChangedNoAnswer: (val) => artCtrl
                                .onChange(val ??HorseArtificialRadio .noAnswer),
                          
                            
                            ),
                        if (artCtrl.charcter == HorseArtificialRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "What type of breed?".tr),
                              const HorseBreedTypeWidget(),
                              //? push in api object with id 107 if yes and 108 No
                              LabelWidget(
                                  label: "What is the source of semen?".tr),
                              GetBuilder<HorseSemenSourceRadioController>(
                                  init: HorseSemenSourceRadioController(),
                                  builder: (semenCtrl) {
                                    return Column(
                                      children: [
                                        HorseSemenSourceRadioWidget(
                                            enumName: HorseSemenSourceRadio,
                                            yesValue:
                                                HorseSemenSourceRadio.local,
                                            onChangedYes: (val) =>
                                                semenCtrl.onChange(val ??
                                                    HorseSemenSourceRadio
                                                        .local),
                                            noValue: HorseSemenSourceRadio
                                                .importation,
                                            onChangedNo: (val) =>
                                                semenCtrl.onChange(val ??
                                                    HorseSemenSourceRadio
                                                        .importation),
                                            groupValue: semenCtrl.charcter,
                                            noAnswerValue: HorseSemenSourceRadio.noAnswer,
                                            onChangedNoAnswer: (val) =>
                                                semenCtrl.onChange(val ??
                                                    HorseSemenSourceRadio
                                                        .noAnswer),
                                            
                                            ),
                                        if (semenCtrl.charcter ==
                                            HorseSemenSourceRadio.importation)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              LabelWidget(
                                                  label:
                                                      "What is the importing country?".tr),
                                              HorseReproductionTextFieldWidget(
                                                  title:"What is the importing country?".tr ,
                                                  onNoteChange: (val) {
                                                   reproductionTextFieldCtrl.onChangeImportingCounrty(val??"");
                                                  })
                                            ],
                                          )
                                      ],
                                    );
                                  }),
                              LabelWidget(
                                  label: "Who does artificial insemination?".tr),
                              const HorseFertilizationMethodWidget()
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
              LabelWidget(
                  label: "Are there cases of difficulty pregnancy?".tr),
              GetBuilder<HorseDifficultyPregnancyRadioController>(
                  init: HorseDifficultyPregnancyRadioController(),
                  builder: (diffCtrl) {
                    return Column(
                      children: [
                        HorseReproductionRadioWidget(
                            enumName: HorseDifficultyPregnancyRadio,
                            yesValue: HorseDifficultyPregnancyRadio.yes,
                            onChangedYes: (val) => diffCtrl.onChange(
                                val ?? HorseDifficultyPregnancyRadio.yes),
                            noValue: HorseDifficultyPregnancyRadio.no,
                            onChangedNo: (val) => diffCtrl.onChange(
                                val ?? HorseDifficultyPregnancyRadio.no),
                            groupValue: diffCtrl.charcter,
                            noAnswerValue:HorseDifficultyPregnancyRadio.noAnswer ,
                            onChangedNoAnswer: (val) => diffCtrl.onChange(
                                val ?? HorseDifficultyPregnancyRadio.noAnswer),
                            
                            
                            ),
                        if (diffCtrl.charcter ==
                            HorseDifficultyPregnancyRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of difficulty pregnancy?".tr),
                              HorseReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl.onChangeCaseNoDifficulty(val??"");
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
              GetBuilder<HorseUnsatisfactoryAbortionRadioController>(
                  init: HorseUnsatisfactoryAbortionRadioController(),
                  builder: (abortionCtrl) {
                    return Column(
                      children: [
                        HorseReproductionRadioWidget(
                            enumName: HorseUnsatisfactoryAbortionRadio,
                            yesValue: HorseUnsatisfactoryAbortionRadio.yes,
                            onChangedYes: (val) => abortionCtrl.onChange(
                                val ?? HorseUnsatisfactoryAbortionRadio.yes),
                            noValue: HorseUnsatisfactoryAbortionRadio.no,
                            onChangedNo: (val) => abortionCtrl.onChange(
                                val ?? HorseUnsatisfactoryAbortionRadio.no),
                            groupValue: abortionCtrl.charcter,
                            noAnswerValue:HorseUnsatisfactoryAbortionRadio.noAnswer ,
                            onChangedNoAnswer: (val) => abortionCtrl.onChange(
                                val ?? HorseUnsatisfactoryAbortionRadio.noAnswer),
                            ),
                        if (abortionCtrl.charcter ==
                            HorseUnsatisfactoryAbortionRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "What is the number of cases of unsatisfactory abortion?".tr),
                              HorseReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl.onChangeCaseNoAboration(val??"");
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
              GetBuilder<HorseobstructedLaborRadioController>(
                  init: HorseobstructedLaborRadioController(),
                  builder: (obstructedCtrl) {
                    return Column(
                      children: [
                        HorseReproductionRadioWidget(
                            enumName: HorseobstructedLaborRadio,
                            yesValue: HorseobstructedLaborRadio.yes,
                            onChangedYes: (val) => obstructedCtrl
                                .onChange(val ?? HorseobstructedLaborRadio.yes),
                            noValue: HorseobstructedLaborRadio.no,
                            onChangedNo: (val) => obstructedCtrl
                                .onChange(val ?? HorseobstructedLaborRadio.no),
                            groupValue: obstructedCtrl.charcter,
                            noAnswerValue: HorseobstructedLaborRadio.noAnswer,
                            onChangedNoAnswer: (val) => obstructedCtrl
                                .onChange(val ?? HorseobstructedLaborRadio.noAnswer),
                          
                            
                            ),
                        if (obstructedCtrl.charcter ==
                            HorseobstructedLaborRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(
                                  label:
                                      "what is number of cases of obstructed labor?".tr),
                              HorseReproductionTextFieldWidget(
                                  title: "Number of Cases".tr,
                                  onNoteChange: (val) {
                                    reproductionTextFieldCtrl.onChangeCaseNoLabor(val??"");
                              
                                  }),
                              LabelWidget(
                                  label:
                                      "In the case of difficult childbirth, who is giving birth?".tr),
                              const HorseDifficultChildbirthWidget()
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
