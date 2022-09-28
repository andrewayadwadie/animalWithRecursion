import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_brucellosis_program_radio_controller.dart';
import 'goat_immuzation_doctor_widget.dart';
import 'goat_operational_radio_widget.dart';
import 'goat_operational_textfield_widget.dart';
 

class GoatBrucellosisWidget extends StatelessWidget {
  const GoatBrucellosisWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWidget(label: "How to give each immunization?"),
        GoatOperationalTextFieldWidget(
            title: "immunization way", onNoteChange: (val) {}),
        const LabelWidget(
            label: "Is the full immunization program implemented?"),
        GetBuilder<GoatBrucellosisProgramRadioController>(
            init: GoatBrucellosisProgramRadioController(),
            builder: (farmPestCtrl) {
              return GoatOperationalRadioWidget(
                  enumName: GoatBrucellosisProgramRadio,
                  yesValue: GoatBrucellosisProgramRadio.yes,
                  onChangedYes: (val) => farmPestCtrl
                      .onChange(val ?? GoatBrucellosisProgramRadio.yes),
                  noValue: GoatBrucellosisProgramRadio.no,
                  onChangedNo: (val) => farmPestCtrl
                      .onChange(val ?? GoatBrucellosisProgramRadio.no),
                  groupValue: farmPestCtrl.charcter,
                  noAnswerValue:GoatBrucellosisProgramRadio.noAnswer,
                  onChangedNoAnswer: (val) => farmPestCtrl
                      .onChange(val ?? GoatBrucellosisProgramRadio.noAnswer));
               
            }),
        GetBuilder<DateController>(
            init: DateController(),
            builder: (dateCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelWidget(
                      label: "What is the date of last immunization? "),
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
        const LabelWidget(label: "Who administers the immunization?"),
        const GoatImmuzationDoctorWidget()
      ],
    );
  }
}
