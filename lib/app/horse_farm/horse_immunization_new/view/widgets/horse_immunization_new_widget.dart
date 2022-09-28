import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/horse_immunization_exist_controller.dart';
import '../../controller/horse_send_new_immunization_data_controller.dart';
import 'horse_immunization_data_widget.dart';


// ignore: must_be_immutable
class HorseImmunizationNewFormWidget extends StatelessWidget {
  HorseImmunizationNewFormWidget({Key? key}) : super(key: key);
  //List<String> immunizaionWay = [];
  HorseSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(HorseSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HorseImmunizationExistController>(
        init: HorseImmunizationExistController(),
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
                    leading: Radio<HorseImmunizationExist>(
                      value: HorseImmunizationExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? HorseImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title:  Text('no'.tr),
                    leading: Radio<HorseImmunizationExist>(
                      value: HorseImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? HorseImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == HorseImmunizationExist.yes)
                    HorseImmunizationDataWidget()
                ],
              ),
            ),
           
          ]);
        });
  }
}
