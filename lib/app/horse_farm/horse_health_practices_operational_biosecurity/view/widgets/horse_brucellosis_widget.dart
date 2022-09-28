import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_brucellosis_program_radio_controller.dart';
import 'horse_immuzation_doctor_widget.dart';
import 'horse_operational_radio_widget.dart';
import 'horse_operational_textfield_widget.dart';

class HorseBrucellosisWidget extends StatelessWidget {
  const HorseBrucellosisWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(label: "How to give each immunization?".tr),
        HorseOperationalTextFieldWidget(
            title: "immunization way", onNoteChange: (val) {}),
        LabelWidget(label: "Is the full immunization program implemented?".tr),
        GetBuilder<HorseBrucellosisProgramRadioController>(
            init: HorseBrucellosisProgramRadioController(),
            builder: (farmPestCtrl) {
              return HorseOperationalRadioWidget(
                  enumName: HorseBrucellosisProgramRadio,
                  yesValue: HorseBrucellosisProgramRadio.yes,
                  onChangedYes: (val) => farmPestCtrl
                      .onChange(val ?? HorseBrucellosisProgramRadio.yes),
                  noValue: HorseBrucellosisProgramRadio.no,
                  onChangedNo: (val) => farmPestCtrl
                      .onChange(val ?? HorseBrucellosisProgramRadio.no),
                  groupValue: farmPestCtrl.charcter,
                  noAnswerValue: HorseBrucellosisProgramRadio.noAnswer,
                  onChangedNoAnswer: (val) => farmPestCtrl
                      .onChange(val ?? HorseBrucellosisProgramRadio.noAnswer));
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
        const HorseImmuzationDoctorWidget()
      ],
    );
  }
}
