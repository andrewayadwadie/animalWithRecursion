import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_clinical_textfield_controller.dart';
import '../../controller/horse_inflammation_site_radio_controller.dart';
import '../../controller/horse_sores_radio_controller.dart';
import '../../controller/horse_udder_gangrene_radio_controller.dart';
import '../../controller/horse_wounds_radio_controller.dart';
import 'horse_clinical_examination_radio_widget.dart';
import 'horse_inflammation_stie_radio_widget.dart';
import 'horse_symptoms_types_textfield_widget.dart';


// ignore: must_be_immutable
class HorseMastitisFormWidget extends StatelessWidget {
  HorseMastitisFormWidget({Key? key}) : super(key: key);
HorseClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(HorseClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
          LabelWidget(label: "Number of Cases".tr),
        HorseSymptomsTextFieldWidget(
            title: "Number of Cases".tr,
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemastitis(val??"");
            }),
        //! The site of inflammation
          LabelWidget(label: "The site of inflammation ?".tr),
        GetBuilder<HorseInflammationSiteRadioController>(
            init: HorseInflammationSiteRadioController(),
            builder: (inflammationSiteCtrl) {
              return HorseInflammationSiteRadioWidget(

                  enumName: HorseInflammationSiteRadio,
                  yesValue: HorseInflammationSiteRadio.udder,
                  onChangedYes: (val) => inflammationSiteCtrl
                      .onChange(val ?? HorseInflammationSiteRadio.udder),
                  noValue: HorseInflammationSiteRadio.nipples,
                  onChangedNo: (val) => inflammationSiteCtrl
                      .onChange(val ?? HorseInflammationSiteRadio.nipples),
                  groupValue: inflammationSiteCtrl.charcter,
                  noAnswerValue: HorseInflammationSiteRadio.noAnswer,
                  onChangedNoAnswer: (val) => inflammationSiteCtrl
                      .onChange(val ?? HorseInflammationSiteRadio.noAnswer) 
                  );
            }),

        //!Is there gangrene in the udder?
          LabelWidget(label:"Is there gangrene in the udder? ".tr),
        GetBuilder<HorseUdderGangreneController>(
            init: HorseUdderGangreneController(),
            builder: (udderGangreneCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseClinicalExaminationRadioWidget(
                      enumName: HorseUdderGangrene,
                      yesValue: HorseUdderGangrene.yes,
                      onChangedYes: (val) => udderGangreneCtrl
                          .onChange(val ?? HorseUdderGangrene.yes),
                      noValue: HorseUdderGangrene.no,
                      onChangedNo: (val) => udderGangreneCtrl
                          .onChange(val ?? HorseUdderGangrene.no),
                      groupValue: udderGangreneCtrl.charcter,
                      
                      noAnswerValue: HorseUdderGangrene.noAnswer,
                      
                      onChangedNoAnswer: (val) => udderGangreneCtrl
                          .onChange(val ?? HorseUdderGangrene.noAnswer)),
                  if (udderGangreneCtrl.charcter == HorseUdderGangrene.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label: "Number of Cases".tr),
                        HorseSymptomsTextFieldWidget(
                            title: "Number of Cases".tr,
                            onNoteChange: (val) {
                             clinicalTextFieldCtrl.onChangegargrne(val??"");
                            })
                      ],
                    )
                ],
              );
            }),

        //!Are there sores or blisters?
          LabelWidget(label: "Are there sores or blisters? ".tr),
        GetBuilder<HorseSoresRadioControllerController>(
            init: HorseSoresRadioControllerController(),
            builder: (soresCtrl) {
              return HorseClinicalExaminationRadioWidget(
                  enumName: HorseSoresRadioController,
                  yesValue: HorseSoresRadioController.yes,
                  onChangedYes: (val) =>
                      soresCtrl.onChange(val ?? HorseSoresRadioController.yes),
                  noValue: HorseSoresRadioController.no,
                  onChangedNo: (val) =>
                      soresCtrl.onChange(val ?? HorseSoresRadioController.no),
                  groupValue: soresCtrl.charcter,
                  noAnswerValue: HorseSoresRadioController.noAnswer,
                  onChangedNoAnswer: (val) => soresCtrl
                      .onChange(val ?? HorseSoresRadioController.noAnswer));
            }),

        //!Are there wounds?
          LabelWidget(label: "Are there wounds? ".tr),
        GetBuilder<HorseWoundsRadioControllerController>(
            init: HorseWoundsRadioControllerController(),
            builder: (woundsCtrl) {
              return HorseClinicalExaminationRadioWidget(
                  enumName: HorseWoundsRadioController,
                  yesValue: HorseWoundsRadioController.yes,
                  onChangedYes: (val) => woundsCtrl
                      .onChange(val ?? HorseWoundsRadioController.yes),
                  noValue: HorseWoundsRadioController.no,
                  onChangedNo: (val) =>
                      woundsCtrl.onChange(val ?? HorseWoundsRadioController.no),
                  groupValue: woundsCtrl.charcter,
                  noAnswerValue: HorseWoundsRadioController.noAnswer,
                  onChangedNoAnswer: (val) => woundsCtrl
                      .onChange(val ?? HorseWoundsRadioController.noAnswer)
                  
                  
                  );
            }),
      ],
    );
  }
}
