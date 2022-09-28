import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared_widgets/label_widget.dart';
import '../../controller/control_measures_checkbox_controller.dart';
import '../../controller/disease_outbreak_textfield_controller.dart';
import 'outbreak_textfield_widget.dart';

// ignore: must_be_immutable
class ControlMeasuresWidget extends StatelessWidget {
  ControlMeasuresWidget({Key? key}) : super(key: key);
  DiseaseOutbreakTextfieldController textfieldCtrl =
      Get.put(DiseaseOutbreakTextfieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlMeasuresCheckBoxController>(
        init: ControlMeasuresCheckBoxController(choices: [
          "animal movement control",
          "Isolation inside the farm",
          "Quarantine on the farm",
          "treatment",
          "slaughter",
          "execution",
          "other",
        ]),
        builder: (measuresCtrl) {
          return Column(
            children: [
              ListTile(
                title: Text(measuresCtrl.choices[0].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[0],
                  onChanged: (val) => measuresCtrl.onChange(val, 0),
                ),
              ),
              ListTile(
                title: Text(measuresCtrl.choices[1].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[1],
                  onChanged: (val) => measuresCtrl.onChange(val, 1),
                ),
              ),
              ListTile(
                title: Text(measuresCtrl.choices[2].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[2],
                  onChanged: (val) => measuresCtrl.onChange(val, 2),
                ),
              ),
              ListTile(
                title: Text(measuresCtrl.choices[3].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[3],
                  onChanged: (val) => measuresCtrl.onChange(val, 3),
                ),
              ),
              if (measuresCtrl.choicesBoolList[3] == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(label: "number of animals".tr),
                    OutBreakextFieldWidget(
                        controller: textfieldCtrl.noAnimalMeasures4,
                        title: "number of animals".tr,
                        // onNoteChange: (val) {
                        //   textfieldCtrl.onChangeAnimalMeasures4(val ?? "");
                        // },
                        keyboardType: TextInputType.number),
                  ],
                ),
              ListTile(
                title: Text(measuresCtrl.choices[4].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[4],
                  onChanged: (val) => measuresCtrl.onChange(val, 4),
                ),
              ),
              if (measuresCtrl.choicesBoolList[4] == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(label: "number of animals".tr),
                    OutBreakextFieldWidget(
                        controller: textfieldCtrl.noAnimalMeasures5,
                        title: "number of animals".tr,
                        // onNoteChange: (val) {
                        //   textfieldCtrl.onChangeAnimalMeasures5(val ?? "");
                        // },
                        keyboardType: TextInputType.number),
                  ],
                ),
              ListTile(
                title: Text(measuresCtrl.choices[5].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[5],
                  onChanged: (val) => measuresCtrl.onChange(val, 5),
                ),
              ),
              if (measuresCtrl.choicesBoolList[5] == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(label: "number of animals".tr),
                    OutBreakextFieldWidget(
                        controller: textfieldCtrl.noAnimalMeasures6,
                        title: "number of animals".tr,
                        // onNoteChange: (val) {
                        //   textfieldCtrl.onChangeAnimalMeasures6(val ?? "");
                        // },
                        keyboardType: TextInputType.number),
                  ],
                ),
              ListTile(
                title: Text(measuresCtrl.choices[6].tr),
                leading: Checkbox(
                  value: measuresCtrl.choicesBoolList[6],
                  onChanged: (val) => measuresCtrl.onChange(val, 6),
                ),
              ),
              if (measuresCtrl.choicesBoolList[6] == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(label: "Select the action".tr),
                    OutBreakextFieldWidget(
                        controller: textfieldCtrl.selectAction,
                        title: "Select the action".tr,
                        // onNoteChange: (val) {
                        //   textfieldCtrl.onChangeSelectAction(val ?? "");
                        // },
                        keyboardType: TextInputType.number),
                  ],
                ),
            ],
          );
        });
  }
}
