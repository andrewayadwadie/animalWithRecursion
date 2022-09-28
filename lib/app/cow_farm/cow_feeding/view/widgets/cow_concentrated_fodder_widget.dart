import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../controller/cow_blended_checkbox_controller.dart';
import '../../controller/cow_feeding_date_controller.dart';
import '../../controller/cow_feeding_textfield_controller.dart';
import '../../controller/cow_fooder_radio_controller.dart';
import '../../controller/cow_rodents_radio_controller.dart';
import '../../controller/cow_salt_bars_radio_controller.dart';
import '../../controller/cow_storage_appropriate_radio_controller.dart';
import '../../controller/cow_synthetic_blended_radio_controller.dart';
import 'cow_feed_textfield_widget.dart';
import 'cow_fooder_radio_widget.dart';
import 'cow_synthetic_blended_radio_widget.dart';

// ignore: must_be_immutable
class CowConcentratedFodderWidget extends StatelessWidget {
  CowConcentratedFodderWidget({Key? key}) : super(key: key);
  CowFeedingTextfieldController textfieldCtrl =
      Get.put(CowFeedingTextfieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCowHerdDataController>(
        init: SendCowHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(label: "Synthetic or blended?".tr),
              GetBuilder<CowSyntheticBlendedRadioController>(
                  init: CowSyntheticBlendedRadioController(),
                  builder: (mainRadioCtrl) {
                    return Column(
                      children: [
                        CowSyntheticBlendedRadioWidget(
                          enumName: CowSyntheticBlendedRadio,
                          yesValue: CowSyntheticBlendedRadio
                              .synthetic, //? push in api object with id 82
                          onChangedYes: (val) => mainRadioCtrl.onChange(
                              val ?? CowSyntheticBlendedRadio.synthetic),
                          noValue: CowSyntheticBlendedRadio
                              .blended, //? push in api object with id 83
                          onChangedNo: (val) => mainRadioCtrl.onChange(
                              val ?? CowSyntheticBlendedRadio.blended),
                          groupValue: mainRadioCtrl.charcter,
                          noAnswerValue: CowSyntheticBlendedRadio.noAnswer,
                          onChangedNoAnswer: (val) => mainRadioCtrl.onChange(
                              val ?? CowSyntheticBlendedRadio.noAnswer),
                        ),
                        if (mainRadioCtrl.charcter ==
                            CowSyntheticBlendedRadio.synthetic)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "Factory name : ".tr),
                              CowFeedingTextFieldWidget(
                                  title: "Factory name :".tr,
                                  onNoteChange: (val) {
                                    textfieldCtrl
                                        .onChangefactoryNmae(val ?? "");
                                  }),

                              //? push in api object with id 85
                              GetBuilder<CowFeedingDateController>(
                                  init: CowFeedingDateController(),
                                  builder: (dateCtrl) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        LabelWidget(
                                            label: 'Expiration date? '.tr),
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
                            CowSyntheticBlendedRadio.blended)
                          //!---------------------------*-------------------*-------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: 'Was it added?'.tr),
                              GetBuilder<CowblendedCheckboxController>(
                                  init: CowblendedCheckboxController(choices: [
                                    "Anti-fungal",
                                    "salts or vitamins",
                                  ]),
                                  builder: (feedTypeCtrl) {
                                    return Column(
                                      children: List.generate(
                                          feedTypeCtrl.choicesBoolList.length,
                                          (index) {
                                        return ListTile(
                                          title: Text(
                                              feedTypeCtrl.choices[index].tr),
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
              GetBuilder<CowFooderRadioController>(
                  init: CowFooderRadioController(),
                  builder: (fooderRadioCtrl) {
                    return Column(
                      children: [
                        CowFooderRadioWidget(
                          enumName: CowFooderRadio,
                          yesValue: CowFooderRadio.yes,
                          onChangedYes: (val) => fooderRadioCtrl
                              .onChange(val ?? CowFooderRadio.yes),
                          noValue: CowFooderRadio.no,
                          onChangedNo: (val) => fooderRadioCtrl
                              .onChange(val ?? CowFooderRadio.no),
                          groupValue: fooderRadioCtrl.charcter,
                          noAnswerValue: CowFooderRadio.noAnswer,
                          onChangedNoAnswer: (val) => fooderRadioCtrl
                              .onChange(val ?? CowFooderRadio.noAnswer),
                        ),
                        if (fooderRadioCtrl.charcter == CowFooderRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //? push in api object with id 88 if yes and 89 if no
                              LabelWidget(
                                  label:
                                      "Is the storage appropriate? (in terms of temperature, humidity, ventilation, and sealing)"
                                          .tr),
                              GetBuilder<CowStorageAppropriateRadioController>(
                                  init: CowStorageAppropriateRadioController(),
                                  builder: (storageCtrl) {
                                    return CowFooderRadioWidget(
                                      enumName: CowStorageAppropriateRadio,
                                      yesValue: CowStorageAppropriateRadio.yes,
                                      onChangedYes: (val) =>
                                          storageCtrl.onChange(val ??
                                              CowStorageAppropriateRadio.yes),
                                      noValue: CowStorageAppropriateRadio.no,
                                      onChangedNo: (val) =>
                                          storageCtrl.onChange(val ??
                                              CowStorageAppropriateRadio.no),
                                      groupValue: storageCtrl.charcter,
                                      noAnswerValue:
                                          CowStorageAppropriateRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          storageCtrl.onChange(val ??
                                              CowStorageAppropriateRadio
                                                  .noAnswer),
                                    );
                                  }),

                              //!-------------------------------------------------------------------
                              //? push in api object with id 90 if yes and 91 if no
                              LabelWidget(
                                  label: "Are there rodents in the bush store?"
                                      .tr),
                              GetBuilder<CowrodentsRadioController>(
                                  init: CowrodentsRadioController(),
                                  builder: (rodentsCtrl) {
                                    return CowFooderRadioWidget(
                                      enumName: CowrodentsRadio,
                                      yesValue: CowrodentsRadio.yes,
                                      onChangedYes: (val) => rodentsCtrl
                                          .onChange(val ?? CowrodentsRadio.yes),
                                      noValue: CowrodentsRadio.no,
                                      onChangedNo: (val) => rodentsCtrl
                                          .onChange(val ?? CowrodentsRadio.no),
                                      groupValue: rodentsCtrl.charcter,
                                      noAnswerValue: CowrodentsRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          rodentsCtrl.onChange(
                                              val ?? CowrodentsRadio.noAnswer),
                                    );
                                  }),
                            ],
                          ),
                      ],
                    );
                  }),
              //? push in api object with id 92 if yes and 93 if no
              LabelWidget(label: 'Are salt bars added?'.tr),
              GetBuilder<CowSaltBarsRadioController>(
                  init: CowSaltBarsRadioController(),
                  builder: (saltCtrl) {
                    return CowFooderRadioWidget(
                      enumName: CowSaltBarsRadio,
                      yesValue: CowSaltBarsRadio.yes,
                      onChangedYes: (val) =>
                          saltCtrl.onChange(val ?? CowSaltBarsRadio.yes),
                      noValue: CowSaltBarsRadio.no,
                      onChangedNo: (val) =>
                          saltCtrl.onChange(val ?? CowSaltBarsRadio.no),
                      groupValue: saltCtrl.charcter,
                      noAnswerValue: CowSaltBarsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          saltCtrl.onChange(val ?? CowSaltBarsRadio.noAnswer),
                    );
                  }),
            ],
          );
        });
  }
}
