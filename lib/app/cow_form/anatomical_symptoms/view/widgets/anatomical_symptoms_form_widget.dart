import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../suspected_disease/view/screen/suspected_disease_screen.dart';
import '../../controller/anatomical_check_controller.dart';
import '../../controller/anatomical_radio_controller.dart';

class AnatomicalFormWidget extends StatelessWidget {
  const AnatomicalFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnatomicalRadioController>(
        init: AnatomicalRadioController(),
        builder: (radio) {
          return Stack(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: ListView(
                children: [
                  Text(
                    "Are there Anatomical Symptoms ?".tr,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: Text('yes'.tr),
                    leading: Radio<AnatomicalExist>(
                      value: AnatomicalExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? AnatomicalExist.yes),
                    ),
                  ),
                  ListTile(
                    title: Text('no'.tr),
                    leading: Radio<AnatomicalExist>(
                      value: AnatomicalExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? AnatomicalExist.no),
                    ),
                  ),
                  if (radio.charcter == AnatomicalExist.yes)
                    GetBuilder<AnatomicalCheckController>(
                        init: AnatomicalCheckController(),
                        builder: (check) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Anatomical Symptoms:".tr,
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ListTile(
                                title: const Text('respiratory'),
                                leading: Checkbox(
                                  value: check.respiratory,
                                  onChanged: (val) =>
                                      check.respiratoryonChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('lymphNodes'),
                                leading: Checkbox(
                                  value: check.lymphNodes,
                                  onChanged: (val) =>
                                      check.lymphNodesChange(val),
                                ),
                              ),

                              ListTile(
                                title: const Text('heart'),
                                leading: Checkbox(
                                  value: check.heart,
                                  onChanged: (val) => check.heartChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('spleen'),
                                leading: Checkbox(
                                  value: check.spleen,
                                  onChanged: (val) => check.spleenChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('digestive'),
                                leading: Checkbox(
                                  value: check.digestive,
                                  onChanged: (val) =>
                                      check.digestiveChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('kidney'),
                                leading: Checkbox(
                                  value: check.kidney,
                                  onChanged: (val) => check.kidneyChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('external Only'),
                                leading: Checkbox(
                                  value: check.externalOnly,
                                  onChanged: (val) =>
                                      check.externalOnlyChange(val),
                                ),
                              ),
                              //! others
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 40, top: 30),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  cursorColor: primaryColor,
                                  maxLines: 2,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 10.0),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: greyColor),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      labelText: "Others",
                                      hintText: "Others",
                                      labelStyle: const TextStyle(
                                          height: 1.1,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)
                                      //enabledBorder: InputBorder.none
                                      ),
                                  textInputAction: TextInputAction.done,
                                  onSaved: (val) {},
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'error';
                                    }
                                    return null;
                                  }, // enabledBorder: InputBorder.none,
                                ),
                              ),
                            ],
                          );
                        }),
                ],
              ),
            ),
            //!Submit (Next Buttom)
            Align(
              alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Get.to(const SuspectedDiseaseScreen());
                },
                child: Get.locale == const Locale('ar')
                    ? SvgPicture.asset(
                        "assets/icons/add-ar.svg",
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 10,
                      )
                    : SvgPicture.asset(
                        "assets/icons/add-en.svg",
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 10,
                      ),
              ),
            )
          ]);
        });
  }
}
