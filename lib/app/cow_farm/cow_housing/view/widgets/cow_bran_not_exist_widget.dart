import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_farm_umberrella_radio_controller.dart';
import 'cow_housing_radio_widget.dart';
 
class CowBranNotExistWidget extends StatelessWidget {
  const CowBranNotExistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelWidget(label: "Are there canopies for the farm?"),
        GetBuilder<CowFarmUmberellaController>(
            init: CowFarmUmberellaController(),
            builder: (farmUmberellaCtrl) {
              return CowPensRadioWidget(
                  enumName: CowFarmUmberella,
                  yesValue: CowFarmUmberella.yes,
                  onChangedYes: (val) =>
                      farmUmberellaCtrl.onChange(val ?? CowFarmUmberella.yes),
                  noValue: CowFarmUmberella.no,
                  onChangedNo: (val) =>
                      farmUmberellaCtrl.onChange(val ?? CowFarmUmberella.no),
                  groupValue: farmUmberellaCtrl.charcter,
                  noAnswerValue: CowFarmUmberella.noAnswer,
                  onChangedNoAnswer: (val) => farmUmberellaCtrl
                      .onChange(val ?? CowFarmUmberella.noAnswer));
            }),
      ],
    );
  }
}
