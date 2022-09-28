import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/camel_immunization_exist_controller.dart';
import '../../controller/camel_send_new_immunization_data_controller.dart';
import 'camel_immunization_data_widget.dart';

// ignore: must_be_immutable
class CamelImmunizationNewFormWidget extends StatelessWidget {
  CamelImmunizationNewFormWidget({Key? key}) : super(key: key);
  //List<String> immunizaionWay = [];
  CamelSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(CamelSendNewImmunizationDataController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamelImmunizationExistController>(
        init: CamelImmunizationExistController(),
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
                    leading: Radio<CamelImmunizationExist>(
                      value: CamelImmunizationExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CamelImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title:   Text('no'.tr),
                    leading: Radio<CamelImmunizationExist>(
                      value: CamelImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CamelImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == CamelImmunizationExist.yes)
                    CamelImmunizationDataWidget()
                ],
              ),
            ),
           
          ]);
        });
  }
}
