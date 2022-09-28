import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../controller/goat_blended_checkbox_controller.dart';
import '../../controller/goat_feeding_date_controller.dart';
import '../../controller/goat_feeding_textfield_controller.dart';
import '../../controller/goat_fooder_radio_controller.dart';
import '../../controller/goat_rodents_radio_controller.dart';
import '../../controller/goat_salt_bars_radio_controller.dart';
import '../../controller/goat_storage_appropriate_radio_controller.dart';
import '../../controller/goat_synthetic_blended_radio_controller.dart';
import 'goat_feed_textfield_widget.dart';
import 'goat_fooder_radio_widget.dart';
import 'goat_synthetic_blended_radio_widget.dart';

// ignore: must_be_immutable
class GoatConcentratedFodderWidget extends StatelessWidget {
  GoatConcentratedFodderWidget({Key? key}) : super(key: key);
  GoatFeedingTextfieldController textfieldCtrl =
      Get.put(GoatFeedingTextfieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendGoatHerdDataController>(
        init: SendGoatHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(label: "Synthetic or blended?".tr),
              GetBuilder<GoatSyntheticBlendedRadioController>(
                  init: GoatSyntheticBlendedRadioController(),
                  builder: (mainRadioCtrl) {
                    return Column(
                      children: [
                        GoatSyntheticBlendedRadioWidget(
                          enumName: GoatSyntheticBlendedRadio,
                          yesValue: GoatSyntheticBlendedRadio
                              .synthetic, //? push in api object with id 82
                          onChangedYes: (val) => mainRadioCtrl.onChange(
                              val ?? GoatSyntheticBlendedRadio.synthetic),
                          noValue: GoatSyntheticBlendedRadio
                              .blended, //? push in api object with id 83
                          onChangedNo: (val) => mainRadioCtrl.onChange(
                              val ?? GoatSyntheticBlendedRadio.blended),
                          groupValue: mainRadioCtrl.charcter,
                          noAnswerValue: GoatSyntheticBlendedRadio.noAnswer,
                          onChangedNoAnswer: (val) => mainRadioCtrl.onChange(
                              val ?? GoatSyntheticBlendedRadio.noAnswer),
                        ),
                        if (mainRadioCtrl.charcter ==
                            GoatSyntheticBlendedRadio.synthetic)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "Factory name : ".tr),
                              GoatFeedingTextFieldWidget(
                                  title: "Factory name : ".tr,
                                  onNoteChange: (val) {
                                    textfieldCtrl
                                        .onChangefactoryNmae(val ?? "");
                                  }),
                              /* LabelWidget(label: "Expiration date : "),*/
                              /*
                            GetBuilder<ImagePickerController>(
                                init: ImagePickerController(),
                                builder: (imgCtrl) {
                                  return InkWell(
                                      onTap: () {
                                        imgCtrl.pickImageFromCam();
                                      },
                                      child: ImagesWidget(
                                          path1: imgCtrl.image.path,
                                          file1: imgCtrl.image));
                                }),
                                */
                              //? push in api object with id 85
                              GetBuilder<GoatFeedingDateController>(
                                  init: GoatFeedingDateController(),
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
                            GoatSyntheticBlendedRadio.blended)
                          //!---------------------------*-------------------*-------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelWidget(label: "Was it added?".tr),
                              GetBuilder<GoatblendedCheckboxController>(
                                  init: GoatblendedCheckboxController(choices: [
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
              GetBuilder<GoatFooderRadioController>(
                  init: GoatFooderRadioController(),
                  builder: (fooderRadioCtrl) {
                    return Column(
                      children: [
                        GoatFooderRadioWidget(
                          enumName: GoatFooderRadio,
                          yesValue: GoatFooderRadio.yes,
                          onChangedYes: (val) => fooderRadioCtrl
                              .onChange(val ?? GoatFooderRadio.yes),
                          noValue: GoatFooderRadio.no,
                          onChangedNo: (val) => fooderRadioCtrl
                              .onChange(val ?? GoatFooderRadio.no),
                          groupValue: fooderRadioCtrl.charcter,
                          noAnswerValue: GoatFooderRadio.noAnswer,
                          onChangedNoAnswer: (val) => fooderRadioCtrl
                              .onChange(val ?? GoatFooderRadio.noAnswer),
                        ),
                        if (fooderRadioCtrl.charcter == GoatFooderRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //? push in api object with id 88 if yes and 89 if no
                              LabelWidget(
                                  label:
                                      "Is the storage appropriate? (in terms of temperature, humidity, ventilation, and sealing)"
                                          .tr),
                              GetBuilder<GoatStorageAppropriateRadioController>(
                                  init: GoatStorageAppropriateRadioController(),
                                  builder: (storageCtrl) {
                                    return GoatFooderRadioWidget(
                                      enumName: GoatStorageAppropriateRadio,
                                      yesValue: GoatStorageAppropriateRadio.yes,
                                      onChangedYes: (val) =>
                                          storageCtrl.onChange(val ??
                                              GoatStorageAppropriateRadio.yes),
                                      noValue: GoatStorageAppropriateRadio.no,
                                      onChangedNo: (val) =>
                                          storageCtrl.onChange(val ??
                                              GoatStorageAppropriateRadio.no),
                                      groupValue: storageCtrl.charcter,
                                      noAnswerValue:
                                          GoatStorageAppropriateRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          storageCtrl.onChange(val ??
                                              GoatStorageAppropriateRadio
                                                  .noAnswer),
                                    );
                                  }),

                              //!-------------------------------------------------------------------
                              //? push in api object with id 90 if yes and 91 if no
                              LabelWidget(
                                  label: "Are there rodents in the bush store?"
                                      .tr),
                              GetBuilder<GoatrodentsRadioController>(
                                  init: GoatrodentsRadioController(),
                                  builder: (rodentsCtrl) {
                                    return GoatFooderRadioWidget(
                                      enumName: GoatrodentsRadio,
                                      yesValue: GoatrodentsRadio.yes,
                                      onChangedYes: (val) =>
                                          rodentsCtrl.onChange(
                                              val ?? GoatrodentsRadio.yes),
                                      noValue: GoatrodentsRadio.no,
                                      onChangedNo: (val) => rodentsCtrl
                                          .onChange(val ?? GoatrodentsRadio.no),
                                      groupValue: rodentsCtrl.charcter,
                                      noAnswerValue: GoatrodentsRadio.noAnswer,
                                      onChangedNoAnswer: (val) =>
                                          rodentsCtrl.onChange(
                                              val ?? GoatrodentsRadio.noAnswer),
                                    );
                                  }),
                            ],
                          ),
                      ],
                    );
                  }),
              //? push in api object with id 92 if yes and 93 if no
              LabelWidget(label: "Are salt bars added?".tr),
              GetBuilder<GoatSaltBarsRadioController>(
                  init: GoatSaltBarsRadioController(),
                  builder: (saltCtrl) {
                    return GoatFooderRadioWidget(
                      enumName: GoatSaltBarsRadio,
                      yesValue: GoatSaltBarsRadio.yes,
                      onChangedYes: (val) =>
                          saltCtrl.onChange(val ?? GoatSaltBarsRadio.yes),
                      noValue: GoatSaltBarsRadio.no,
                      onChangedNo: (val) =>
                          saltCtrl.onChange(val ?? GoatSaltBarsRadio.no),
                      groupValue: saltCtrl.charcter,
                      noAnswerValue: GoatSaltBarsRadio.noAnswer,
                      onChangedNoAnswer: (val) =>
                          saltCtrl.onChange(val ?? GoatSaltBarsRadio.noAnswer),
                    );
                  }),
            ],
          );
        });
  }
}
