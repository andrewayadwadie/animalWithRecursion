import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/goat_immunization_exist_controller.dart';
import '../../controller/goat_send_new_immunization_data_controller.dart';
import 'goat_immunization_data_widget.dart';
 
// ignore: must_be_immutable
class GoatImmunizationNewFormWidget extends StatelessWidget {
  GoatImmunizationNewFormWidget({Key? key}) : super(key: key);
  //List<String> immunizaionWay = [];
  GoatSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(GoatSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoatImmunizationExistController>(
        init: GoatImmunizationExistController(),
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
                    leading: Radio<GoatImmunizationExist>(
                      value: GoatImmunizationExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? GoatImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title:   Text('no'.tr),
                    leading: Radio<GoatImmunizationExist>(
                      value: GoatImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? GoatImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == GoatImmunizationExist.yes)
                    GoatImmunizationDataWidget()
                ],
              ),
            ),
           
          ]);
        });
  }
}
