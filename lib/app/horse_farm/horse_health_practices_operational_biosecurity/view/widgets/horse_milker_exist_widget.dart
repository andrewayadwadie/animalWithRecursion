// ignore_for_file: must_be_immutable

import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_animal_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_blood_parasites_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_dippers_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_farm_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_if_udder_washed_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_insect_exist_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_milk_sample_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_milker_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_milker_tool_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_nipple_skin_used_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_sanitizers_milker_tool_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_sanitizers_used_radio_controller.dart';
import 'package:animal_wealth/app/horse_farm/horse_health_practices_operational_biosecurity/controller/horse_udder_washed_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'horse_blood_parasites_widget.dart';
import 'horse_chemicals_farm_used_widget.dart';
import 'horse_chemicals_used_widget.dart';
import 'horse_dipper_radio_widget.dart';
import 'horse_mastitis_milked_widget.dart';
import 'horse_milker_tools_sanitizers_widget.dart';
import 'horse_operational_radio_widget.dart';
import 'horse_operational_textfield_widget.dart';
import 'horse_sanitizers_used_widget.dart';

class HorseMilkerExistWidget extends StatelessWidget {
  HorseMilkerExistWidget({Key? key}) : super(key: key);

  HorseOertionalTextFieldController opertionalTextFieldController =
      Get.put(HorseOertionalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!-----------------------
        LabelWidget(label: "Is the Milker cleaned ?".tr),
        GetBuilder<HorseMilkerCleanedRadioController>(
            init: HorseMilkerCleanedRadioController(),
            builder: (milkerCleanedCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseMilkerCleanedRadio,
                      yesValue:
                          HorseMilkerCleanedRadio.yes, //? push in api id 175
                      onChangedYes: (val) => milkerCleanedCtrl
                          .onChange(val ?? HorseMilkerCleanedRadio.yes),
                      noValue:
                          HorseMilkerCleanedRadio.no, //? push in api id 176
                      onChangedNo: (val) => milkerCleanedCtrl
                          .onChange(val ?? HorseMilkerCleanedRadio.no),
                      groupValue: milkerCleanedCtrl.charcter,
                      noAnswerValue: HorseMilkerCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerCleanedCtrl
                          .onChange(val ?? HorseMilkerCleanedRadio.noAnswer)),
                  if (milkerCleanedCtrl.charcter == HorseMilkerCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        HorseOperationalTextFieldWidget(
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
        GetBuilder<HorseMilkerToolsCleanedRadioController>(
            init: HorseMilkerToolsCleanedRadioController(),
            builder: (milkerToolsCleanedCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseMilkerToolsCleanedRadio,
                      yesValue: HorseMilkerToolsCleanedRadio
                          .yes, //? push in api id 178
                      onChangedYes: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? HorseMilkerToolsCleanedRadio.yes),
                      noValue: HorseMilkerToolsCleanedRadio
                          .no, //? push in api id 179
                      onChangedNo: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? HorseMilkerToolsCleanedRadio.no),
                      groupValue: milkerToolsCleanedCtrl.charcter,
                      noAnswerValue: HorseMilkerToolsCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          milkerToolsCleanedCtrl.onChange(
                              val ?? HorseMilkerToolsCleanedRadio.noAnswer)),
                  if (milkerToolsCleanedCtrl.charcter ==
                      HorseMilkerToolsCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        HorseOperationalTextFieldWidget(
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
        GetBuilder<HorseSanitizersUsedRadioController>(
            init: HorseSanitizersUsedRadioController(),
            builder: (sanitizersUsedCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseSanitizersUsedRadio,
                      yesValue:
                          HorseSanitizersUsedRadio.yes, //? push in api id 181
                      onChangedYes: (val) => sanitizersUsedCtrl
                          .onChange(val ?? HorseSanitizersUsedRadio.yes),
                      noValue:
                          HorseSanitizersUsedRadio.no, //? push in api id 182
                      onChangedNo: (val) => sanitizersUsedCtrl
                          .onChange(val ?? HorseSanitizersUsedRadio.no),
                      groupValue: sanitizersUsedCtrl.charcter,
                      noAnswerValue: HorseSanitizersUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersUsedCtrl
                          .onChange(val ?? HorseSanitizersUsedRadio.noAnswer)),
                  if (sanitizersUsedCtrl.charcter ==
                      HorseSanitizersUsedRadio.yes)
                    const HorsesanitizersUsedWidget()

                  ///? push in api id 183
                ],
              );
            }),

        //!-----------------------
        LabelWidget(label: "Are milking equipment disinfectants used?".tr),
        GetBuilder<HorseSanitizersMilkerToolsRadioController>(
            init: HorseSanitizersMilkerToolsRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseSanitizersMilkerToolsRadio,
                      yesValue: HorseSanitizersMilkerToolsRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? HorseSanitizersMilkerToolsRadio.yes),
                      noValue: HorseSanitizersMilkerToolsRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? HorseSanitizersMilkerToolsRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: HorseSanitizersMilkerToolsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          sanitizersMilkerToolsCtrl.onChange(
                              val ?? HorseSanitizersMilkerToolsRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      HorseSanitizersMilkerToolsRadio.yes)
                    const HorsesanitizersMilkerToolsWidget() //? push in api id 186
                ],
              );
            }),
        //!-----------------------
        LabelWidget(
            label:
                "Is a milk sample examined for early detection of mastitis?".tr),
        GetBuilder<HorseMIlkSampleRadioController>(
            init: HorseMIlkSampleRadioController(),
            builder: (milkSampleCtrl) {
              return HorseOperationalRadioWidget(
                  enumName: HorseMIlkSampleRadio,
                  yesValue: HorseMIlkSampleRadio.yes, //? push in api id 189
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? HorseMIlkSampleRadio.yes),
                  noValue: HorseMIlkSampleRadio.no, //? push in api id 190
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? HorseMIlkSampleRadio.no),
                  groupValue: milkSampleCtrl.charcter,
                  noAnswerValue: HorseMIlkSampleRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkSampleCtrl
                      .onChange(val ?? HorseMIlkSampleRadio.noAnswer));
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are nipple sinks used?".tr),

        GetBuilder<HorseNipplesSkinUsedRadioController>(
            init: HorseNipplesSkinUsedRadioController(),
            builder: (nippleSkinCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseNipplesSkinUsedRadio,
                      yesValue: HorseNipplesSkinUsedRadio.yes,
                      onChangedYes: (val) => nippleSkinCtrl
                          .onChange(val ?? HorseNipplesSkinUsedRadio.yes),
                      noValue: HorseNipplesSkinUsedRadio.no,
                      onChangedNo: (val) => nippleSkinCtrl
                          .onChange(val ?? HorseNipplesSkinUsedRadio.no),
                      groupValue: nippleSkinCtrl.charcter,
                      noAnswerValue: HorseNipplesSkinUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => nippleSkinCtrl
                          .onChange(val ?? HorseNipplesSkinUsedRadio.noAnswer)),
                  if (nippleSkinCtrl.charcter == HorseNipplesSkinUsedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when use Nipple Skin?".tr),
                        GetBuilder<HorseDipperRadioController>(
                            init: HorseDipperRadioController(),
                            builder: (milkSampleCtrl) {
                              return HorseDipperRadioWidget(
                                  enumName: HorseDipperRadio,
                                  yesValue: HorseDipperRadio
                                      .after, //? push in api id 191
                                  onChangedYes: (val) => milkSampleCtrl
                                      .onChange(val ?? HorseDipperRadio.after),
                                  noValue: HorseDipperRadio
                                      .before, //? push in api id 192
                                  onChangedNo: (val) => milkSampleCtrl
                                      .onChange(val ?? HorseDipperRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: HorseDipperRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? HorseDipperRadio.noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Is the udder washed?".tr),
        GetBuilder<HorseIfUdderWashedController>(
            init: HorseIfUdderWashedController(),
            builder: (ifUdderWashed) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseIfUdderWashed,
                      yesValue: HorseIfUdderWashed.yes,
                      onChangedYes: (val) =>
                          ifUdderWashed.onChange(val ?? HorseIfUdderWashed.yes),
                      noValue: HorseIfUdderWashed.no,
                      onChangedNo: (val) =>
                          ifUdderWashed.onChange(val ?? HorseIfUdderWashed.no),
                      groupValue: ifUdderWashed.charcter,
                      noAnswerValue: HorseIfUdderWashed.noAnswer,
                      onChangedNoAnswer: (val) => ifUdderWashed
                          .onChange(val ?? HorseIfUdderWashed.noAnswer)),
                  if (ifUdderWashed.charcter == HorseIfUdderWashed.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when udder washed?".tr),
                        GetBuilder<HorseUdderWashedRadioController>(
                            init: HorseUdderWashedRadioController(),
                            builder: (milkSampleCtrl) {
                              return HorseDipperRadioWidget(
                                  enumName: HorseUdderWashedRadio,
                                  yesValue: HorseUdderWashedRadio
                                      .after, //? push in api id 193
                                  onChangedYes: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? HorseUdderWashedRadio.after),
                                  noValue: HorseUdderWashedRadio
                                      .before, //? push in api id 194
                                  onChangedNo: (val) => milkSampleCtrl.onChange(
                                      val ?? HorseUdderWashedRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: HorseUdderWashedRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(val ??
                                          HorseUdderWashedRadio.noAnswer));
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
        const HorseMastitisMilkedWidget(),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are there animals with insects?".tr),
        GetBuilder<HorseInsectExistRadioController>(
            init: HorseInsectExistRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  HorseOperationalRadioWidget(
                      enumName: HorseInsectExistRadio,
                      yesValue:
                          HorseInsectExistRadio.yes, //? push in api id 198
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? HorseInsectExistRadio.yes),
                      noValue: HorseInsectExistRadio.no, //? push in api id 199
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? HorseInsectExistRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: HorseInsectExistRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? HorseInsectExistRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      HorseInsectExistRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "How many animals are infected?".tr),
                        HorseOperationalTextFieldWidget(
                            title: "How many animals are infected?".tr ,
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
                        GetBuilder<HorseInsectAnimalPestControlRadioController>(
                            init: HorseInsectAnimalPestControlRadioController(),
                            builder: (animalPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorseOperationalRadioWidget(
                                      enumName:
                                          HorseInsectAnimalPestControlRadio,
                                      yesValue:
                                          HorseInsectAnimalPestControlRadio.yes,
                                      onChangedYes: (val) => animalPestCtrl
                                          .onChange(val ??
                                              HorseInsectAnimalPestControlRadio
                                                  .yes),
                                      noValue:
                                          HorseInsectAnimalPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              HorseInsectAnimalPestControlRadio
                                                  .no),
                                      groupValue: animalPestCtrl.charcter,
                                      noAnswerValue:
                                          HorseInsectAnimalPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              HorseInsectAnimalPestControlRadio
                                                  .noAnswer)),
                                  if (animalPestCtrl.charcter ==
                                      HorseInsectAnimalPestControlRadio.yes)
                                    const HorseChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label: "Is there an Farm pest control program?".tr),
                        GetBuilder<HorseInsectFarmPestControlRadioController>(
                            init: HorseInsectFarmPestControlRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorseOperationalRadioWidget(
                                      enumName: HorseInsectFarmPestControlRadio,
                                      yesValue:
                                          HorseInsectFarmPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              HorseInsectFarmPestControlRadio
                                                  .yes),
                                      noValue:
                                          HorseInsectFarmPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              HorseInsectFarmPestControlRadio
                                                  .no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          HorseInsectFarmPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              HorseInsectFarmPestControlRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      HorseInsectFarmPestControlRadio.yes)
                                    const HorseChemicalsFarmUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label:
                                "Are medicines used to prevent blood parasites periodically?".tr),
                        GetBuilder<HorsebloodParasitesRadioController>(
                            init: HorsebloodParasitesRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HorseOperationalRadioWidget(
                                      enumName: HorsebloodParasitesRadio,
                                      yesValue: HorsebloodParasitesRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              HorsebloodParasitesRadio.yes),
                                      noValue: HorsebloodParasitesRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              HorsebloodParasitesRadio.no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          HorsebloodParasitesRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              HorsebloodParasitesRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      HorsebloodParasitesRadio.yes)
                                    const HorsebloodParasitesWidget()
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
