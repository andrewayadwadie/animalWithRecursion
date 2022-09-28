import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_get_immunizations_controllerl.dart';
import '../../controller/goat_immunization_new_date_controller.dart';
import '../../controller/goat_immunization_new_doctroe_controller.dart';
import '../../controller/goat_immunization_program_raio_controller.dart';
import '../../controller/goat_immunization_way_text_controller.dart';
import '../../controller/goat_send_new_immunization_data_controller.dart';
import 'goat_immunization_new_doctor_widget.dart';
import 'goat_immunization_program_radio_widget.dart';
import 'goat_immunization_textfield_widget.dart';
 

// ignore: must_be_immutable
class GoatImmunizationDataWidget extends StatelessWidget {
  GoatImmunizationDataWidget({Key? key}) : super(key: key);

 
  GoatSendNewImmunizationDataController sendNewImmunizationDataController =
      Get.put(GoatSendNewImmunizationDataController(), permanent: true);
      GoatImmunizationWayTextController wayCtrl = Get.put(GoatImmunizationWayTextController())  ;

      List<TextEditingController> editCtrl = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.9,
      width: MediaQuery.of(context).size.height / 4,
      child: GetBuilder<GoatGetImmunizationsController>(
          init: GoatGetImmunizationsController(),
          builder: (typeCtrl) {
            return typeCtrl.loading.value == true
                ? const LoaderWidget()
                :   ListView.builder(
                        itemCount: typeCtrl.immunization.length,
                        itemBuilder: (context, index) {
                          for (var i = 0; i <typeCtrl.immunization.length ; i++) {
                            editCtrl.add(TextEditingController());
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text('${typeCtrl.immunization[index].name}'),
                                leading: Checkbox(
                                  value: typeCtrl.choices == []
                                      ? false
                                      : typeCtrl.choices[index],
                                  onChanged: (val) =>
                                      typeCtrl.changeCheckBox(val, index),
                                ),
                              ),
                              if (typeCtrl.choices[index] == true)
                                //! modal bottom sheet of immunizaion
                                GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          isDismissible: false,
                                          builder: (ctx) {
                                            return GetBuilder<
                                                    GoatImmunizationProgramRadioController>(
                                                init:
                                                    GoatImmunizationProgramRadioController(
                                                        typeCtrl.immunization),
                                                builder:
                                                    (immunizationProgramRadioCtrl) {
                                                  return SizedBox(
                                                    height: MediaQuery.of(context)
                                                            .size
                                                            .height /
                                                        2.5,
                                                    child: ListView(
                                                      children: [
                                                          LabelWidget(
                                                            label:
                                                                "How to give each immunization?".tr),
                                                        GoatImmunizationNewTextFieldWidget(
                                                          controller:editCtrl[index],
                                                            title:
                                                                "immunization way".tr,
                                                            onNoteChange: (val) {
                                                              // wayCtrl.changeWay(val??"");
                                                            }),
                                                          LabelWidget(
                                                            label:
                                                                "Is the full immunization program implemented?".tr),
                                                        GetBuilder<
                                                                GoatImmunizationNewDateController>(
                                                            init: GoatImmunizationNewDateController(
                                                                typeCtrl
                                                                    .immunization),
                                                            builder: (dateCtrl) {
                                                              return Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  GoatImmunizationProgramRadioWidget(
                                                                      yesValue:
                                                                          "yes".tr,
                                                                      onChangedYes: (val) =>
                                                                          immunizationProgramRadioCtrl.onChange(
                                                                              val ??
                                                                                  "yes".tr,
                                                                              index),
                                                                      noValue: "no".tr,
                                                                      onChangedNo: (val) =>
                                                                          immunizationProgramRadioCtrl.onChange(
                                                                              val ??
                                                                                  "no".tr,
                                                                              index),
                                                                      groupValue:
                                                                          immunizationProgramRadioCtrl
                                                                                  .charcter[
                                                                              index]),
                                                                  if (immunizationProgramRadioCtrl
                                                                              .charcter[
                                                                          index] ==
                                                                      "yes".tr)
                                                                    //! Date
                                                                    Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                          LabelWidget(
                                                                            label:
                                                                                "What is the date of last immunization? ".tr),
                                                                        CupertinoButton(
                                                                            child: Container(
                                                                                margin: const EdgeInsets.symmetric(vertical: 10),
                                                                                padding: const EdgeInsets.symmetric(vertical: 10),
                                                                                alignment: Alignment.center,
                                                                                width: MediaQuery.of(context).size.width / 2,
                                                                                height: MediaQuery.of(context).size.height / 13,
                                                                                decoration: BoxDecoration(
                                                                                  color: primaryColor,
                                                                                  borderRadius: BorderRadius.circular(8),
                                                                                ),
                                                                                child: Text(
                                                                                  "${dateCtrl.date[index].year}-${dateCtrl.date[index].month}-${dateCtrl.date[index].day} ",
                                                                                  textAlign: TextAlign.center,
                                                                                  style: const TextStyle(color: whiteColor, fontSize: 15),
                                                                                )),
                                                                            onPressed: () => dateCtrl.onDateChange(context, index)),
                                                                      ],
                                                                    ),
                                                                  //! Doctors
                                                                  GoatImmunizationNewDoctorWidget(
                                                                    list: typeCtrl
                                                                        .immunization,
                                                                    listIndex:
                                                                        index,
                                                                  ),
                                                                  GetBuilder<
                                                                          GoatImmunizationNewDoctorController>(
                                                                      init: GoatImmunizationNewDoctorController(
                                                                          typeCtrl
                                                                              .immunization),
                                                                      builder:
                                                                          (doctorCtrl) {
                                                                        return GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                                
                                                                        
                                                                              sendNewImmunizationDataController
                                                                                  .addAnswer(
                                                                                immunzationId:
                                                                                    typeCtrl.immunization[index].id,
                                                                                date:
                                                                                    "${dateCtrl.date[index].year}-${dateCtrl.date[index].month}-${dateCtrl.date[index].day} ",
                                                                                immunzationGiver:
                                                                                    doctorCtrl.immunizationNewDoctorText[index].value,
                                                                                immunzationWay:
                                                                                   editCtrl [index].text,
                                                                                isFullImmunizationProgram: immunizationProgramRadioCtrl.charcter[index] == "yes"
                                                                                    ? true
                                                                                    : false,
                                                                              );
                                                                              log("answers : ${sendNewImmunizationDataController.answers}");

                                                                              Navigator.pop(
                                                                                  ctx);
                                                                           
                                                                          },
                                                                          child: Center(
                                                                              child: Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            height:
                                                                                MediaQuery.of(context).size.height /
                                                                                    13,
                                                                            width:
                                                                                MediaQuery.of(context).size.width /
                                                                                    2,
                                                                            decoration: BoxDecoration(
                                                                                color: primaryColor,
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                border: Border.all(
                                                                                  width: 2,
                                                                                  color: whiteColor,
                                                                                )),
                                                                            child:   AutoSizeText(
                                                                                "Add Data".tr,
                                                                                style:
                                                                                    const TextStyle(
                                                                                  color: whiteColor,
                                                                                )),
                                                                          )),
                                                                        );
                                                                      })
                                                                ],
                                                              );
                                                            }),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          });
                                    },
                                    child: Center(
                                        child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height / 13,
                                      width: MediaQuery.of(context).size.width / 2,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: whiteColor,
                                          )),
                                      child:   AutoSizeText(
                                          "Add Immunization Data".tr,
                                          style: const TextStyle(
                                            color: whiteColor,
                                          )),
                                    ))),
                            ],
                          );
                        });
                  
          }),
    );
  }
}
