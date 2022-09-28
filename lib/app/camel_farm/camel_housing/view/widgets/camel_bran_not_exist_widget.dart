import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/farm_umberrella_radio_controller.dart';
import 'camel_housing_radio_widget.dart';

class CamelBranNotExistWidget extends StatelessWidget {
  const CamelBranNotExistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          LabelWidget(label: "Are there canopies for the farm?".tr),
        GetBuilder<CamelFarmUmberellaController>(
            init: CamelFarmUmberellaController(),
            builder: (farmUmberellaCtrl) {
              return CamelPensRadioWidget(
                  enumName: CamelFarmUmberella,
                  yesValue: CamelFarmUmberella.yes,
                  onChangedYes: (val) =>
                      farmUmberellaCtrl.onChange(val ?? CamelFarmUmberella.yes),
                  noValue: CamelFarmUmberella.no,
                  onChangedNo: (val) =>
                      farmUmberellaCtrl.onChange(val ?? CamelFarmUmberella.no),
                  groupValue: farmUmberellaCtrl.charcter,
                  noAnswerValue: CamelFarmUmberella.noAnswer,
                  onChangedNoAnswer: (val) => farmUmberellaCtrl
                      .onChange(val ?? CamelFarmUmberella.noAnswer));
            }),
      ],
    );
  }
}
