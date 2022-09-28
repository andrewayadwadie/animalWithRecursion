import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../../controller/disease_outbreak_textfield_controller.dart';
import '../../controller/local_disease_checkbox_controller.dart';
import 'outbreak_textfield_widget.dart';

// ignore: must_be_immutable
class LocalDiseaseWidget extends StatelessWidget {
  LocalDiseaseWidget({Key? key}) : super(key: key);
  DiseaseOutbreakTextfieldController textFielsdCtrl =
      Get.put(DiseaseOutbreakTextfieldController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<LocalDiseaseCheckBoxController>(
            init: LocalDiseaseCheckBoxController(choices: [
              " foot-and-mouth disease",
              "rift valley fever",
              "blue tongue",
              "PPR",
              "Brucella",
              "tuberculosis",
              "Jones disease",
              "blood parasites",
              " scabies",
            ]),
            builder: (localDisease) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 50,
                        right: MediaQuery.of(context).size.width / 50),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 60,
                        right: MediaQuery.of(context).size.width / 60),
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: ListView(
                      children: List.generate(
                          localDisease.choicesBoolList.length, (index) {
                        return ListTile(
                          title: Text(localDisease.choices[index].tr),
                          leading: Checkbox(
                            value: localDisease.choicesBoolList[index],
                            onChanged: (val) =>
                                localDisease.onChange(val, index),
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: greyColor.withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 60,
                          right: MediaQuery.of(context).size.width / 60),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 12,
                      child: OutBreakextFieldWidget(
                        controller: textFielsdCtrl.otherLocalDisease,
                        title: 'other'.tr,
                        // onNoteChange: (value) {
                        //   textFielsdCtrl.onChangeOtherLocalDisease(value ?? "");
                        // },
                        keyboardType: TextInputType.text,
                      ))
                ],
              );
            })
      ],
    );
  }
}
