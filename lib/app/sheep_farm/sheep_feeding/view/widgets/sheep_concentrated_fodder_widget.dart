import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../controller/sheep_blended_checkbox_controller.dart';
import '../../controller/sheep_feeding_date_controller.dart';
import '../../controller/sheep_feeding_textfield_controller.dart';
import '../../controller/sheep_fooder_radio_controller.dart';
import '../../controller/sheep_rodents_radio_controller.dart';
import '../../controller/sheep_salt_bars_radio_controller.dart';
import '../../controller/sheep_storage_appropriate_radio_controller.dart';
import '../../controller/sheep_synthetic_blended_radio_controller.dart';
import 'sheep_feed_textfield_widget.dart';
import 'sheep_fooder_radio_widget.dart';
import 'sheep_synthetic_blended_radio_widget.dart';

// ignore: must_be_immutable
class SheepConcentratedFodderWidget extends StatelessWidget {
  SheepConcentratedFodderWidget({Key? key}) : super(key: key);
  SheepFeedingTextfieldController textfieldCtrl =
      Get.put(SheepFeedingTextfieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendSheepHerdDataController>(
        init: SendSheepHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(label: "Synthetic or blended?".tr),
              GetBuilder<SheepSyntheticBlendedRadioController>(
                  init: SheepSyntheticBlendedRadioController(),
                  builder: (mainRadioCtrl) {
                    return Column(
                      children: [
                        SheepSyntheticBlendedRadioWidget(
                          enumName: SheepSyntheticBlendedRadio,
                          yesValue: SheepSyntheticBlendedRadio
                              .synthetic, //? push in api object with id 82
                          onChangedYes: (val) => mainRadioCtrl.onChange(
                              val ?? SheepSyntheticBlendedRadio.synthetic),
                          noValue: SheepSyntheticBlendedRadio
                              .blended, //? push in api object with id 83
                          onChangedNo: (val) => mainRadioCtrl.onChange(
                              val ?? SheepSyntheticBlendedRadio.blended),
                          groupValue: mainRadioCtrl.charcter,
                          noAnswerValue: SheepSyntheticBlendedRadio.noAnswer,
                          onChangedNoAnswer: (val) => mainRadioCtrl.onChange(
                              val ?? SheepSyntheticBlendedRadio.noAnswer),
                        ),
                        if (mainRadioCtrl.charcter ==
                            SheepSyntheticBlendedRadio.synthetic)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "Factory name : ".tr),
                              SheepFeedingTextFieldWidget(
                                  title: "Factory name : ".tr,
                                  onNoteChange: (val) {
                                    textfieldCtrl
                                        .onChangefactoryNmae(val ?? "");
                                  }),

                              //? push in api object with id 85
                              GetBuilder<SheepFeedingDateController>(
                                  init: SheepFeedingDateController(),
                                  builder: (dateCtrl) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        LabelWidget(
                                            label: "Expiration date? ".tr),
                                        CupertinoButton(
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
                                                    2,
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
                                                  "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 15),
                                                )),
                                            onPressed: () =>
                                                dateCtrl.onDateChange(context)),
                                      ],
                                    );
                                  }),
                            ],
                          ),
                        if (mainRadioCtrl.charcter ==
                            SheepSyntheticBlendedRadio.blended)
                          //!---------------------------*-------------------*-------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "Was it added?".tr),
                              GetBuilder<SheepblendedCheckboxController>(
                                  init:
                                      SheepblendedCheckboxController(choices: [
                                    "Anti-fungal",
                                    "salts or vitamins",
                                  ]),
                                  builder: (feedTypeCtrl) {
                                    return Column(
                                      children: List.generate(
                                          feedTypeCtrl.choicesBoolList.length,
                                          (index) {
                                        return ListTile(
                                          title:
                                              Text(feedTypeCtrl.choices[index]),
                                          leading: Checkbox(
                                            value: feedTypeCtrl
                                                .choicesBoolList[index],
                                            onChanged: (val) => feedTypeCtrl
                                                .onChange(val, index),
                                          ),
                                        );
                                      }),
                                    );
                                  })
                            ],
                          ),
                        //!---------------------------*-------------------*-------
                      ],
                    );
                  }),
              //? push in api object with id 86 if yes and 87 if no
              LabelWidget(label: "Is fodder stored?".tr),
              GetBuilder<SheepFooderRadioController>(
                  init: SheepFooderRadioController(),
                  builder: (fooderRadioCtrl) {
                    return Column(
                      children: [
                        SheepFooderRadioWidget(
                          enumName: SheepFooderRadio,
                          yesValue: SheepFooderRadio.yes,
                          onChangedYes: (val) => fooderRadioCtrl
                              .onChange(val ?? SheepFooderRadio.yes),
                          noValue: SheepFooderRadio.no,
                          onChangedNo: (val) => fooderRadioCtrl
                              .onChange(val ?? SheepFooderRadio.no),
                          groupValue: fooderRadioCtrl.charcter,
                          noAnswerValue: SheepFooderRadio.noAnswer,
                          onChangedNoAnswer: (val) => fooderRadioCtrl
                              .onChange(val ?? SheepFooderRadio.noAnswer),
                        ),
                        if (fooderRadioCtrl.charcter == SheepFooderRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //? push in api object with id 88 if yes and 89 if no
                              LabelWidget(
                                  label:
                                      "Is the storage appropriate? (in terms of temperature, humidity, ventilation, and sealing)"
                                          .tr),
                              GetBuilder<
                                      SheepStorageAppropriateRadioController>(
                                  init:
                                      SheepStorageAppropriateRadioController(),
                                  builder: (storageCtrl) {
                                    return SheepFooderRadioWidget(
                                      enumName: SheepStorageAppropriateRadio,
                                      yesValue:
                                          SheepStorageAppropriateRadio.yes,
                                      onChangedYes: (val) =>
                                          storageCtrl.onChange(val ??
                                              SheepStorageAppropriateRadio.yes),
                                      noValue: SheepStorageAppropriateRadio.no,
                                      onChangedNo: (val) =>
                                          storageCtrl.onChange(val ??
                                              SheepStorageAppropriateRadio.no),
                                      groupValue: storageCtrl.charcter,
                                      noAnswerValue:
                                          SheepStorageAppropriateRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          storageCtrl.onChange(val ??
                                              SheepStorageAppropriateRadio
                                                  .noAnswer),
                                    );
                                  }),

                              //!-------------------------------------------------------------------
                              //? push in api object with id 90 if yes and 91 if no
                              LabelWidget(
                                  label: "Are there rodents in the bush store?"
                                      .tr),
                              GetBuilder<SheeprodentsRadioController>(
                                  init: SheeprodentsRadioController(),
                                  builder: (rodentsCtrl) {
                                    return SheepFooderRadioWidget(
                                      enumName: SheeprodentsRadio,
                                      yesValue: SheeprodentsRadio.yes,
                                      onChangedYes: (val) =>
                                          rodentsCtrl.onChange(
                                              val ?? SheeprodentsRadio.yes),
                                      noValue: SheeprodentsRadio.no,
                                      onChangedNo: (val) =>
                                          rodentsCtrl.onChange(
                                              val ?? SheeprodentsRadio.no),
                                      groupValue: rodentsCtrl.charcter,
                                      noAnswerValue: SheeprodentsRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          rodentsCtrl.onChange(val ??
                                              SheeprodentsRadio.noAnswer),
                                    );
                                  }),
                            ],
                          ),
                      ],
                    );
                  }),
              //? push in api object with id 92 if yes and 93 if no
              LabelWidget(label: "Are salt bars added?".tr),
              GetBuilder<SheepSaltBarsRadioController>(
                  init: SheepSaltBarsRadioController(),
                  builder: (saltCtrl) {
                    return SheepFooderRadioWidget(
                      enumName: SheepSaltBarsRadio,
                      yesValue: SheepSaltBarsRadio.yes,
                      onChangedYes: (val) =>
                          saltCtrl.onChange(val ?? SheepSaltBarsRadio.yes),
                      noValue: SheepSaltBarsRadio.no,
                      onChangedNo: (val) =>
                          saltCtrl.onChange(val ?? SheepSaltBarsRadio.no),
                      groupValue: saltCtrl.charcter,
                      noAnswerValue: SheepSaltBarsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          saltCtrl.onChange(val ?? SheepSaltBarsRadio.noAnswer),
                    );
                  }),
            ],
          );
        });
  }
}
