// ignore_for_file: must_be_immutable
import 'package:animal_wealth/app/cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_animal_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_blood_parasites_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_dippers_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_farm_pest_control_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_if_udder_washed_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_insect_exist_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_milk_sample_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_milker_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_milker_tool_cleaned_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_nipple_skin_used_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_opertional_textfield_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_sanitizers_milker_tool_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_sanitizers_used_radio_controller.dart';
import 'package:animal_wealth/app/sheep_farm/sheep_health_practices_operational_biosecurity/controller/sheep_udder_washed_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import 'sheep_blood_parasites_widget.dart';
import 'sheep_chemicals_farm_used_widget.dart';
import 'sheep_chemicals_used_widget.dart';
import 'sheep_dipper_radio_widget.dart';
import 'sheep_mastitis_milked_widget.dart';
import 'sheep_milker_tools_sanitizers_widget.dart';
import 'sheep_operational_radio_widget.dart';
import 'sheep_operational_textfield_widget.dart';
import 'sheep_sanitizers_used_widget.dart';

class SheepMilkerExistWidget extends StatelessWidget {
  SheepMilkerExistWidget({Key? key}) : super(key: key);

  SheepOPertionalTextFieldController opertionalTextFieldController =
      Get.put(SheepOPertionalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!-----------------------
        LabelWidget(label: "Is the Milker cleaned ?".tr),
        GetBuilder<SheepMilkerCleanedRadioController>(
            init: SheepMilkerCleanedRadioController(),
            builder: (milkerCleanedCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepMilkerCleanedRadio,
                      yesValue:
                          SheepMilkerCleanedRadio.yes, //? push in api id 175
                      onChangedYes: (val) => milkerCleanedCtrl
                          .onChange(val ?? SheepMilkerCleanedRadio.yes),
                      noValue:
                          SheepMilkerCleanedRadio.no, //? push in api id 176
                      onChangedNo: (val) => milkerCleanedCtrl
                          .onChange(val ?? SheepMilkerCleanedRadio.no),
                      groupValue: milkerCleanedCtrl.charcter,
                      noAnswerValue: SheepMilkerCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerCleanedCtrl
                          .onChange(val ?? SheepMilkerCleanedRadio.noAnswer)),
                  if (milkerCleanedCtrl.charcter == SheepMilkerCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        SheepOperationalTextFieldWidget(
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
        GetBuilder<SheepMilkerToolsCleanedRadioController>(
            init: SheepMilkerToolsCleanedRadioController(),
            builder: (milkerToolsCleanedCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepMilkerToolsCleanedRadio,
                      yesValue: SheepMilkerToolsCleanedRadio
                          .yes, //? push in api id 178
                      onChangedYes: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? SheepMilkerToolsCleanedRadio.yes),
                      noValue: SheepMilkerToolsCleanedRadio
                          .no, //? push in api id 179
                      onChangedNo: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? SheepMilkerToolsCleanedRadio.no),
                      groupValue: milkerToolsCleanedCtrl.charcter,
                      noAnswerValue: SheepMilkerToolsCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          milkerToolsCleanedCtrl.onChange(
                              val ?? SheepMilkerToolsCleanedRadio.noAnswer)),
                  if (milkerToolsCleanedCtrl.charcter ==
                      SheepMilkerToolsCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        SheepOperationalTextFieldWidget(
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
        GetBuilder<SheepSanitizersUsedRadioController>(
            init: SheepSanitizersUsedRadioController(),
            builder: (sanitizersUsedCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepSanitizersUsedRadio,
                      yesValue:
                          SheepSanitizersUsedRadio.yes, //? push in api id 181
                      onChangedYes: (val) => sanitizersUsedCtrl
                          .onChange(val ?? SheepSanitizersUsedRadio.yes),
                      noValue:
                          SheepSanitizersUsedRadio.no, //? push in api id 182
                      onChangedNo: (val) => sanitizersUsedCtrl
                          .onChange(val ?? SheepSanitizersUsedRadio.no),
                      groupValue: sanitizersUsedCtrl.charcter,
                      noAnswerValue: SheepSanitizersUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersUsedCtrl
                          .onChange(val ?? SheepSanitizersUsedRadio.noAnswer)),
                  if (sanitizersUsedCtrl.charcter ==
                      SheepSanitizersUsedRadio.yes)
                    const SheepsanitizersUsedWidget()

                  ///? push in api id 183
                ],
              );
            }),

        //!-----------------------
        LabelWidget(label: "Are milking equipment disinfectants used?".tr),
        GetBuilder<SheepSanitizersMilkerToolsRadioController>(
            init: SheepSanitizersMilkerToolsRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepSanitizersMilkerToolsRadio,
                      yesValue: SheepSanitizersMilkerToolsRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? SheepSanitizersMilkerToolsRadio.yes),
                      noValue: SheepSanitizersMilkerToolsRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? SheepSanitizersMilkerToolsRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: SheepSanitizersMilkerToolsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          sanitizersMilkerToolsCtrl.onChange(
                              val ?? SheepSanitizersMilkerToolsRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      SheepSanitizersMilkerToolsRadio.yes)
                    const SheepsanitizersMilkerToolsWidget() //? push in api id 186
                ],
              );
            }),
        //!-----------------------
        LabelWidget(
            label: "Is a milk sample examined for early detection of mastitis?"
                .tr),
        GetBuilder<SheepMIlkSampleRadioController>(
            init: SheepMIlkSampleRadioController(),
            builder: (milkSampleCtrl) {
              return SheepOperationalRadioWidget(
                  enumName: SheepMIlkSampleRadio,
                  yesValue: SheepMIlkSampleRadio.yes, //? push in api id 189
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? SheepMIlkSampleRadio.yes),
                  noValue: SheepMIlkSampleRadio.no, //? push in api id 190
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? SheepMIlkSampleRadio.no),
                  groupValue: milkSampleCtrl.charcter,
                  noAnswerValue: SheepMIlkSampleRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkSampleCtrl
                      .onChange(val ?? SheepMIlkSampleRadio.noAnswer));
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are nipple sinks used?".tr),

        GetBuilder<SheepNipplesSkinUsedRadioController>(
            init: SheepNipplesSkinUsedRadioController(),
            builder: (nippleSkinCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepNipplesSkinUsedRadio,
                      yesValue: SheepNipplesSkinUsedRadio.yes,
                      onChangedYes: (val) => nippleSkinCtrl
                          .onChange(val ?? SheepNipplesSkinUsedRadio.yes),
                      noValue: SheepNipplesSkinUsedRadio.no,
                      onChangedNo: (val) => nippleSkinCtrl
                          .onChange(val ?? SheepNipplesSkinUsedRadio.no),
                      groupValue: nippleSkinCtrl.charcter,
                      noAnswerValue: SheepNipplesSkinUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => nippleSkinCtrl
                          .onChange(val ?? SheepNipplesSkinUsedRadio.noAnswer)),
                  if (nippleSkinCtrl.charcter == SheepNipplesSkinUsedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when use Nipple Skin?".tr),
                        GetBuilder<SheepDipperRadioController>(
                            init: SheepDipperRadioController(),
                            builder: (milkSampleCtrl) {
                              return SheepDipperRadioWidget(
                                  enumName: SheepDipperRadio,
                                  yesValue: SheepDipperRadio
                                      .after, //? push in api id 191
                                  onChangedYes: (val) => milkSampleCtrl
                                      .onChange(val ?? SheepDipperRadio.after),
                                  noValue: SheepDipperRadio
                                      .before, //? push in api id 192
                                  onChangedNo: (val) => milkSampleCtrl
                                      .onChange(val ?? SheepDipperRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: SheepDipperRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? SheepDipperRadio.noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Is the udder washed?".tr),
        GetBuilder<SheepIfUdderWashedController>(
            init: SheepIfUdderWashedController(),
            builder: (ifUdderWashed) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepIfUdderWashed,
                      yesValue: SheepIfUdderWashed.yes,
                      onChangedYes: (val) =>
                          ifUdderWashed.onChange(val ?? SheepIfUdderWashed.yes),
                      noValue: SheepIfUdderWashed.no,
                      onChangedNo: (val) =>
                          ifUdderWashed.onChange(val ?? SheepIfUdderWashed.no),
                      groupValue: ifUdderWashed.charcter,
                      noAnswerValue: SheepIfUdderWashed.noAnswer,
                      onChangedNoAnswer: (val) => ifUdderWashed
                          .onChange(val ?? SheepIfUdderWashed.noAnswer)),
                  if (ifUdderWashed.charcter == SheepIfUdderWashed.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when udder washed?".tr),
                        GetBuilder<SheepUdderWashedRadioController>(
                            init: SheepUdderWashedRadioController(),
                            builder: (milkSampleCtrl) {
                              return SheepDipperRadioWidget(
                                  enumName: SheepUdderWashedRadio,
                                  yesValue: SheepUdderWashedRadio
                                      .after, //? push in api id 193
                                  onChangedYes: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? SheepUdderWashedRadio.after),
                                  noValue: SheepUdderWashedRadio
                                      .before, //? push in api id 194
                                  onChangedNo: (val) => milkSampleCtrl.onChange(
                                      val ?? SheepUdderWashedRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: SheepUdderWashedRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(val ??
                                          SheepUdderWashedRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "When should animals with mastitis be milked?".tr),
        const SheepMastitisMilkedWidget(),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are there animals with insects?".tr),
        GetBuilder<SheepInsectExistRadioController>(
            init: SheepInsectExistRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  SheepOperationalRadioWidget(
                      enumName: SheepInsectExistRadio,
                      yesValue:
                          SheepInsectExistRadio.yes, //? push in api id 198
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? SheepInsectExistRadio.yes),
                      noValue: SheepInsectExistRadio.no, //? push in api id 199
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? SheepInsectExistRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: SheepInsectExistRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? SheepInsectExistRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      SheepInsectExistRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "How many animals are infected?".tr),
                        SheepOperationalTextFieldWidget(
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
                        GetBuilder<SheepInsectAnimalPestControlRadioController>(
                            init: SheepInsectAnimalPestControlRadioController(),
                            builder: (animalPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SheepOperationalRadioWidget(
                                      enumName:
                                          SheepInsectAnimalPestControlRadio,
                                      yesValue:
                                          SheepInsectAnimalPestControlRadio.yes,
                                      onChangedYes: (val) => animalPestCtrl
                                          .onChange(val ??
                                              SheepInsectAnimalPestControlRadio
                                                  .yes),
                                      noValue:
                                          SheepInsectAnimalPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              SheepInsectAnimalPestControlRadio
                                                  .no),
                                      groupValue: animalPestCtrl.charcter,
                                      noAnswerValue:
                                          SheepInsectAnimalPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              SheepInsectAnimalPestControlRadio
                                                  .noAnswer)),
                                  if (animalPestCtrl.charcter ==
                                      SheepInsectAnimalPestControlRadio.yes)
                                    const SheepChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label: "Is there an Farm pest control program?".tr),
                        GetBuilder<SheepInsectFarmPestControlRadioController>(
                            init: SheepInsectFarmPestControlRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SheepOperationalRadioWidget(
                                      enumName: SheepInsectFarmPestControlRadio,
                                      yesValue:
                                          SheepInsectFarmPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              SheepInsectFarmPestControlRadio
                                                  .yes),
                                      noValue:
                                          SheepInsectFarmPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              SheepInsectFarmPestControlRadio
                                                  .no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          SheepInsectFarmPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              SheepInsectFarmPestControlRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      SheepInsectFarmPestControlRadio.yes)
                                    const SheepChemicalsFarmUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label:
                                "Are medicines used to prevent blood parasites periodically?"
                                    .tr),
                        GetBuilder<SheepbloodParasitesRadioController>(
                            init: SheepbloodParasitesRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SheepOperationalRadioWidget(
                                      enumName: SheepbloodParasitesRadio,
                                      yesValue: SheepbloodParasitesRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              SheepbloodParasitesRadio.yes),
                                      noValue: SheepbloodParasitesRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              SheepbloodParasitesRadio.no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          SheepbloodParasitesRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              SheepbloodParasitesRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      SheepbloodParasitesRadio.yes)
                                    const SheepbloodParasitesWidget()
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
