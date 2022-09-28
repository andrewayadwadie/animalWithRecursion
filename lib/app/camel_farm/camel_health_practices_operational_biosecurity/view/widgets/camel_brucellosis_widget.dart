import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_brucellosis_program_radio_controller.dart';
import 'camel_immuzation_doctor_widget.dart';
import 'camel_operational_radio_widget.dart';
import 'camel_operational_textfield_widget.dart';

class CamelBrucellosisWidget extends StatelessWidget {
  const CamelBrucellosisWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          LabelWidget(label: "How to give each immunization?".tr),
        CamelOperationalTextFieldWidget(
            title: "immunization way", onNoteChange: (val) {}),
          LabelWidget(
            label: "Is the full immunization program implemented?".tr),
        GetBuilder<CamelBrucellosisProgramRadioController>(
            init: CamelBrucellosisProgramRadioController(),
            builder: (farmPestCtrl) {
              return CamelOperationalRadioWidget(
                  enumName: CamelBrucellosisProgramRadio,
                  yesValue: CamelBrucellosisProgramRadio.yes,
                  onChangedYes: (val) => farmPestCtrl
                      .onChange(val ?? CamelBrucellosisProgramRadio.yes),
                  noValue: CamelBrucellosisProgramRadio.no,
                  onChangedNo: (val) => farmPestCtrl
                      .onChange(val ?? CamelBrucellosisProgramRadio.no),
                  groupValue: farmPestCtrl.charcter,
                  noAnswerValue:CamelBrucellosisProgramRadio.noAnswer,
                  onChangedNoAnswer: (val) => farmPestCtrl
                      .onChange(val ?? CamelBrucellosisProgramRadio.noAnswer));
               
            }),
        GetBuilder<DateController>(
            init: DateController(),
            builder: (dateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    LabelWidget(
                      label: "What is the date of last immunization? ".tr),
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
          LabelWidget(label: "Who administers the immunization?".tr),
        const CamelImmuzationDoctorWidget()
      ],
    );
  }
}
