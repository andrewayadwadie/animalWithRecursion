import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/suspected_disease_checkbox_controller.dart';
import 'local_disease_widget.dart';

class SuspectedDiseaseWidget extends StatelessWidget {
  const SuspectedDiseaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SuspectedDiseaseCheckBoxController>(
        init: SuspectedDiseaseCheckBoxController(choices: [
          "Is the disease a known import, but it is not spread locally?",
          "Is the disease urgent but unknown?",
          "Is the disease known locally?",
        ]),
        builder: (suspectedDisease) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: List.generate(suspectedDisease.choicesBoolList.length,
                    (index) {
                  return ListTile(
                    title: Text(suspectedDisease.choices[index].tr),
                    leading: Checkbox(
                      value: suspectedDisease.choicesBoolList[index],
                      onChanged: (val) => suspectedDisease.onChange(val, index),
                    ),
                  );
                }),
              ),
              if (suspectedDisease.choicesBoolList.last == true)
                LocalDiseaseWidget(),
            ],
          );
        });
  }
}
