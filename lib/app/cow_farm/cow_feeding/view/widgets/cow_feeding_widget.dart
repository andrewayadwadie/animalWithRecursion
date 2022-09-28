 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_feed_type_checkbox_controller.dart';
import 'cow_concentrated_fodder_widget.dart';

 
 
class CowFeedingWidget extends StatelessWidget {
  const CowFeedingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          LabelWidget(label: "What type of feed?".tr),
        GetBuilder<CowFeedTypeCheckboxController>(
            init: CowFeedTypeCheckboxController(choices: [
              "green fodder", //? push in api object with id 78
              "barley", //? push in api object with id 79
              "hay", //? push in api object with id 80
              "concentrated fodder", //? push in api object with id 81
            ]),
            builder: (feedTypeCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: List.generate(feedTypeCtrl.choicesBoolList.length,
                        (index) {
                      return ListTile(
                        title: Text(feedTypeCtrl.choices[index].tr),
                        leading: Checkbox(
                          value: feedTypeCtrl.choicesBoolList[index],
                          onChanged: (val) => feedTypeCtrl.onChange(val, index),
                        ),
                      );
                    }),
                  ),
                  if (feedTypeCtrl.choicesBoolList.last == true)
                      CowConcentratedFodderWidget()
                ],
              );
            })
      ],
    );
  }
}
