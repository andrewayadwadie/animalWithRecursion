// ignore_for_file: must_be_immutable

 import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_animal_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_blood_parasites_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_dippers_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_farm_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_if_udder_washed_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_insect_exist_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_milk_sample_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_milker_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_milker_tool_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_nipple_skin_used_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_sanitizers_milker_tool_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_sanitizers_used_radio_controller.dart';
import 'package:animal_wealth/app/goat_farm/goat_health_practices_operational_biosecurity/controller/goat_udder_washed_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'goat_blood_parasites_widget.dart';
import 'goat_chemicals_farm_used_widget.dart';
import 'goat_chemicals_used_widget.dart';
import 'goat_dipper_radio_widget.dart';
import 'goat_mastitis_milked_widget.dart';
import 'goat_milker_tools_sanitizers_widget.dart';
import 'goat_operational_radio_widget.dart';
import 'goat_operational_textfield_widget.dart';
import 'goat_sanitizers_used_widget.dart';

class GoatMilkerExistWidget extends StatelessWidget {
  GoatMilkerExistWidget({Key? key}) : super(key: key);

  GoatOpertionalTextFieldController opertionalTextFieldController =
      Get.put(GoatOpertionalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!-----------------------
          LabelWidget(label: "Is the Milker cleaned ?".tr),
        GetBuilder<GoatMilkerCleanedRadioController>(
            init: GoatMilkerCleanedRadioController(),
            builder: (milkerCleanedCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatMilkerCleanedRadio,
                      yesValue:
                          GoatMilkerCleanedRadio.yes, //? push in api id 175
                      onChangedYes: (val) => milkerCleanedCtrl
                          .onChange(val ?? GoatMilkerCleanedRadio.yes),
                      noValue: GoatMilkerCleanedRadio.no, //? push in api id 176
                      onChangedNo: (val) => milkerCleanedCtrl
                          .onChange(val ?? GoatMilkerCleanedRadio.no),
                      groupValue: milkerCleanedCtrl.charcter,
                      noAnswerValue: GoatMilkerCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerCleanedCtrl
                          .onChange(val ?? GoatMilkerCleanedRadio.noAnswer)),
                  if (milkerCleanedCtrl.charcter == GoatMilkerCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "how many times?".tr),
                        GoatOperationalTextFieldWidget(
                            title:  "how many times?".tr,
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
        GetBuilder<GoatMilkerToolsCleanedRadioController>(
            init: GoatMilkerToolsCleanedRadioController(),
            builder: (milkerToolsCleanedCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatMilkerToolsCleanedRadio,
                      yesValue: GoatMilkerToolsCleanedRadio
                          .yes, //? push in api id 178
                      onChangedYes: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? GoatMilkerToolsCleanedRadio.yes),
                      noValue:
                          GoatMilkerToolsCleanedRadio.no, //? push in api id 179
                      onChangedNo: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? GoatMilkerToolsCleanedRadio.no),
                      groupValue: milkerToolsCleanedCtrl.charcter,
                      noAnswerValue: GoatMilkerToolsCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          milkerToolsCleanedCtrl.onChange(
                              val ?? GoatMilkerToolsCleanedRadio.noAnswer)),
                  if (milkerToolsCleanedCtrl.charcter ==
                      GoatMilkerToolsCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "how many times?".tr),
                        GoatOperationalTextFieldWidget(
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
        GetBuilder<GoatSanitizersUsedRadioController>(
            init: GoatSanitizersUsedRadioController(),
            builder: (sanitizersUsedCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatSanitizersUsedRadio,
                      yesValue:
                          GoatSanitizersUsedRadio.yes, //? push in api id 181
                      onChangedYes: (val) => sanitizersUsedCtrl
                          .onChange(val ?? GoatSanitizersUsedRadio.yes),
                      noValue:
                          GoatSanitizersUsedRadio.no, //? push in api id 182
                      onChangedNo: (val) => sanitizersUsedCtrl
                          .onChange(val ?? GoatSanitizersUsedRadio.no),
                      groupValue: sanitizersUsedCtrl.charcter,
                      noAnswerValue: GoatSanitizersUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersUsedCtrl
                          .onChange(val ?? GoatSanitizersUsedRadio.noAnswer)),
                  if (sanitizersUsedCtrl.charcter ==
                      GoatSanitizersUsedRadio.yes)
                    const GoatsanitizersUsedWidget()

                  ///? push in api id 183
                ],
              );
            }),

