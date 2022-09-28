import '../../controller/control_measures_radio_controller.dart';
import 'control_measures_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../utils/style.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/reporting_date_controller.dart';
import '../../controller/veterinary_department_radio_controller.dart';
import 'epidemiological_information_widget.dart';
import 'outbreak_raio_widget.dart';
import 'suspected_disease_widget.dart';

class DiseaseOutBreakWidget extends StatelessWidget {
  const DiseaseOutBreakWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("suspected disease".tr, style: blackTextStyle),
        const SuspectedDiseaseWidget(),
        Text("Epidemiological information about the affected herd".tr,
            style: blackTextStyle),
        EpidemiologicalInformationWidget(),
        Text("Reporting and control procedures".tr, style: blackTextStyle),

        LabelWidget(
            label: "Has the veterinary department been notified of the disease?"
                .tr),
        GetBuilder<VeterinaryDepartmentRadioController>(
            init: VeterinaryDepartmentRadioController(),
            builder: (veterinaryDepartmentCtrl) {
              return Column(
                children: [
                  OutBreakRadioWidget(
                      enumName: VeterinaryDepartmentRadio,
                      yesValue: VeterinaryDepartmentRadio.yes,
                      onChangedYes: (val) => veterinaryDepartmentCtrl
                          .onChange(val ?? VeterinaryDepartmentRadio.yes),
                      noValue: VeterinaryDepartmentRadio.no,
                      onChangedNo: (val) => veterinaryDepartmentCtrl
                          .onChange(val ?? VeterinaryDepartmentRadio.no),
                      groupValue: veterinaryDepartmentCtrl.charcter,
                      noAnswerValue: VeterinaryDepartmentRadio.noAnswer,
                      onChangedNoAnswer: (val) => veterinaryDepartmentCtrl
                          .onChange(val ?? VeterinaryDepartmentRadio.noAnswer)),
                  if (veterinaryDepartmentCtrl.charcter ==
                      VeterinaryDepartmentRadio.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(label: "Reporting Date".tr),
                        GetBuilder<ReportingDateController>(
                            init: ReportingDateController(),
                            builder: (reporting) {
                              return CupertinoButton(
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              13,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "${reporting.date.year} - ${reporting.date.month} - ${reporting.date.day} ",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  onPressed: () =>
                                      reporting.onDateChange(context));
                            }),
                      ],
                    ),
                ],
              );
            }),

        LabelWidget(label: "Have any control measures been taken?".tr),
        GetBuilder<ControlMeasuresRadioController>(
            init: ControlMeasuresRadioController(),
            builder: (controlMeasuresCtrl) {
              return Column(
                children: [
                  OutBreakRadioWidget(
                      enumName: ControlMeasuresRadio,
                      yesValue: ControlMeasuresRadio.yes,
                      onChangedYes: (val) => controlMeasuresCtrl
                          .onChange(val ?? ControlMeasuresRadio.yes),
                      noValue: ControlMeasuresRadio.no,
                      onChangedNo: (val) => controlMeasuresCtrl
                          .onChange(val ?? ControlMeasuresRadio.no),
                      groupValue: controlMeasuresCtrl.charcter,
                      noAnswerValue: ControlMeasuresRadio.noAnswer,
                      onChangedNoAnswer: (val) => controlMeasuresCtrl
                          .onChange(val ?? ControlMeasuresRadio.noAnswer)),
                  if (controlMeasuresCtrl.charcter == ControlMeasuresRadio.yes)
                    ControlMeasuresWidget()
                ],
              );
            }),
        // const Text("laboratory results :", style: blackTextStyle),
        // LabResultWidget()
      ],
    );
  }
}
