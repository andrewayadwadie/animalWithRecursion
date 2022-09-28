import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_antibiotics_date_controller.dart';
import '../../controller/camel_antibiotics_senstivity_radio_controller.dart';
import '../../controller/camel_antibiotics_use_radio_controller.dart';
import '../../controller/camel_opertional_textfield_controller.dart';
import 'camel_antibiotics_description_widget.dart';
import 'camel_antibiotics_having_widget.dart';
import 'camel_antibiotics_type_widget.dart';
import 'camel_antibiotics_use_radio_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';

// ignore: must_be_immutable
class CamelAntibioticsWidget extends StatelessWidget {
  CamelAntibioticsWidget({Key? key}) : super(key: key);

  CamelOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CamelOPertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(
            label: "What are the indications for the use of antibiotics?".tr),
        GetBuilder<CamelAntibioticsUseRadioController>(
            init: CamelAntibioticsUseRadioController(),
            builder: (antiCtrl) {
              return CamelAntibioticsUseRadioWidget(
                  enumName: CamelAntibioticsUseRadio,
                  yesValue: CamelAntibioticsUseRadio
                      .protection, //? push in api id 216
                  onChangedYes: (val) => antiCtrl
                      .onChange(val ?? CamelAntibioticsUseRadio.protection),
                  noValue:
                      CamelAntibioticsUseRadio.treatment, //? push in api id 217
                  onChangedNo: (val) => antiCtrl
                      .onChange(val ?? CamelAntibioticsUseRadio.treatment),
                  groupValue: antiCtrl.charcter,
                  noAnswerValue: CamelAntibioticsUseRadio.noAnswer,
                  onChangedNoAnswer: (val) => antiCtrl
                      .onChange(val ?? CamelAntibioticsUseRadio.noAnswer));
            }),
        const LineWidget(),
        LabelWidget(label: "Types of antibiotics used?".tr),
        const CamelAntibioticsTypeWidget(), //! missed in api
        const LineWidget(),
        LabelWidget(label: "How is each antibiotic given?".tr),
        CamelOperationalTextFieldWidget(
            title: "How is each antibiotic given?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangeantibioticGiven(val ?? "");
            }), //! missed in api
        const LineWidget(),
        LabelWidget(
            label: "Are antibiotic sensitivity tests performed before use?".tr),
        //! missed in api
        GetBuilder<CamelAntibioticsSenstivityRadioController>(
            init: CamelAntibioticsSenstivityRadioController(),
            builder: (milkerExistCtrl) {
              return CamelOperationalRadioWidget(
                  enumName: CamelAntibioticsSenstivityRadio,
                  yesValue: CamelAntibioticsSenstivityRadio.yes,
                  onChangedYes: (val) => milkerExistCtrl
                      .onChange(val ?? CamelAntibioticsSenstivityRadio.yes),
                  noValue: CamelAntibioticsSenstivityRadio.no,
                  onChangedNo: (val) => milkerExistCtrl
                      .onChange(val ?? CamelAntibioticsSenstivityRadio.no),
                  groupValue: milkerExistCtrl.charcter,
                  noAnswerValue: CamelAntibioticsSenstivityRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkerExistCtrl.onChange(
                      val ?? CamelAntibioticsSenstivityRadio.noAnswer));
            }),
        const LineWidget(),
        LabelWidget(label: "Who prescribes the antibiotic?".tr),
        //! missed in api
        const CamelAntibioticsDescriptionWidget(),
        const LineWidget(),
        LabelWidget(label: "Who gives antibiotics to animals?".tr),
        //! missed in api
        const CamelAntibioticsHavingWidget(),
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
