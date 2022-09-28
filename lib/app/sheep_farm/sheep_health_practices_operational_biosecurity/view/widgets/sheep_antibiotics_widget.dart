import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../camel_farm/camel_health_practices_operational_biosecurity/controller/camel_antibiotics_date_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_antibiotics_senstivity_radio_controller.dart';
import '../../controller/sheep_antibiotics_use_radio_controller.dart';
import '../../controller/sheep_opertional_textfield_controller.dart';
import 'sheep_antibiotics_description_widget.dart';
import 'sheep_antibiotics_having_widget.dart';
import 'sheep_antibiotics_type_widget.dart';
import 'sheep_antibiotics_use_radio_widget.dart';
import 'sheep_operational_radio_widget.dart';
import 'sheep_operational_textfield_widget.dart';

// ignore: must_be_immutable
class SheepAntibioticsWidget extends StatelessWidget {
  SheepAntibioticsWidget({Key? key}) : super(key: key);

  SheepOPertionalTextFieldController opertionalTextFieldController =
      Get.put(SheepOPertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(
            label: "What are the indications for the use of antibiotics?".tr),
        GetBuilder<SheepAntibioticsUseRadioController>(
            init: SheepAntibioticsUseRadioController(),
            builder: (antiCtrl) {
              return SheepAntibioticsUseRadioWidget(
                  enumName: SheepAntibioticsUseRadio,
                  yesValue: SheepAntibioticsUseRadio
                      .protection, //? push in api id 216
                  onChangedYes: (val) => antiCtrl
                      .onChange(val ?? SheepAntibioticsUseRadio.protection),
                  noValue:
                      SheepAntibioticsUseRadio.treatment, //? push in api id 217
                  onChangedNo: (val) => antiCtrl
                      .onChange(val ?? SheepAntibioticsUseRadio.treatment),
                  groupValue: antiCtrl.charcter,
                  noAnswerValue: SheepAntibioticsUseRadio.noAnswer,
                  onChangedNoAnswer: (val) => antiCtrl
                      .onChange(val ?? SheepAntibioticsUseRadio.noAnswer));
            }),
        const LineWidget(),
        LabelWidget(label: "Types of antibiotics used?".tr),
        const SheepAntibioticsTypeWidget(), //! missed in api
        const LineWidget(),
        LabelWidget(label: "How is each antibiotic given?".tr),
        SheepOperationalTextFieldWidget(
            title: "How is each antibiotic given?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangeantibioticGiven(val ?? "");
            }), //! missed in api
        const LineWidget(),
        LabelWidget(
            label: "Are antibiotic sensitivity tests performed before use?".tr),
        //! missed in api
        GetBuilder<SheepAntibioticsSenstivityRadioController>(
            init: SheepAntibioticsSenstivityRadioController(),
            builder: (milkerExistCtrl) {
              return SheepOperationalRadioWidget(
                  enumName: SheepAntibioticsSenstivityRadio,
                  yesValue: SheepAntibioticsSenstivityRadio.yes,
                  onChangedYes: (val) => milkerExistCtrl
                      .onChange(val ?? SheepAntibioticsSenstivityRadio.yes),
                  noValue: SheepAntibioticsSenstivityRadio.no,
                  onChangedNo: (val) => milkerExistCtrl
                      .onChange(val ?? SheepAntibioticsSenstivityRadio.no),
                  groupValue: milkerExistCtrl.charcter,
                  noAnswerValue: SheepAntibioticsSenstivityRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkerExistCtrl.onChange(
                      val ?? SheepAntibioticsSenstivityRadio.noAnswer));
            }),
        const LineWidget(),
        LabelWidget(label: "Who prescribes the antibiotic?".tr),
        //! missed in api
        const SheepAntibioticsDescriptionWidget(),
        const LineWidget(),
        LabelWidget(label: "Who gives antibiotics to animals?".tr),
        //! missed in api
        const SheepAntibioticsHavingWidget(),
        //! missed in api
        GetBuilder<AntibioticsDateController>(
            init: AntibioticsDateController(),
            builder: (dateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelWidget(
                      label:
                          "What is the date of the last use of the antibiotic? "
                              .tr),
                  CupertinoButton(
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: whiteColor, fontSize: 15),
                          )),
                      onPressed: () => dateCtrl.onDateChange(context)),
                ],
              );
            }),
      ],
    );
  }
}
