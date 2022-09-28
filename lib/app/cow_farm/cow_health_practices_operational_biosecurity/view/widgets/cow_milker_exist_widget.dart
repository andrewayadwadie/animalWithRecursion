// ignore_for_file: must_be_immutable

import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_animal_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_blood_parasites_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_dippers_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_farm_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_if_udder_washed_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_insect_exist_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_milk_sample_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_milker_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_milker_tool_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_nipple_skin_used_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_sanitizers_milker_tool_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_sanitizers_used_radio_controller.dart';
import 'package:animal_wealth/app/cow_farm/cow_health_practices_operational_biosecurity/controller/cow_udder_washed_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'cow_blood_parasites_widget.dart';
import 'cow_chemicals_farm_used_widget.dart';
import 'cow_chemicals_used_widget.dart';
import 'cow_dipper_radio_widget.dart';
import 'cow_mastitis_milked_widget.dart';
import 'cow_milker_tools_sanitizers_widget.dart';
import 'cow_operational_radio_widget.dart';
import 'cow_operational_textfield_widget.dart';
import 'cow_sanitizers_used_widget.dart';

class CowMilkerExistWidget extends StatelessWidget {
  CowMilkerExistWidget({Key? key}) : super(key: key);

  CowOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CowOPertionalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!-----------------------
        LabelWidget(label: "Is the Milker cleaned ?".tr),
        GetBuilder<CowMilkerCleanedRadioController>(
            init: CowMilkerCleanedRadioController(),
            builder: (milkerCleanedCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowMilkerCleanedRadio,
                      yesValue:
                          CowMilkerCleanedRadio.yes, //? push in api id 175
                      onChangedYes: (val) => milkerCleanedCtrl
                          .onChange(val ?? CowMilkerCleanedRadio.yes),
                      noValue: CowMilkerCleanedRadio.no, //? push in api id 176
                      onChangedNo: (val) => milkerCleanedCtrl
                          .onChange(val ?? CowMilkerCleanedRadio.no),
                      groupValue: milkerCleanedCtrl.charcter,
                      noAnswerValue: CowMilkerCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerCleanedCtrl
                          .onChange(val ?? CowMilkerCleanedRadio.noAnswer)),
                  if (milkerCleanedCtrl.charcter == CowMilkerCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CowOperationalTextFieldWidget(
                            title: "how many times?".tr,
                            onNoteChange: (val) {
                              opertionalTextFieldController
                                  .onChangemilkerCleanNo(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Is the Milker tools cleaned ?".tr),
        GetBuilder<CowMilkerToolsCleanedRadioController>(
            init: CowMilkerToolsCleanedRadioController(),
            builder: (milkerToolsCleanedCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowMilkerToolsCleanedRadio,
                      yesValue:
                          CowMilkerToolsCleanedRadio.yes, //? push in api id 178
                      onChangedYes: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? CowMilkerToolsCleanedRadio.yes),
                      noValue:
                          CowMilkerToolsCleanedRadio.no, //? push in api id 179
                      onChangedNo: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? CowMilkerToolsCleanedRadio.no),
                      groupValue: milkerToolsCleanedCtrl.charcter,
                      noAnswerValue: CowMilkerToolsCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          milkerToolsCleanedCtrl.onChange(
                              val ?? CowMilkerToolsCleanedRadio.noAnswer)),
                  if (milkerToolsCleanedCtrl.charcter ==
                      CowMilkerToolsCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CowOperationalTextFieldWidget(
                            title: "how many times?".tr,
                            onNoteChange: (val) {
                              opertionalTextFieldController
                                  .onChangemilkerToolsCleanNo(val ?? "");
                            })
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are sanitizers used?".tr),
        GetBuilder<CowSanitizersUsedRadioController>(
            init: CowSanitizersUsedRadioController(),
            builder: (sanitizersUsedCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowSanitizersUsedRadio,
                      yesValue:
                          CowSanitizersUsedRadio.yes, //? push in api id 181
                      onChangedYes: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CowSanitizersUsedRadio.yes),
                      noValue: CowSanitizersUsedRadio.no, //? push in api id 182
                      onChangedNo: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CowSanitizersUsedRadio.no),
                      groupValue: sanitizersUsedCtrl.charcter,
                      noAnswerValue: CowSanitizersUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CowSanitizersUsedRadio.noAnswer)),
                  if (sanitizersUsedCtrl.charcter == CowSanitizersUsedRadio.yes)
                    const CowsanitizersUsedWidget()

                  ///? push in api id 183
                ],
              );
            }),

        //!-----------------------
        LabelWidget(label: "Are milking equipment disinfectants used?".tr),
        GetBuilder<CowSanitizersMilkerToolsRadioController>(
            init: CowSanitizersMilkerToolsRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowSanitizersMilkerToolsRadio,
                      yesValue: CowSanitizersMilkerToolsRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CowSanitizersMilkerToolsRadio.yes),
                      noValue: CowSanitizersMilkerToolsRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CowSanitizersMilkerToolsRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: CowSanitizersMilkerToolsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          sanitizersMilkerToolsCtrl.onChange(
                              val ?? CowSanitizersMilkerToolsRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      CowSanitizersMilkerToolsRadio.yes)
                    const CowsanitizersMilkerToolsWidget() //? push in api id 186
                ],
              );
            }),
        //!-----------------------
        LabelWidget(
            label: "Is a milk sample examined for early detection of mastitis?"
                .tr),
        GetBuilder<CowMIlkSampleRadioController>(
            init: CowMIlkSampleRadioController(),
            builder: (milkSampleCtrl) {
              return CowOperationalRadioWidget(
                  enumName: CowMIlkSampleRadio,
                  yesValue: CowMIlkSampleRadio.yes, //? push in api id 189
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? CowMIlkSampleRadio.yes),
                  noValue: CowMIlkSampleRadio.no, //? push in api id 190
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? CowMIlkSampleRadio.no),
                  groupValue: milkSampleCtrl.charcter,
                  noAnswerValue: CowMIlkSampleRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkSampleCtrl
                      .onChange(val ?? CowMIlkSampleRadio.noAnswer));
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are nipple sinks used?".tr),

        GetBuilder<CowNipplesSkinUsedRadioController>(
            init: CowNipplesSkinUsedRadioController(),
            builder: (nippleSkinCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowNipplesSkinUsedRadio,
                      yesValue: CowNipplesSkinUsedRadio.yes,
                      onChangedYes: (val) => nippleSkinCtrl
                          .onChange(val ?? CowNipplesSkinUsedRadio.yes),
                      noValue: CowNipplesSkinUsedRadio.no,
                      onChangedNo: (val) => nippleSkinCtrl
                          .onChange(val ?? CowNipplesSkinUsedRadio.no),
                      groupValue: nippleSkinCtrl.charcter,
                      noAnswerValue: CowNipplesSkinUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => nippleSkinCtrl
                          .onChange(val ?? CowNipplesSkinUsedRadio.noAnswer)),
                  if (nippleSkinCtrl.charcter == CowNipplesSkinUsedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when use Nipple Skin?".tr),
                        GetBuilder<CowDipperRadioController>(
                            init: CowDipperRadioController(),
                            builder: (milkSampleCtrl) {
                              return CowDipperRadioWidget(
                                  enumName: CowDipperRadio,
                                  yesValue: CowDipperRadio
                                      .after, //? push in api id 191
                                  onChangedYes: (val) => milkSampleCtrl
                                      .onChange(val ?? CowDipperRadio.after),
                                  noValue: CowDipperRadio
                                      .before, //? push in api id 192
                                  onChangedNo: (val) => milkSampleCtrl
                                      .onChange(val ?? CowDipperRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: CowDipperRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? CowDipperRadio.noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Is the udder washed?".tr),
        GetBuilder<CowIfUdderWashedController>(
            init: CowIfUdderWashedController(),
            builder: (ifUdderWashed) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowIfUdderWashed,
                      yesValue: CowIfUdderWashed.yes,
                      onChangedYes: (val) =>
                          ifUdderWashed.onChange(val ?? CowIfUdderWashed.yes),
                      noValue: CowIfUdderWashed.no,
                      onChangedNo: (val) =>
                          ifUdderWashed.onChange(val ?? CowIfUdderWashed.no),
                      groupValue: ifUdderWashed.charcter,
                      noAnswerValue: CowIfUdderWashed.noAnswer,
                      onChangedNoAnswer: (val) => ifUdderWashed
                          .onChange(val ?? CowIfUdderWashed.noAnswer)),
                  if (ifUdderWashed.charcter == CowIfUdderWashed.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when udder washed?".tr),
                        GetBuilder<CowUdderWashedRadioController>(
                            init: CowUdderWashedRadioController(),
                            builder: (milkSampleCtrl) {
                              return CowDipperRadioWidget(
                                  enumName: CowUdderWashedRadio,
                                  yesValue: CowUdderWashedRadio
                                      .after, //? push in api id 193
                                  onChangedYes: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? CowUdderWashedRadio.after),
                                  noValue: CowUdderWashedRadio
                                      .before, //? push in api id 194
                                  onChangedNo: (val) => milkSampleCtrl.onChange(
                                      val ?? CowUdderWashedRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: CowUdderWashedRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? CowUdderWashedRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "When should animals with mastitis be milked?".tr),
        const CowMastitisMilkedWidget(),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are there animals with insects?".tr),
        GetBuilder<CowInsectExistRadioController>(
            init: CowInsectExistRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  CowOperationalRadioWidget(
                      enumName: CowInsectExistRadio,
                      yesValue: CowInsectExistRadio.yes, //? push in api id 198
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CowInsectExistRadio.yes),
                      noValue: CowInsectExistRadio.no, //? push in api id 199
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CowInsectExistRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: CowInsectExistRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CowInsectExistRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      CowInsectExistRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "How many animals are infected?".tr),
                        CowOperationalTextFieldWidget(
                            title: "How many animals are infected?".tr,
                            onNoteChange: (val) {
                              opertionalTextFieldController
                                  .onChangeanimalInfected(val ?? "");
                            }),
                        //! insect type
                        LabelWidget(label: "insect type : ".tr),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 7,
                          child: GetBuilder<InsectTypeController>(
                              init: InsectTypeController(),
                              builder: (insect) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                              'tick'.tr), //? push in api id 201
                                          Checkbox(
                                            value: insect.tick,
                                            onChanged: (val) =>
                                                insect.tickonChange(val),
                                          ),
                                          Text(
                                              'flea'.tr), //? push in api id 202
                                          Checkbox(
                                            value: insect.flea,
                                            onChanged: (val) =>
                                                insect.fleaOnChange(val),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('mosquito'
                                              .tr), //? push in api id 203
                                          Checkbox(
                                            value: insect.mosquito,
                                            onChanged: (val) =>
                                                insect.mosquitoonChange(val),
                                          ),
                                          Text('vermin'
                                              .tr), //? push in api id 204
                                          Checkbox(
                                            value: insect.hamosh,
                                            onChanged: (val) =>
                                                insect.hamoshonChange(val),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                        const LineWidget(),
                        LabelWidget(
                            label:
                                "Is there an animal pest control program?".tr),
                        GetBuilder<CowInsectAnimalPestControlRadioController>(
                            init: CowInsectAnimalPestControlRadioController(),
                            builder: (animalPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CowOperationalRadioWidget(
                                      enumName: CowInsectAnimalPestControlRadio,
                                      yesValue: CowInsectAnimalPestControlRadio
                                          .yes,
                                      onChangedYes: (val) => animalPestCtrl
                                          .onChange(val ??
                                              CowInsectAnimalPestControlRadio
                                                  .yes),
                                      noValue: CowInsectAnimalPestControlRadio
                                          .no,
                                      onChangedNo: (val) => animalPestCtrl
                                          .onChange(val ??
                                              CowInsectAnimalPestControlRadio
                                                  .no),
                                      groupValue: animalPestCtrl.charcter,
                                      noAnswerValue:
                                          CowInsectAnimalPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              CowInsectAnimalPestControlRadio
                                                  .noAnswer)),
                                  if (animalPestCtrl.charcter ==
                                      CowInsectAnimalPestControlRadio.yes)
                                    const CowChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label: "Is there an Farm pest control program?".tr),
                        GetBuilder<CowInsectFarmPestControlRadioController>(
                            init: CowInsectFarmPestControlRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CowOperationalRadioWidget(
                                      enumName: CowInsectFarmPestControlRadio,
                                      yesValue:
                                          CowInsectFarmPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CowInsectFarmPestControlRadio
                                                  .yes),
                                      noValue: CowInsectFarmPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CowInsectFarmPestControlRadio.no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          CowInsectFarmPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CowInsectFarmPestControlRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      CowInsectFarmPestControlRadio.yes)
                                    const CowChemicalsFarmUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label:
                                "Are medicines used to prevent blood parasites periodically?"
                                    .tr),
                        GetBuilder<CowbloodParasitesRadioController>(
                            init: CowbloodParasitesRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CowOperationalRadioWidget(
                                      enumName: CowbloodParasitesRadio,
                                      yesValue: CowbloodParasitesRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CowbloodParasitesRadio.yes),
                                      noValue: CowbloodParasitesRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(
                                              val ?? CowbloodParasitesRadio.no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          CowbloodParasitesRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CowbloodParasitesRadio.noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      CowbloodParasitesRadio.yes)
                                    const CowbloodParasitesWidget()
                                ],
                              );
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),

        //!-----------------------
      ],
    );
  }
}
