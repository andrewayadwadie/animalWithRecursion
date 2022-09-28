import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../controller/camel_blended_checkbox_controller.dart';
import '../../controller/camel_feeding_date_controller.dart';
import '../../controller/camel_feeding_textfield_controller.dart';
import '../../controller/camel_fooder_radio_controller.dart';
import '../../controller/camel_rodents_radio_controller.dart';
import '../../controller/camel_salt_bars_radio_controller.dart';
import '../../controller/camel_storage_appropriate_radio_controller.dart';
import '../../controller/camel_synthetic_blended_radio_controller.dart';
import 'camel_feed_textfield_widget.dart';
import 'camel_fooder_radio_widget.dart';
import 'camel_synthetic_blended_radio_widget.dart';

// ignore: must_be_immutable
class CamelConcentratedFodderWidget extends StatelessWidget {
    CamelConcentratedFodderWidget({Key? key}) : super(key: key);
CamelFeedingTextfieldController textfieldCtrl = Get.put(CamelFeedingTextfieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendCamelHerdDataController>(
        init: SendCamelHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                LabelWidget(label: "Synthetic or blended?".tr),
              GetBuilder<CamelSyntheticBlendedRadioController>(
                  init: CamelSyntheticBlendedRadioController(),
                  builder: (mainRadioCtrl) {
                    return Column(
                      children: [
                        CamelSyntheticBlendedRadioWidget(
                            enumName: CamelSyntheticBlendedRadio,
                            yesValue: CamelSyntheticBlendedRadio
                                .synthetic, //? push in api object with id 82
                            onChangedYes: (val) => mainRadioCtrl.onChange(
                                val ?? CamelSyntheticBlendedRadio.synthetic),
                            noValue: CamelSyntheticBlendedRadio
                                .blended, //? push in api object with id 83
                            onChangedNo: (val) => mainRadioCtrl.onChange(
                                val ?? CamelSyntheticBlendedRadio.blended),
                            groupValue: mainRadioCtrl.charcter,
                            noAnswerValue: CamelSyntheticBlendedRadio.noAnswer,
                            onChangedNoAnswer:(val) => mainRadioCtrl.onChange(
                                val ?? CamelSyntheticBlendedRadio.noAnswer),
                            ),
                        if (mainRadioCtrl.charcter ==
                            CamelSyntheticBlendedRadio.synthetic)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                LabelWidget(label: "Factory name : ".tr),
                              CamelFeedingTextFieldWidget(
                                  title: "Factory name : ".tr,
                                  onNoteChange: (val) {
                                    textfieldCtrl.onChangefactoryNmae(val??"");
                                  }),
                             
                              //? push in api object with id 85
                              GetBuilder<CamelFeedingDateController>(
                                  init: CamelFeedingDateController(),
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
                            CamelSyntheticBlendedRadio.blended)
                         //!---------------------------*-------------------*-------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                LabelWidget(label: "Was it added?".tr),
                              GetBuilder<CamelblendedCheckboxController>(
                                  init:
                                      CamelblendedCheckboxController(choices: [ 
                                    "Anti-fungal",
                                    "salts or vitamins",
                                  ]),
                                  builder: (feedTypeCtrl) {
                                    return Column(
                                      children: List.generate(
                                          feedTypeCtrl.choicesBoolList
                                              .length, (index) {
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
              GetBuilder<CamelFooderRadioController>(
                  init: CamelFooderRadioController(),
                  builder: (fooderRadioCtrl) {
                    return Column(
                      children: [
                        CamelFooderRadioWidget(
                            enumName: CamelFooderRadio,
                            yesValue: CamelFooderRadio.yes,
                            onChangedYes: (val) => fooderRadioCtrl
                                .onChange(val ?? CamelFooderRadio.yes),
                            noValue: CamelFooderRadio.no,
                            onChangedNo: (val) => fooderRadioCtrl
                                .onChange(val ?? CamelFooderRadio.no),
                            groupValue: fooderRadioCtrl.charcter,
                            noAnswerValue: CamelFooderRadio.noAnswer ,
                            onChangedNoAnswer: (val) => fooderRadioCtrl
                                .onChange(val ?? CamelFooderRadio.noAnswer),
                            
                            ),
                        if (fooderRadioCtrl.charcter == CamelFooderRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //? push in api object with id 88 if yes and 89 if no
                                LabelWidget(
                                  label:
                                      "Is the storage appropriate? (in terms of temperature, humidity, ventilation, and sealing)".tr),
                              GetBuilder<
                                      CamelStorageAppropriateRadioController>(
                                  init:
                                      CamelStorageAppropriateRadioController(),
                                  builder: (storageCtrl) {
                                    return CamelFooderRadioWidget(
                                        enumName: CamelStorageAppropriateRadio,
                                        yesValue:
                                            CamelStorageAppropriateRadio.yes,
                                        onChangedYes: (val) =>
                                            storageCtrl.onChange(val ??
                                                CamelStorageAppropriateRadio
                                                    .yes),
                                        noValue:
                                            CamelStorageAppropriateRadio.no,
                                        onChangedNo: (val) =>
                                            storageCtrl.onChange(val ??
                                                CamelStorageAppropriateRadio
                                                    .no),
                                        groupValue: storageCtrl.charcter,
                                        noAnswerValue: CamelStorageAppropriateRadio.noAnswer,
                                        onChangedNoAnswer: (val) =>
                                            storageCtrl.onChange(val ??
                                                CamelStorageAppropriateRadio
                                                    .noAnswer),
                                        
                                        
                                        );
                                  }),

                              //!-------------------------------------------------------------------
                              //? push in api object with id 90 if yes and 91 if no
                                LabelWidget(
                                  label:
                                      "Are there rodents in the bush store?".tr),
                              GetBuilder<CamelrodentsRadioController>(
                                  init: CamelrodentsRadioController(),
                                  builder: (rodentsCtrl) {
                                    return CamelFooderRadioWidget(
                                        enumName: CamelrodentsRadio,
                                        yesValue: CamelrodentsRadio.yes,
                                        onChangedYes: (val) =>
                                            rodentsCtrl.onChange(
                                                val ?? CamelrodentsRadio.yes),
                                        noValue: CamelrodentsRadio.no,
                                        onChangedNo: (val) =>
                                            rodentsCtrl.onChange(
                                                val ?? CamelrodentsRadio.no),
                                        groupValue: rodentsCtrl.charcter,
                                        
                                        noAnswerValue: CamelrodentsRadio.noAnswer,
                                        onChangedNoAnswer: (val) =>
                                            rodentsCtrl.onChange(
                                                val ?? CamelrodentsRadio.noAnswer),
                                        
                                        
                                        
                                        );
                                  }),
                            ],
                          ),
                      ],
                    );
                  }),
              //? push in api object with id 92 if yes and 93 if no
                LabelWidget(label: "Are salt bars added?".tr),
              GetBuilder<CamelSaltBarsRadioController>(
                  init: CamelSaltBarsRadioController(),
                  builder: (saltCtrl) {
                    return CamelFooderRadioWidget(
                        enumName: CamelSaltBarsRadio,
                        yesValue: CamelSaltBarsRadio.yes,
                        onChangedYes: (val) =>
                            saltCtrl.onChange(val ?? CamelSaltBarsRadio.yes),
                        noValue: CamelSaltBarsRadio.no,
                        onChangedNo: (val) =>
                            saltCtrl.onChange(val ?? CamelSaltBarsRadio.no),
                        groupValue: saltCtrl.charcter,
                        noAnswerValue:CamelSaltBarsRadio.noAnswer ,
                        onChangedNoAnswer: (val) =>
                            saltCtrl.onChange(val ?? CamelSaltBarsRadio.noAnswer),
                        );
                  }),
            ],
          );
        });
  }
}
