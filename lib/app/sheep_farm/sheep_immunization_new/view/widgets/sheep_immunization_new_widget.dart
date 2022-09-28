import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/sheep_immunization_exist_controller.dart';
import '../../controller/sheep_send_new_immunization_data_controller.dart';
import 'sheep_immunization_data_widget.dart';
 

// ignore: must_be_immutable
class SheepImmunizationNewFormWidget extends StatelessWidget {
  SheepImmunizationNewFormWidget({Key? key}) : super(key: key);
  //List<String> immunizaionWay = [];
  SheepSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(SheepSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SheepImmunizationExistController>(
        init: SheepImmunizationExistController(),
        builder: (radio) {
          return Stack(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: ListView(
                children: [
                    Text(
                    "Was Immunization done in the previous year?".tr,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title:   Text('yes'.tr),
                    leading: Radio<SheepImmunizationExist>(
                      value: SheepImmunizationExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? SheepImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title:   Text('no'.tr),
                    leading: Radio<SheepImmunizationExist>(
                      value: SheepImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? SheepImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == SheepImmunizationExist.yes)
                    SheepImmunizationDataWidget()
                ],
              ),
            ),
           
          ]);
        });
  }
}
