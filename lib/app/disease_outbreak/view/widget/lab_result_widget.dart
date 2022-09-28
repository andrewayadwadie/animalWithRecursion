import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/disease_outbreak_textfield_controller.dart';
import '../../controller/lab_result_checkbox_controller.dart';
import '../../controller/result_date_controller.dart';
import 'outbreak_textfield_widget.dart';

// ignore: must_be_immutable
class LabResultWidget extends StatelessWidget {
  LabResultWidget({Key? key}) : super(key: key);
  DiseaseOutbreakTextfieldController textfieldCtrl =
      Get.put(DiseaseOutbreakTextfieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWidget(label: "Result date"),
        GetBuilder<ResultDateController>(
            init: ResultDateController(),
            builder: (resultDateCtrl) {
              return CupertinoButton(
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: MediaQuery.of(context).size.height / 13,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "${resultDateCtrl.date.year} - ${resultDateCtrl.date.month} - ${resultDateCtrl.date.day} ",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: whiteColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                  onPressed: () => resultDateCtrl.onDateChange(context));
            }),
        GetBuilder<LabResultCheckBoxController>(
            init: LabResultCheckBoxController(choices: [
              "positive",
              "negative",
              "Uncertain",
            ]),
            builder: (labResultCtrl) {
              return Column(
                children: [
                  ListTile(
                    title: Text(labResultCtrl.choices[0]),
                    leading: Checkbox(
                      value: labResultCtrl.choicesBoolList[0],
                      onChanged: (val) => labResultCtrl.onChange(val, 0),
                    ),
                  ),
                  if (labResultCtrl.choicesBoolList[0] == true)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label: "the name of disease causing the condition"),
                        OutBreakextFieldWidget(
                          controller: textfieldCtrl.nameOfDisease,
                            title: "the name of disease causing the condition",
                            // onNoteChange: (val) {
                            //   textfieldCtrl.onChangeNameOfDisease(val ?? "");
                            // },
                            keyboardType: TextInputType.text),
                      ],
                    ),
                  ListTile(
                    title: Text(labResultCtrl.choices[1]),
                    leading: Checkbox(
                      value: labResultCtrl.choicesBoolList[1],
                      onChanged: (val) => labResultCtrl.onChange(val, 1),
                    ),
                  ),
                  if (labResultCtrl.choicesBoolList[1] == true)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LabelWidget(
                            label: "The name of the disease or other disease"),
                        OutBreakextFieldWidget(
                          controller: textfieldCtrl.nameOfDisease2,
                            title: "The name of the disease or other disease",
                            // onNoteChange: (val) {
                            //   textfieldCtrl.onChangeNameOfDisease2(val ?? "");
                            // },
                            keyboardType: TextInputType.text),
                      ],
                    ),
                  ListTile(
                    title: Text(labResultCtrl.choices[2]),
                    leading: Checkbox(
                      value: labResultCtrl.choicesBoolList[2],
                      onChanged: (val) => labResultCtrl.onChange(val, 2),
                    ),
                  ),
                ],
              );
            })
      ],
    );
  }
}
