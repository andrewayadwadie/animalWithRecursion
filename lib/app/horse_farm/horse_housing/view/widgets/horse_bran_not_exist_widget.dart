import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_farm_umberrella_radio_controller.dart';
import 'horse_housing_radio_widget.dart';
  
class HorseBranNotExistWidget extends StatelessWidget {
  const HorseBranNotExistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelWidget(label: "Are there canopies for the farm?".tr),
        GetBuilder<HorseFarmUmberellaController>(
            init: HorseFarmUmberellaController(),
            builder: (farmUmberellaCtrl) {
              return HorsePensRadioWidget(
                  enumName: HorseFarmUmberella,
                  yesValue: HorseFarmUmberella.yes,
                  onChangedYes: (val) =>
                      farmUmberellaCtrl.onChange(val ?? HorseFarmUmberella.yes),
                  noValue: HorseFarmUmberella.no,
                  onChangedNo: (val) =>
                      farmUmberellaCtrl.onChange(val ?? HorseFarmUmberella.no),
                  groupValue: farmUmberellaCtrl.charcter,
                  noAnswerValue: HorseFarmUmberella.noAnswer,
                  onChangedNoAnswer: (val) => farmUmberellaCtrl
                      .onChange(val ?? HorseFarmUmberella.noAnswer));
            }),
      ],
    );
  }
}
