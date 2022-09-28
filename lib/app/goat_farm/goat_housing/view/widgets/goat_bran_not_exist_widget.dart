import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_farm_umberrella_radio_controller.dart';
import 'goat_housing_radio_widget.dart';
 
class GoatBranNotExistWidget extends StatelessWidget {
  const GoatBranNotExistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          LabelWidget(label: "Are there canopies for the farm?".tr),
        GetBuilder<GoatFarmUmberellaController>(
            init: GoatFarmUmberellaController(),
            builder: (farmUmberellaCtrl) {
              return GoatPensRadioWidget(
                  enumName: GoatFarmUmberella,
                  yesValue: GoatFarmUmberella.yes,
                  onChangedYes: (val) =>
                      farmUmberellaCtrl.onChange(val ?? GoatFarmUmberella.yes),
                  noValue: GoatFarmUmberella.no,
                  onChangedNo: (val) =>
                      farmUmberellaCtrl.onChange(val ?? GoatFarmUmberella.no),
                  groupValue: farmUmberellaCtrl.charcter,
                  noAnswerValue: GoatFarmUmberella.noAnswer,
                  onChangedNoAnswer: (val) => farmUmberellaCtrl
                      .onChange(val ?? GoatFarmUmberella.noAnswer));
            }),
      ],
    );
  }
}
