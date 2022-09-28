import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/clinical_symptoms/view/screen/clinical_symptoms_screen.dart';
import '../../controller/camel_immunization_exist_controller.dart';
import '../../controller/camel_immunization_types_controller.dart';

class CamelImmunizationFormWidget extends StatelessWidget {
  const CamelImmunizationFormWidget({Key? key}) : super(key: key);

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
                  const Text(
                    "Was Immunization done in the previous year?",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<CamelImmunizationExist>(
                      value: CamelImmunizationExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CamelImmunizationExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<CamelImmunizationExist>(
                      value: CamelImmunizationExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? CamelImmunizationExist.no),
                    ),
                  ),
                  if (radio.charcter == CamelImmunizationExist.yes)
                    GetBuilder<CamelImmunizationTypesController>(
                        init: CamelImmunizationTypesController(),
                        builder: (typeCtrl) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Camel Immunizations Types :",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ListTile(
                                title: const Text('Brucellosis'),
                                leading: Checkbox(
                                  value: typeCtrl.brucellosis,
                                  onChanged: (val) =>
                                      typeCtrl.brucellosisonChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('Corona Mers For Camels'),
                                leading: Checkbox(
                                  value: typeCtrl.coronaMersForCamels,
                                  onChanged: (val) =>
                                      typeCtrl.coronaMersForCamelsChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('Smallpox For Camels'),
                                leading: Checkbox(
                                  value: typeCtrl.smallpoxForCamels,
                                  onChanged: (val) =>
                                      typeCtrl.smallpoxForCamelsonChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('PPR'),
                                leading: Checkbox(
                                  value: typeCtrl.ppr,
                                  onChanged: (val) => typeCtrl.ppronChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('foot and mouth disease '),
                                leading: Checkbox(
                                  value: typeCtrl.fmd,
                                  onChanged: (val) => typeCtrl.fmdChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('rift valley fever'),
                                leading: Checkbox(
                                  value: typeCtrl.rvf,
                                  onChanged: (val) => typeCtrl.rvfChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text('IPR'),
                                leading: Checkbox(
                                  value: typeCtrl.ipr,
                                  onChanged: (val) => typeCtrl.iprChange(val),
                                ),
                              ),
                              ListTile(
                                title: const Text(
                                    'Trypanosomiasis And Other Blood Parasites'),
                                leading: Checkbox(
                                  value: typeCtrl
                                      .trypanosomiasisAndOtherBloodParasites,
                                  onChanged: (val) => typeCtrl
                                      .trypanosomiasisAndOtherBloodParasitesChange(
                                          val),
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
                                    contentPadding: const EdgeInsets.symmetric(
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
                                    hintText: "Others",
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
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Get.to(const ClinicalSymptomScreen());
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
