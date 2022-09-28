// ignore_for_file: must_be_immutable

import 'package:animal_wealth/app/camel_farm/camel_health_practices_operational_biosecurity/controller/camel_if_udder_washed_controller.dart';
import 'package:animal_wealth/app/camel_farm/camel_health_practices_operational_biosecurity/controller/camel_nipple_skin_used_radio_controller.dart';
import 'package:animal_wealth/app/camel_farm/camel_health_practices_operational_biosecurity/controller/camel_opertional_textfield_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_animal_pest_control_radio_controller.dart';
import '../../controller/camel_blood_parasites_radio_controller.dart';
import '../../controller/camel_dippers_radio_controller.dart';
import '../../controller/camel_farm_pest_control_radio_controller.dart';
import '../../controller/camel_insect_exist_radio_controller.dart';
import '../../controller/camel_milk_sample_radio_controller.dart';
import '../../controller/camel_milker_cleaned_radio_controller.dart';
import '../../controller/camel_milker_tool_cleaned_radio_controller.dart';
import '../../controller/camel_sanitizers_milker_tool_radio_controller.dart';
import '../../controller/camel_sanitizers_used_radio_controller.dart';
import '../../controller/camel_udder_washed_radio_controller.dart';
import 'camel_blood_parasites_widget.dart';
import 'camel_chemicals_farm_used_widget.dart';
import 'camel_chemicals_used_widget.dart';
import 'camel_dipper_radio_widget.dart';
import 'camel_mastitis_milked_widget.dart';
import 'camel_milker_tools_sanitizers_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';
import 'camel_sanitizers_used_widget.dart';

class CamelMilkerExistWidget extends StatelessWidget {
  CamelMilkerExistWidget({Key? key}) : super(key: key);

  CamelOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CamelOPertionalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!-----------------------
        LabelWidget(label: "Is the Milker cleaned ?".tr),
        GetBuilder<CamelMilkerCleanedRadioController>(
            init: CamelMilkerCleanedRadioController(),
            builder: (milkerCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelMilkerCleanedRadio,
                      yesValue:
                          CamelMilkerCleanedRadio.yes, //? push in api id 175
                      onChangedYes: (val) => milkerCleanedCtrl
                          .onChange(val ?? CamelMilkerCleanedRadio.yes),
                      noValue:
                          CamelMilkerCleanedRadio.no, //? push in api id 176
                      onChangedNo: (val) => milkerCleanedCtrl
                          .onChange(val ?? CamelMilkerCleanedRadio.no),
                      groupValue: milkerCleanedCtrl.charcter,
                      noAnswerValue: CamelMilkerCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) => milkerCleanedCtrl
                          .onChange(val ?? CamelMilkerCleanedRadio.noAnswer)),
                  if (milkerCleanedCtrl.charcter == CamelMilkerCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CamelOperationalTextFieldWidget(
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
        GetBuilder<CamelMilkerToolsCleanedRadioController>(
            init: CamelMilkerToolsCleanedRadioController(),
            builder: (milkerToolsCleanedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelMilkerToolsCleanedRadio,
                      yesValue: CamelMilkerToolsCleanedRadio
                          .yes, //? push in api id 178
                      onChangedYes: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? CamelMilkerToolsCleanedRadio.yes),
                      noValue: CamelMilkerToolsCleanedRadio
                          .no, //? push in api id 179
                      onChangedNo: (val) => milkerToolsCleanedCtrl
                          .onChange(val ?? CamelMilkerToolsCleanedRadio.no),
                      groupValue: milkerToolsCleanedCtrl.charcter,
                      noAnswerValue: CamelMilkerToolsCleanedRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          milkerToolsCleanedCtrl.onChange(
                              val ?? CamelMilkerToolsCleanedRadio.noAnswer)),
                  if (milkerToolsCleanedCtrl.charcter ==
                      CamelMilkerToolsCleanedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "how many times?".tr),
                        CamelOperationalTextFieldWidget(
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
        GetBuilder<CamelSanitizersUsedRadioController>(
            init: CamelSanitizersUsedRadioController(),
            builder: (sanitizersUsedCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelSanitizersUsedRadio,
                      yesValue:
                          CamelSanitizersUsedRadio.yes, //? push in api id 181
                      onChangedYes: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CamelSanitizersUsedRadio.yes),
                      noValue:
                          CamelSanitizersUsedRadio.no, //? push in api id 182
                      onChangedNo: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CamelSanitizersUsedRadio.no),
                      groupValue: sanitizersUsedCtrl.charcter,
                      noAnswerValue: CamelSanitizersUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersUsedCtrl
                          .onChange(val ?? CamelSanitizersUsedRadio.noAnswer)),
                  if (sanitizersUsedCtrl.charcter ==
                      CamelSanitizersUsedRadio.yes)
                    const CamelsanitizersUsedWidget()

                  ///? push in api id 183
                ],
              );
            }),

        //!-----------------------
        LabelWidget(label: "Are milking equipment disinfectants used?".tr),
        GetBuilder<CamelSanitizersMilkerToolsRadioController>(
            init: CamelSanitizersMilkerToolsRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelSanitizersMilkerToolsRadio,
                      yesValue: CamelSanitizersMilkerToolsRadio.yes,
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelSanitizersMilkerToolsRadio.yes),
                      noValue: CamelSanitizersMilkerToolsRadio.no,
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelSanitizersMilkerToolsRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: CamelSanitizersMilkerToolsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          sanitizersMilkerToolsCtrl.onChange(
                              val ?? CamelSanitizersMilkerToolsRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      CamelSanitizersMilkerToolsRadio.yes)
                    const CamelsanitizersMilkerToolsWidget() //? push in api id 186
                ],
              );
            }),
        //!-----------------------
        LabelWidget(
            label: "Is a milk sample examined for early detection of mastitis?"
                .tr),
        GetBuilder<CamelMIlkSampleRadioController>(
            init: CamelMIlkSampleRadioController(),
            builder: (milkSampleCtrl) {
              return CamelOperationalRadioWidget(
                  enumName: CamelMIlkSampleRadio,
                  yesValue: CamelMIlkSampleRadio.yes, //? push in api id 189
                  onChangedYes: (val) =>
                      milkSampleCtrl.onChange(val ?? CamelMIlkSampleRadio.yes),
                  noValue: CamelMIlkSampleRadio.no, //? push in api id 190
                  onChangedNo: (val) =>
                      milkSampleCtrl.onChange(val ?? CamelMIlkSampleRadio.no),
                  groupValue: milkSampleCtrl.charcter,
                  noAnswerValue: CamelMIlkSampleRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkSampleCtrl
                      .onChange(val ?? CamelMIlkSampleRadio.noAnswer));
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are nipple sinks used?".tr),

        GetBuilder<CamelNipplesSkinUsedRadioController>(
            init: CamelNipplesSkinUsedRadioController(),
            builder: (nippleSkinCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelNipplesSkinUsedRadio,
                      yesValue: CamelNipplesSkinUsedRadio.yes,
                      onChangedYes: (val) => nippleSkinCtrl
                          .onChange(val ?? CamelNipplesSkinUsedRadio.yes),
                      noValue: CamelNipplesSkinUsedRadio.no,
                      onChangedNo: (val) => nippleSkinCtrl
                          .onChange(val ?? CamelNipplesSkinUsedRadio.no),
                      groupValue: nippleSkinCtrl.charcter,
                      noAnswerValue: CamelNipplesSkinUsedRadio.noAnswer,
                      onChangedNoAnswer: (val) => nippleSkinCtrl
                          .onChange(val ?? CamelNipplesSkinUsedRadio.noAnswer)),
                  if (nippleSkinCtrl.charcter == CamelNipplesSkinUsedRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when use Nipple Skin?".tr),
                        GetBuilder<CamelDipperRadioController>(
                            init: CamelDipperRadioController(),
                            builder: (milkSampleCtrl) {
                              return CamelDipperRadioWidget(
                                  enumName: CamelDipperRadio,
                                  yesValue: CamelDipperRadio
                                      .after, //? push in api id 191
                                  onChangedYes: (val) => milkSampleCtrl
                                      .onChange(val ?? CamelDipperRadio.after),
                                  noValue: CamelDipperRadio
                                      .before, //? push in api id 192
                                  onChangedNo: (val) => milkSampleCtrl
                                      .onChange(val ?? CamelDipperRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: CamelDipperRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? CamelDipperRadio.noAnswer));
                            }),
                      ],
                    ),
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: " Is the udder washed?".tr),
        GetBuilder<CamelIfUdderWashedController>(
            init: CamelIfUdderWashedController(),
            builder: (ifUdderWashed) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelIfUdderWashed,
                      yesValue: CamelIfUdderWashed.yes,
                      onChangedYes: (val) =>
                          ifUdderWashed.onChange(val ?? CamelIfUdderWashed.yes),
                      noValue: CamelIfUdderWashed.no,
                      onChangedNo: (val) =>
                          ifUdderWashed.onChange(val ?? CamelIfUdderWashed.no),
                      groupValue: ifUdderWashed.charcter,
                      noAnswerValue: CamelIfUdderWashed.noAnswer,
                      onChangedNoAnswer: (val) => ifUdderWashed
                          .onChange(val ?? CamelIfUdderWashed.noAnswer)),
                  if (ifUdderWashed.charcter == CamelIfUdderWashed.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "when udder washed?".tr),
                        GetBuilder<CamelUdderWashedRadioController>(
                            init: CamelUdderWashedRadioController(),
                            builder: (milkSampleCtrl) {
                              return CamelDipperRadioWidget(
                                  enumName: CamelUdderWashedRadio,
                                  yesValue: CamelUdderWashedRadio
                                      .after, //? push in api id 193
                                  onChangedYes: (val) =>
                                      milkSampleCtrl.onChange(
                                          val ?? CamelUdderWashedRadio.after),
                                  noValue: CamelUdderWashedRadio
                                      .before, //? push in api id 194
                                  onChangedNo: (val) => milkSampleCtrl.onChange(
                                      val ?? CamelUdderWashedRadio.before),
                                  groupValue: milkSampleCtrl.charcter,
                                  noAnswerValue: CamelUdderWashedRadio.noAnswer,
                                  onChangedNoAnswer: (val) =>
                                      milkSampleCtrl.onChange(val ??
                                          CamelUdderWashedRadio.noAnswer));
                            }),
                      ],
                    )
                ],
              );
            }),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "When should animals with mastitis be milked?".tr),
        const CamelMastitisMilkedWidget(),
        const LineWidget(),
        //!-----------------------
        LabelWidget(label: "Are there animals with insects?".tr),
        GetBuilder<CamelInsectExistRadioController>(
            init: CamelInsectExistRadioController(),
            builder: (sanitizersMilkerToolsCtrl) {
              return Column(
                children: [
                  CamelOperationalRadioWidget(
                      enumName: CamelInsectExistRadio,
                      yesValue:
                          CamelInsectExistRadio.yes, //? push in api id 198
                      onChangedYes: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelInsectExistRadio.yes),
                      noValue: CamelInsectExistRadio.no, //? push in api id 199
                      onChangedNo: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelInsectExistRadio.no),
                      groupValue: sanitizersMilkerToolsCtrl.charcter,
                      noAnswerValue: CamelInsectExistRadio.noAnswer,
                      onChangedNoAnswer: (val) => sanitizersMilkerToolsCtrl
                          .onChange(val ?? CamelInsectExistRadio.noAnswer)),
                  if (sanitizersMilkerToolsCtrl.charcter ==
                      CamelInsectExistRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "How many animals are infected?".tr),
                        CamelOperationalTextFieldWidget(
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
                        GetBuilder<CamelInsectAnimalPestControlRadioController>(
                            init: CamelInsectAnimalPestControlRadioController(),
                            builder: (animalPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelOperationalRadioWidget(
                                      enumName:
                                          CamelInsectAnimalPestControlRadio,
                                      yesValue:
                                          CamelInsectAnimalPestControlRadio.yes,
                                      onChangedYes: (val) => animalPestCtrl
                                          .onChange(val ??
                                              CamelInsectAnimalPestControlRadio
                                                  .yes),
                                      noValue:
                                          CamelInsectAnimalPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              CamelInsectAnimalPestControlRadio
                                                  .no),
                                      groupValue: animalPestCtrl.charcter,
                                      noAnswerValue:
                                          CamelInsectAnimalPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          animalPestCtrl.onChange(val ??
                                              CamelInsectAnimalPestControlRadio
                                                  .noAnswer)),
                                  if (animalPestCtrl.charcter ==
                                      CamelInsectAnimalPestControlRadio.yes)
                                    const CamelChemicalsUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label: "Is there an Farm pest control program?".tr),
                        GetBuilder<CamelInsectFarmPestControlRadioController>(
                            init: CamelInsectFarmPestControlRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelOperationalRadioWidget(
                                      enumName: CamelInsectFarmPestControlRadio,
                                      yesValue:
                                          CamelInsectFarmPestControlRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelInsectFarmPestControlRadio
                                                  .yes),
                                      noValue:
                                          CamelInsectFarmPestControlRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelInsectFarmPestControlRadio
                                                  .no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          CamelInsectFarmPestControlRadio
                                              .noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelInsectFarmPestControlRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      CamelInsectFarmPestControlRadio.yes)
                                    const CamelChemicalsFarmUsedWidget()
                                ],
                              );
                            }),
                        const LineWidget(),
                        LabelWidget(
                            label:
                                "Are medicines used to prevent blood parasites periodically?"
                                    .tr),
                        GetBuilder<CamelbloodParasitesRadioController>(
                            init: CamelbloodParasitesRadioController(),
                            builder: (farmPestCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CamelOperationalRadioWidget(
                                      enumName: CamelbloodParasitesRadio,
                                      yesValue: CamelbloodParasitesRadio.yes,
                                      onChangedYes: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelbloodParasitesRadio.yes),
                                      noValue: CamelbloodParasitesRadio.no,
                                      onChangedNo: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelbloodParasitesRadio.no),
                                      groupValue: farmPestCtrl.charcter,
                                      noAnswerValue:
                                          CamelbloodParasitesRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          farmPestCtrl.onChange(val ??
                                              CamelbloodParasitesRadio
                                                  .noAnswer)),
                                  if (farmPestCtrl.charcter ==
                                      CamelbloodParasitesRadio.yes)
                                    const CamelbloodParasitesWidget()
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
