import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../controller/horse_blended_checkbox_controller.dart';
import '../../controller/horse_feeding_date_controller.dart';
import '../../controller/horse_feeding_textfield_controller.dart';
import '../../controller/horse_fooder_radio_controller.dart';
import '../../controller/horse_rodents_radio_controller.dart';
import '../../controller/horse_salt_bars_radio_controller.dart';
import '../../controller/horse_storage_appropriate_radio_controller.dart';
import '../../controller/horse_synthetic_blended_radio_controller.dart';
import 'horse_feed_textfield_widget.dart';
import 'horse_fooder_radio_widget.dart';
import 'horse_synthetic_blended_radio_widget.dart';
 

// ignore: must_be_immutable
class HorseConcentratedFodderWidget extends StatelessWidget {
    HorseConcentratedFodderWidget({Key? key}) : super(key: key);
HorseFeedingTextfieldController textfieldCtrl = Get.put(HorseFeedingTextfieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendHorseHerdDataController>(
        init: SendHorseHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                LabelWidget(label: "Synthetic or blended?".tr),
              GetBuilder<HorseSyntheticBlendedRadioController>(
                  init: HorseSyntheticBlendedRadioController(),
                  builder: (mainRadioCtrl) {
                    return Column(
                      children: [
                        HorseSyntheticBlendedRadioWidget(
                            enumName: HorseSyntheticBlendedRadio,
                            yesValue: HorseSyntheticBlendedRadio
                                .synthetic, //? push in api object with id 82
                            onChangedYes: (val) => mainRadioCtrl.onChange(
                                val ?? HorseSyntheticBlendedRadio.synthetic),
                            noValue: HorseSyntheticBlendedRadio
                                .blended, //? push in api object with id 83
                            onChangedNo: (val) => mainRadioCtrl.onChange(
                                val ?? HorseSyntheticBlendedRadio.blended),
                            groupValue: mainRadioCtrl.charcter,
                            noAnswerValue: HorseSyntheticBlendedRadio.noAnswer,
                            onChangedNoAnswer:(val) => mainRadioCtrl.onChange(
                                val ?? HorseSyntheticBlendedRadio.noAnswer),
                            ),
                        if (mainRadioCtrl.charcter ==
                            HorseSyntheticBlendedRadio.synthetic)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                LabelWidget(label: "Factory name : ".tr),
                              HorseFeedingTextFieldWidget(
                                  title: "Factory name : ".tr,
                                  onNoteChange: (val) {
                                    textfieldCtrl.onChangefactoryNmae(val??"");
                                  }),
                          
                              //? push in api object with id 85
                              GetBuilder<HorseFeedingDateController>(
                                  init: HorseFeedingDateController(),
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
                            HorseSyntheticBlendedRadio.blended)
                         //!---------------------------*-------------------*-------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                LabelWidget(label: "Was it added?".tr),
                              GetBuilder<HorseblendedCheckboxController>(
                                  init:
                                      HorseblendedCheckboxController(choices: [ 
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
              GetBuilder<HorseFooderRadioController>(
                  init: HorseFooderRadioController(),
                  builder: (fooderRadioCtrl) {
                    return Column(
                      children: [
                        HorseFooderRadioWidget(
                            enumName: HorseFooderRadio,
                            yesValue: HorseFooderRadio.yes,
                            onChangedYes: (val) => fooderRadioCtrl
                                .onChange(val ?? HorseFooderRadio.yes),
                            noValue: HorseFooderRadio.no,
                            onChangedNo: (val) => fooderRadioCtrl
                                .onChange(val ?? HorseFooderRadio.no),
                            groupValue: fooderRadioCtrl.charcter,
                            noAnswerValue: HorseFooderRadio.noAnswer ,
                            onChangedNoAnswer: (val) => fooderRadioCtrl
                                .onChange(val ?? HorseFooderRadio.noAnswer),
                            
                            ),
                        if (fooderRadioCtrl.charcter == HorseFooderRadio.yes)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //? push in api object with id 88 if yes and 89 if no
                                LabelWidget(
                                  label:
                                      "Is the storage appropriate? (in terms of temperature, humidity, ventilation, and sealing)".tr),
                              GetBuilder<
                                      HorseStorageAppropriateRadioController>(
                                  init:
                                      HorseStorageAppropriateRadioController(),
                                  builder: (storageCtrl) {
                                    return HorseFooderRadioWidget(
                                        enumName: HorseStorageAppropriateRadio,
                                        yesValue:
                                            HorseStorageAppropriateRadio.yes,
                                        onChangedYes: (val) =>
                                            storageCtrl.onChange(val ??
                                                HorseStorageAppropriateRadio
                                                    .yes),
                                        noValue:
                                            HorseStorageAppropriateRadio.no,
                                        onChangedNo: (val) =>
                                            storageCtrl.onChange(val ??
                                                HorseStorageAppropriateRadio
                                                    .no),
                                        groupValue: storageCtrl.charcter,
                                        noAnswerValue: HorseStorageAppropriateRadio.noAnswer,
                                        onChangedNoAnswer: (val) =>
                                            storageCtrl.onChange(val ??
                                                HorseStorageAppropriateRadio
                                                    .noAnswer),
                                        
                                        
                                        );
                                  }),

                              //!-------------------------------------------------------------------
                              //? push in api object with id 90 if yes and 91 if no
                                LabelWidget(
                                  label:
                                      "Are there rodents in the bush store?".tr),
                              GetBuilder<HorserodentsRadioController>(
                                  init: HorserodentsRadioController(),
                                  builder: (rodentsCtrl) {
                                    return HorseFooderRadioWidget(
                                        enumName: HorserodentsRadio,
                                        yesValue: HorserodentsRadio.yes,
                                        onChangedYes: (val) =>
                                            rodentsCtrl.onChange(
                                                val ?? HorserodentsRadio.yes),
                                        noValue: HorserodentsRadio.no,
                                        onChangedNo: (val) =>
                                            rodentsCtrl.onChange(
                                                val ?? HorserodentsRadio.no),
                                        groupValue: rodentsCtrl.charcter,
                                        
                                        noAnswerValue: HorserodentsRadio.noAnswer,
                                        onChangedNoAnswer: (val) =>
                                            rodentsCtrl.onChange(
                                                val ?? HorserodentsRadio.noAnswer),
                                        
                                        
                                        
                                        );
                                  }),
                            ],
                          ),
                      ],
                    );
                  }),
              //? push in api object with id 92 if yes and 93 if no
                LabelWidget(label: "Are salt bars added?".tr),
              GetBuilder<HorseSaltBarsRadioController>(
                  init: HorseSaltBarsRadioController(),
                  builder: (saltCtrl) {
                    return HorseFooderRadioWidget(
                        enumName: HorseSaltBarsRadio,
                        yesValue: HorseSaltBarsRadio.yes,
                        onChangedYes: (val) =>
                            saltCtrl.onChange(val ?? HorseSaltBarsRadio.yes),
                        noValue: HorseSaltBarsRadio.no,
                        onChangedNo: (val) =>
                            saltCtrl.onChange(val ?? HorseSaltBarsRadio.no),
                        groupValue: saltCtrl.charcter,
                        noAnswerValue:HorseSaltBarsRadio.noAnswer ,
                        onChangedNoAnswer: (val) =>
                            saltCtrl.onChange(val ?? HorseSaltBarsRadio.noAnswer),
                        );
                  }),
            ],
          );
        });
  }
}
