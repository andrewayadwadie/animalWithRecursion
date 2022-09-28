import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../camel_farm/camel_health_practices_operational_biosecurity/controller/camel_antibiotics_date_controller.dart';
import '../../../../shared_widgets/divider_line_widget.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_antibiotics_senstivity_radio_controller.dart';
import '../../controller/cow_antibiotics_use_radio_controller.dart';
import '../../controller/cow_opertional_textfield_controller.dart';
import 'cow_antibiotics_description_widget.dart';
import 'cow_antibiotics_having_widget.dart';
import 'cow_antibiotics_type_widget.dart';
import 'cow_antibiotics_use_radio_widget.dart';
import 'cow_operational_radio_widget.dart';
import 'cow_operational_textfield_widget.dart';

// ignore: must_be_immutable
class CowAntibioticsWidget extends StatelessWidget {
  CowAntibioticsWidget({Key? key}) : super(key: key);

  CowOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CowOPertionalTextFieldController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(
            label: "What are the indications for the use of antibiotics?".tr),
        GetBuilder<CowAntibioticsUseRadioController>(
            init: CowAntibioticsUseRadioController(),
            builder: (antiCtrl) {
              return CowAntibioticsUseRadioWidget(
                  enumName: CowAntibioticsUseRadio,
                  yesValue:
                      CowAntibioticsUseRadio.protection, //? push in api id 216
                  onChangedYes: (val) => antiCtrl
                      .onChange(val ?? CowAntibioticsUseRadio.protection),
                  noValue:
                      CowAntibioticsUseRadio.treatment, //? push in api id 217
                  onChangedNo: (val) => antiCtrl
                      .onChange(val ?? CowAntibioticsUseRadio.treatment),
                  groupValue: antiCtrl.charcter,
                  noAnswerValue: CowAntibioticsUseRadio.noAnswer,
                  onChangedNoAnswer: (val) => antiCtrl
                      .onChange(val ?? CowAntibioticsUseRadio.noAnswer));
            }),
        const LineWidget(),
        LabelWidget(label: "Types of antibiotics used?".tr),
        const CowAntibioticsTypeWidget(), //! missed in api
        const LineWidget(),
        LabelWidget(label: "How is each antibiotic given?".tr),
        CowOperationalTextFieldWidget(
            title: "How is each antibiotic given?".tr,
            onNoteChange: (val) {
              opertionalTextFieldController.onChangeantibioticGiven(val ?? "");
            }), //! missed in api
        const LineWidget(),
        LabelWidget(
            label: "Are antibiotic sensitivity tests performed before use?".tr),
        //! missed in api
        GetBuilder<CowAntibioticsSenstivityRadioController>(
            init: CowAntibioticsSenstivityRadioController(),
            builder: (milkerExistCtrl) {
              return CowOperationalRadioWidget(
                  enumName: CowAntibioticsSenstivityRadio,
                  yesValue: CowAntibioticsSenstivityRadio.yes,
                  onChangedYes: (val) => milkerExistCtrl
                      .onChange(val ?? CowAntibioticsSenstivityRadio.yes),
                  noValue: CowAntibioticsSenstivityRadio.no,
                  onChangedNo: (val) => milkerExistCtrl
                      .onChange(val ?? CowAntibioticsSenstivityRadio.no),
                  groupValue: milkerExistCtrl.charcter,
                  noAnswerValue: CowAntibioticsSenstivityRadio.noAnswer,
                  onChangedNoAnswer: (val) => milkerExistCtrl
                      .onChange(val ?? CowAntibioticsSenstivityRadio.noAnswer));
            }),
        const LineWidget(),
        LabelWidget(label: "Who prescribes the antibiotic?".tr),
        //! missed in api
        const CowAntibioticsDescriptionWidget(),
        const LineWidget(),
        LabelWidget(label: "Who gives antibiotics to animals?".tr),
        //! missed in api
        const CowAntibioticsHavingWidget(),
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
