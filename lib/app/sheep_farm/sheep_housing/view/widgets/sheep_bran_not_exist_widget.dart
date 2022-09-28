import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_farm_umberrella_radio_controller.dart';
import 'sheep_housing_radio_widget.dart';
 
 
class SheepBranNotExistWidget extends StatelessWidget {
  const SheepBranNotExistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          LabelWidget(label: "Are there canopies for the farm?".tr),
        GetBuilder<SheepFarmUmberellaController>(
            init: SheepFarmUmberellaController(),
            builder: (farmUmberellaCtrl) {
              return SheepPensRadioWidget(
                  enumName: SheepFarmUmberella,
                  yesValue: SheepFarmUmberella.yes,
                  onChangedYes: (val) =>
                      farmUmberellaCtrl.onChange(val ?? SheepFarmUmberella.yes),
                  noValue: SheepFarmUmberella.no,
                  onChangedNo: (val) =>
                      farmUmberellaCtrl.onChange(val ?? SheepFarmUmberella.no),
                  groupValue: farmUmberellaCtrl.charcter,
                  noAnswerValue: SheepFarmUmberella.noAnswer,
                  onChangedNoAnswer: (val) => farmUmberellaCtrl
                      .onChange(val ?? SheepFarmUmberella.noAnswer));
            }),
      ],
    );
  }
}
