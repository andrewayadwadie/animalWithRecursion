import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorseImmunizationProgramRadioWidget extends StatelessWidget {
  const HorseImmunizationProgramRadioWidget({
    Key? key,
    required this.yesValue,
    required this.onChangedYes,
    required this.noValue,
    required this.onChangedNo,
    required this.groupValue,
  }) : super(key: key);

  final dynamic yesValue;
  final Function(dynamic) onChangedYes;
  final dynamic noValue;
  final Function(dynamic) onChangedNo;
  final dynamic groupValue;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Radio(
        value: yesValue,
        groupValue: groupValue,
        onChanged: onChangedYes,
      ),
        Text('yes'.tr),
      Radio(
        value: noValue,
        groupValue: groupValue,
        onChanged: onChangedNo,
      ),
        Text('no'.tr),
    ]);
  }
}