        //!-----------------------
          LabelWidget(label: "Are milking equipment disinfectants used?".tr),
        GetBuilder<GoatSanitizersMilkerToolsRadioController>(
            init: GoatSanitizersMilkerToolsRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatSanitizersMilkerToolsRadio,
                      yesValue: GoatSanitizersMilkerToolsRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? GoatSanitizersMilkerToolsRadio.yes),
                      noValue: GoatSanitizersMilkerToolsRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? GoatSanitizersMilkerToolsRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: GoatSanitizersMilkerToolsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          sanitizersMilkerToolsCtrl.onChange(
                              val ?? GoatSanitizersMilkerToolsRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      GoatSanitizersMilkerToolsRadio.yes)
                    const GoatsanitizersMilkerToolsWidget() //? push in api id 186
                ],
              );
            }),
        //!-----------------------
          LabelWidget(
            label:
                "Is a milk sample examined for early detection of mastitis?".tr),
        GetBuilder<GoatMIlkSampleRadioController>(
            init: GoatMIlkSampleRadioController(),
            builder: (milkSampleCtrl) {
              return GoatOperationalRadioWidget(
                  enumName: GoatMIlkSampleRadio,
                  yesValue: GoatMIlkSampleRadio.yes, //? push in api id 189
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? GoatMIlkSampleRadio.yes),
                  noValue: GoatMIlkSampleRadio.no, //? push in api id 190
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? GoatMIlkSampleRadio.no),
                  groupValue: milkSampleCtrl.charcter,
                  noAnswerValue: GoatMIlkSampleRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkSampleCtrl
                      .onChange(val ?? GoatMIlkSampleRadio.noAnswer));
            }),
        const LineWidget(),
        //!-----------------------
          LabelWidget(label: "Are nipple sinks used?".tr),

        GetBuilder<GoatNipplesSkinUsedRadioController>(
            init: GoatNipplesSkinUsedRadioController(),
            builder: (nippleSkinCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatNipplesSkinUsedRadio,
                      yesValue: GoatNipplesSkinUsedRadio.yes,
                      onChangedYes: (val) => nippleSkinCtrl
                          .onChange(val ?? GoatNipplesSkinUsedRadio.yes),
                      noValue: GoatNipplesSkinUsedRadio.no,
                      onChangedNo: (val) => nippleSkinCtrl
                          .onChange(val ?? GoatNipplesSkinUsedRadio.no),
                      groupValue: nippleSkinCtrl.charcter,
                      noAnswerValue: GoatNipplesSkinUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => nippleSkinCtrl
                          .onChange(val ?? GoatNipplesSkinUsedRadio.noAnswer)),
                  if (nippleSkinCtrl.charcter == GoatNipplesSkinUsedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "when use Nipple Skin?".tr),
                        GetBuilder<GoatDipperRadioController>(
                            init: GoatDipperRadioController(),
                            builder: (milkSampleCtrl) {
                              return GoatDipperRadioWidget(
                                  enumName: GoatDipperRadio,
                                  yesValue: GoatDipperRadio
                                      .after, //? push in api id 191
                                  onChangedYes: (val) => milkSampleCtrl
                                      .onChange(val ?? GoatDipperRadio.after),
                                  noValue: GoatDipperRadio
                                      .before, //? push in api id 192
                                  onChangedNo: (val) => milkSampleCtrl
                                      .onChange(val ?? GoatDipperRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: GoatDipperRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? GoatDipperRadio.noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
          LabelWidget(label: "Is the udder washed?".tr),
        GetBuilder<GoatIfUdderWashedController>(
            init: GoatIfUdderWashedController(),
            builder: (ifUdderWashed) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatIfUdderWashed,
                      yesValue: GoatIfUdderWashed.yes,
                      onChangedYes: (val) =>
                          ifUdderWashed.onChange(val ?? GoatIfUdderWashed.yes),
                      noValue: GoatIfUdderWashed.no,
                      onChangedNo: (val) =>
                          ifUdderWashed.onChange(val ?? GoatIfUdderWashed.no),
                      groupValue: ifUdderWashed.charcter,
                      noAnswerValue: GoatIfUdderWashed.noAnswer,
                      onChangedNoAnswer: (val) => ifUdderWashed
                          .onChange(val ?? GoatIfUdderWashed.noAnswer)),
                  if (ifUdderWashed.charcter == GoatIfUdderWashed.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "when udder washed?".tr),
                        GetBuilder<GoatUdderWashedRadioController>(
                            init: GoatUdderWashedRadioController(),
                            builder: (milkSampleCtrl) {
                              return GoatDipperRadioWidget(
                                  enumName: GoatUdderWashedRadio,
                                  yesValue: GoatUdderWashedRadio
                                      .after, //? push in api id 193
                                  onChangedYes: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? GoatUdderWashedRadio.after),
                                  noValue: GoatUdderWashedRadio
                                      .before, //? push in api id 194
                                  onChangedNo: (val) => milkSampleCtrl.onChange(
                                      val ?? GoatUdderWashedRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: GoatUdderWashedRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(val ??
                                          GoatUdderWashedRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
          LabelWidget(
            label: "When should animals with mastitis be milked?".tr),
        const GoatMastitisMilkedWidget(),
        const LineWidget(),
        //!-----------------------
          LabelWidget(label: "Are there animals with insects?".tr),
        GetBuilder<GoatInsectExistRadioController>(
            init: GoatInsectExistRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  GoatOperationalRadioWidget(
                      enumName: GoatInsectExistRadio,
                      yesValue: GoatInsectExistRadio.yes, //? push in api id 198
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? GoatInsectExistRadio.yes),
                      noValue: GoatInsectExistRadio.no, //? push in api id 199
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? GoatInsectExistRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: GoatInsectExistRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? GoatInsectExistRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      GoatInsectExistRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(
                            label: "How many animals are infected?".tr),
                        GoatOperationalTextFieldWidget(
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
                                            Text(
                                              'mosquito'.tr), //? push in api id 203
                                          Checkbox(
                                            value: insect.mosquito,
                                            onChanged: (val) =>
                                                insect.mosquitoonChange(val),
                                          ),
                                            Text(
                                              'vermin'.tr), //? push in api id 204
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
                            label: "Is there an animal pest control program?".tr),
                        GetBuilder<GoatInsectAnimalPestControlRadioController>(
                            init: GoatInsectAnimalPestControlRadioController(),
                            builder: (animalPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GoatOperationalRadioWidget(
                                      enumName:
                                          GoatInsectAnimalPestControlRadio,
                                      yesValue: GoatInsectAnimalPestControlRadio
                                          .yes,
                                      onChangedYes: (val) => animalPestCtrl
                                          .onChange(val ??
                                              GoatInsectAnimalPestControlRadio
                                                  .yes),
                                      noValue: GoatInsectAnimalPestControlRadio
                                          .no,
                                      onChangedNo: (val) => animalPestCtrl
                                          .onChange(val ??
                                              GoatInsectAnimalPestControlRadio
                                                  .no),
                                      groupValue: animalPestCtrl.charcter,
                                      noAnswerValue:
                                          GoatInsectAnimalPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              GoatInsectAnimalPestControlRadio
                                                  .noAnswer)),
                                  if (animalPestCtrl.charcter ==
                                      GoatInsectAnimalPestControlRadio.yes)
                                    const GoatChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                          LabelWidget(
                            label: "Is there an Farm pest control program?".tr),
                        GetBuilder<GoatInsectFarmPestControlRadioController>(
                            init: GoatInsectFarmPestControlRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GoatOperationalRadioWidget(
                                      enumName: GoatInsectFarmPestControlRadio,
                                      yesValue:
                                          GoatInsectFarmPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              GoatInsectFarmPestControlRadio
                                                  .yes),
                                      noValue:
                                          GoatInsectFarmPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              GoatInsectFarmPestControlRadio
                                                  .no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          GoatInsectFarmPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              GoatInsectFarmPestControlRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      GoatInsectFarmPestControlRadio.yes)
                                    const GoatChemicalsFarmUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                          LabelWidget(
                            label:
                                "Are medicines used to prevent blood parasites periodically?".tr),
                        GetBuilder<GoatbloodParasitesRadioController>(
                            init: GoatbloodParasitesRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GoatOperationalRadioWidget(
                                      enumName: GoatbloodParasitesRadio,
                                      yesValue: GoatbloodParasitesRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              GoatbloodParasitesRadio.yes),
                                      noValue: GoatbloodParasitesRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              GoatbloodParasitesRadio.no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          GoatbloodParasitesRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              GoatbloodParasitesRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      GoatbloodParasitesRadio.yes)
                                    const GoatbloodParasitesWidget()
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
