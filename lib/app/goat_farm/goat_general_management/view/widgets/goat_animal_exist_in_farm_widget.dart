import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoatAnimalExistRadioWidget extends StatelessWidget {
  const GoatAnimalExistRadioWidget({
    Key? key,
    required this.enumName,
    required this.yesValue,
    required this.onChangedYes,
    required this.noValue,
    required this.onChangedNo,
    required this.groupValue,
        required this.noAnswerValue,
    required this.onChangedNoAnswer,
  }) : super(key: key);

  final dynamic enumName;
  final dynamic yesValue;
  final Function(dynamic) onChangedYes;
  final dynamic noValue;
  final Function(dynamic) onChangedNo;
  final dynamic groupValue;
    final dynamic noAnswerValue;
  final Function(dynamic) onChangedNoAnswer;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Radio(
        //Radio<MiscarriageExist>
        value: yesValue, //MiscarriageExist.yes,
        groupValue: groupValue, //misCtrl.charcter,
        onChanged:
            onChangedYes, // misCtrl.onChange(val ?? MiscarriageExist.yes),
      ),
       Text('yes'.tr),
      Radio(
        value: noValue,
        groupValue: groupValue,
        onChanged: onChangedNo,
      ),
       Text('no'.tr),
       Radio(
        value: noAnswerValue,
        groupValue: groupValue,
        onChanged: onChangedNoAnswer,
      ),
       Text('No Answer'.tr),
    ]);
  }
}
