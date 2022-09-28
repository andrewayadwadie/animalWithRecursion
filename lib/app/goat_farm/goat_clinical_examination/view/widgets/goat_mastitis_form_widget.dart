 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_clinical_textfield_controller.dart';
import '../../controller/goat_inflammation_site_radio_controller.dart';
import '../../controller/goat_sores_radio_controller.dart';
import '../../controller/goat_udder_gangrene_radio_controller.dart';
import '../../controller/goat_wounds_radio_controller.dart';
import 'goat_clinical_examination_radio_widget.dart';
import 'goat_inflammation_stie_radio_widget.dart';
import 'goat_symptoms_types_textfield_widget.dart';
 

// ignore: must_be_immutable
class GoatMastitisFormWidget extends StatelessWidget {
  GoatMastitisFormWidget({Key? key}) : super(key: key);
GoatClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(GoatClinicalTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Number of Cases
          LabelWidget(label: "Number of cases : ".tr),
        GoatSymptomsTextFieldWidget(
            title: "Number of cases : ".tr,
            onNoteChange: (val) {
              clinicalTextFieldCtrl.onChangemastitis(val??"");
            }),
        //! The site of inflammation
          LabelWidget(label: "The site of inflammation ?".tr),
        GetBuilder<GoatInflammationSiteRadioController>(
            init: GoatInflammationSiteRadioController(),
            builder: (inflammationSiteCtrl) {
              return GoatInflammationSiteRadioWidget(

                  enumName: GoatInflammationSiteRadio,
                  yesValue: GoatInflammationSiteRadio.udder,
                  onChangedYes: (val) => inflammationSiteCtrl
                      .onChange(val ?? GoatInflammationSiteRadio.udder),
                  noValue: GoatInflammationSiteRadio.nipples,
                  onChangedNo: (val) => inflammationSiteCtrl
                      .onChange(val ?? GoatInflammationSiteRadio.nipples),
                  groupValue: inflammationSiteCtrl.charcter,
                  noAnswerValue: GoatInflammationSiteRadio.noAnswer,
                  onChangedNoAnswer: (val) => inflammationSiteCtrl
                      .onChange(val ?? GoatInflammationSiteRadio.noAnswer) 
                  );
            }),

        //!Is there gangrene in the udder?
          LabelWidget(label: "Is there gangrene in the udder? ".tr),
        GetBuilder<GoatUdderGangreneController>(
            init: GoatUdderGangreneController(),
            builder: (udderGangreneCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatClinicalExaminationRadioWidget(
                      enumName: GoatUdderGangrene,
                      yesValue: GoatUdderGangrene.yes,
                      onChangedYes: (val) => udderGangreneCtrl
                          .onChange(val ?? GoatUdderGangrene.yes),
                      noValue: GoatUdderGangrene.no,
                      onChangedNo: (val) => udderGangreneCtrl
                          .onChange(val ?? GoatUdderGangrene.no),
                      groupValue: udderGangreneCtrl.charcter,
                      
                      noAnswerValue: GoatUdderGangrene.noAnswer,
                      
                      onChangedNoAnswer: (val) => udderGangreneCtrl
                          .onChange(val ?? GoatUdderGangrene.noAnswer)),
                  if (udderGangreneCtrl.charcter == GoatUdderGangrene.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          LabelWidget(label:  "Number of Cases".tr),
                        GoatSymptomsTextFieldWidget(
                            title:  "Number of Cases".tr ,
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
        GetBuilder<GoatSoresRadioControllerController>(
            init: GoatSoresRadioControllerController(),
            builder: (soresCtrl) {
              return GoatClinicalExaminationRadioWidget(
                  enumName: GoatSoresRadioController,
                  yesValue: GoatSoresRadioController.yes,
                  onChangedYes: (val) =>
                      soresCtrl.onChange(val ?? GoatSoresRadioController.yes),
                  noValue: GoatSoresRadioController.no,
                  onChangedNo: (val) =>
                      soresCtrl.onChange(val ?? GoatSoresRadioController.no),
                  groupValue: soresCtrl.charcter,
                  noAnswerValue: GoatSoresRadioController.noAnswer,
                  onChangedNoAnswer: (val) => soresCtrl
                      .onChange(val ?? GoatSoresRadioController.noAnswer));
            }),

        //!Are there wounds?
          LabelWidget(label: "Are there wounds? ".tr),
        GetBuilder<GoatWoundsRadioControllerController>(
            init: GoatWoundsRadioControllerController(),
            builder: (woundsCtrl) {
              return GoatClinicalExaminationRadioWidget(
                  enumName: GoatWoundsRadioController,
                  yesValue: GoatWoundsRadioController.yes,
                  onChangedYes: (val) => woundsCtrl
                      .onChange(val ?? GoatWoundsRadioController.yes),
                  noValue: GoatWoundsRadioController.no,
                  onChangedNo: (val) =>
                      woundsCtrl.onChange(val ?? GoatWoundsRadioController.no),
                  groupValue: woundsCtrl.charcter,
                  noAnswerValue: GoatWoundsRadioController.noAnswer,
                  onChangedNoAnswer: (val) => woundsCtrl
                      .onChange(val ?? GoatWoundsRadioController.noAnswer)
                  
                  
                  );
            }),
      ],
    );
  }
}
