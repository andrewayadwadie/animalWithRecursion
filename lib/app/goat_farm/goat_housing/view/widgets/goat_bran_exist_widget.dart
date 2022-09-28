import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../controller/goat_housing_textfield_controller.dart';
import 'goat_housing_textfield_widget.dart';

// ignore: must_be_immutable
class GoatBranExistWidget extends StatelessWidget {
  GoatBranExistWidget({Key? key}) : super(key: key);
  GoatHousingTextFieldController textCtrl =
      Get.put(GoatHousingTextFieldController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SendGoatHerdDataController>(
        init: SendGoatHerdDataController(),
        builder: (sendDataCtrl) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //? push in api object with id 48
              LabelWidget(label: "What is the number of barns?".tr),
              GoatHousingTextFieldWidget(
                  title: "What is the number of barns?".tr,
                  onNoteChange: (val) {
                    textCtrl.onChangeBarnsNo(val ?? "");
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //? push in api object with id 49
              LabelWidget(label: "What is the barn area?".tr),
              GoatHousingTextFieldWidget(
                  title: "What is the barn area?".tr,
                  onNoteChange: (val) {
                    textCtrl.onChangeBarnArea(val ?? "");
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
              //? push in api object with id 50
              LabelWidget(label: "What is the number of barn animals".tr),
              GoatHousingTextFieldWidget(
                  title: "What is the number of barn animals".tr,
                  onNoteChange: (val) {
                    textCtrl.onChangeAnimalBarn(val ?? "");
                  }),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
              ),
            ],
          );
        });
  }
}
