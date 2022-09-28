import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_defenation_radio_controller.dart';
import '../../controller/camel_exist_animal_controller.dart';
import '../../controller/camel_general_checkbox_controller.dart';
import '../../controller/camel_move_outside_radio_controller.dart';
import '../../controller/camel_move_outsite_check_controller.dart';
import '../../controller/camel_move_times_check_controller.dart';
import '../../controller/camel_new_animal_bought_radio_controller.dart';
import '../../controller/camel_record_radio_controller.dart';
import '../../controller/camel_textfield_controller.dart';
import '../../controller/mix_checkbox_controller.dart';
import '../../controller/mix_with_animals_controller.dart';
import '../../controller/wild_radio_controller.dart';
import 'camel_animal_exist_in_farm_widget.dart';
import 'camel_another_animal_type_widget.dart';
import 'camel_buy_new_animal_widget.dart';
import 'camel_distance_movement_widget.dart';
import 'camel_source_buy_new_animal_widget.dart';
import 'camel_times_buy_new_animal_widget.dart';
import 'general_radio_widget.dart';
import 'general_textfield_widget.dart';

// ignore: must_be_immutable
class GeneralManagementWidget extends StatelessWidget {
  GeneralManagementWidget({Key? key}) : super(key: key);
  CamelTextFieldController textCtrl = Get.put(CamelTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!workers
        //? push in api object with id 1
        LabelWidget(label: "number of workers in the farm ".tr),
        GeneralTextFieldWidget(
            title: "number of workers in the farm ".tr,
            onNoteChange: (val) {
              textCtrl.onChangeWorkersNo(val ?? "");
            }),

        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Are animals defined?
        //? push in api object with id 2 if yes and 3 No
        LabelWidget(label: "Are animals defined ?".tr),
        GetBuilder<CamelDefenationController>(
            init: CamelDefenationController(),
            builder: (defCtrl) {
              return GeneralRadioWidget(
                enumName: CamelDefenation,
                yesValue: CamelDefenation.yes,
                onChangedYes: (val) =>
                    defCtrl.onChange(val ?? CamelDefenation.yes),
                noValue: CamelDefenation.no,
                onChangedNo: (val) =>
                    defCtrl.onChange(val ?? CamelDefenation.no),
                groupValue: defCtrl.charcter,
                noAnswerValue: CamelDefenation.noAnswer,
                onChangedNoAnswer: (val) =>
                    defCtrl.onChange(val ?? CamelDefenation.noAnswer),
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Do you keep records of farm
        LabelWidget(label: "Do you keep records of farm?".tr),
        GetBuilder<CamelRecordController>(
            init: CamelRecordController(),
            builder: (record) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GeneralRadioWidget(
                    enumName: CamelRecord,
                    yesValue: CamelRecord.yes,
                    onChangedYes: (val) =>
                        record.onChange(val ?? CamelRecord.yes),
                    noValue: CamelRecord.no,
                    onChangedNo: (val) =>
                        record.onChange(val ?? CamelRecord.no),
                    groupValue: record.charcter,
                    noAnswerValue: CamelRecord.noAnswer,
                    onChangedNoAnswer: (val) =>
                        record.onChange(val ?? CamelRecord.noAnswer),
                  ),
                  if (record.charcter == CamelRecord.yes)
                    GetBuilder<CamelGeneralCheckboxController>(
                        init: CamelGeneralCheckboxController(choices: [
                          "animal identification record", //? push in api object with id 4
                          "census record", //? push in api object with id 5
                          "production record", //? push in api object with id 6
                          "sick record", //? push in api object with id 7
                          "treatments", //? push in api object with id 8
                          "record of fortifications ", //? push in api object with id 9
                          "log visits" //? push in api object with id 10
                        ]),
                        builder: (check) {
                          return Column(
                            children: List.generate(
                                check.choicesBoolList.length, (index) {
                              return ListTile(
                                title: Text(check.choices[index].tr),
                                leading: Checkbox(
                                  value: check.choicesBoolList[index],
                                  onChanged: (val) =>
                                      check.onChange(val, index),
                                ),
                              );
                            }),
                          );
                        })
                ],
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        LabelWidget(label: "Are there other animals on the farm?".tr),
        GetBuilder<CamelAnimalExistController>(
            init: CamelAnimalExistController(),
            builder: (existAnimalCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CamelAnimalExistRadioWidget(
                    enumName: CamelAnimalExist,
                    yesValue: CamelAnimalExist.yes,
                    onChangedYes: (val) =>
                        existAnimalCtrl.onChange(val ?? CamelAnimalExist.yes),
                    noValue: CamelAnimalExist.no,
                    onChangedNo: (val) =>
                        existAnimalCtrl.onChange(val ?? CamelAnimalExist.no),
                    groupValue: existAnimalCtrl.charcter,
                    onChangedNoAnswer: (val) => existAnimalCtrl
                        .onChange(val ?? CamelAnimalExist.noAnswer),
                    noAnswerValue: CamelAnimalExist.noAnswer,
                  ),
                  if (existAnimalCtrl.charcter == CamelAnimalExist.yes)
                    LabelWidget(label: "Detect animals".tr),
                  if (existAnimalCtrl.charcter == CamelAnimalExist.yes)

                    //!=== ============*============================*==============================
                    const CamelOntherAnimalWidget(),
                  //!=== ============*============================*==============================
                ],
              );
            }),
        //!Is there a possibility of mixing herd animals with wild animals?
        //? push in api object with id 11 if yes and 12 if No
        LabelWidget(
            label:
                "Is there a possibility of mixing herd animals with wild animals?"
                    .tr),
        GetBuilder<CamelWildController>(
            init: CamelWildController(),
            builder: (wildCtrl) {
              return GeneralRadioWidget(
                enumName: CamelWild,
                yesValue: CamelWild.yes,
                onChangedYes: (val) => wildCtrl.onChange(val ?? CamelWild.yes),
                noValue: CamelWild.no,
                onChangedNo: (val) => wildCtrl.onChange(val ?? CamelWild.no),
                groupValue: wildCtrl.charcter,
                noAnswerValue: CamelWild.noAnswer,
                onChangedNoAnswer: (val) =>
                    wildCtrl.onChange(val ?? CamelWild.noAnswer),
              );
            }),

        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Is it possible for herd animals to mix with animals from herds on other farms?
          LabelWidget(
            label:
                "Is it possible for herd animals to mix with animals from herds on other farms?".tr),
        //? if "no" don't push anything in api if yes push in api first checkbox
        GetBuilder<CamelWithAnimalsController>(
            init: CamelWithAnimalsController(),
            builder: (mixCtrl) {
              return Column(
                children: [
                  GeneralRadioWidget(
                    enumName: CamelWithAnimals,
                    yesValue: CamelWithAnimals.yes,
                    onChangedYes: (val) =>
                        mixCtrl.onChange(val ?? CamelWithAnimals.yes),
                    noValue: CamelWithAnimals.no,
                    onChangedNo: (val) =>
                        mixCtrl.onChange(val ?? CamelWithAnimals.no),
                    groupValue: mixCtrl.charcter,
                    noAnswerValue: CamelWithAnimals.noAnswer,
                    onChangedNoAnswer: (val) =>
                        mixCtrl.onChange(val ?? CamelWithAnimals.noAnswer),
                  ),
                  if (mixCtrl.charcter == CamelWithAnimals.yes)
                    GetBuilder<CamelMixCheckboxController>(
                        init: CamelMixCheckboxController(choices: [
                          "vaccination campaigns", //? push in api object with id 13
                          "veterinary clinics ", //? push in api object with id 14
                          "markets", //? push in api object with id 15
                          "Race", //? push in api object with id 16
                          "other", //? push in api object with id 17
                        ]),
                        builder: (mixcheck) {
                          return Column(
                            children: List.generate(
                                mixcheck.choicesBoolList.length, (index) {
                              return ListTile(
                                title: Text(mixcheck.choices[index].tr),
                                leading: Checkbox(
                                  value: mixcheck.choicesBoolList[index],
                                  onChanged: (val) =>
                                      mixcheck.onChange(val, index),
                                ),
                              );
                            }),
                          );
                        })
                ],
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Do animals move outside the farm?
        //? push in api object with id 18 if yes and 19 if No
        LabelWidget(label: "Do animals move outside the farm?".tr),
        GetBuilder<CamelMoveOutsideController>(
            init: CamelMoveOutsideController(),
            builder: (moveCtrl) {
              return Column(
                children: [
                  GeneralRadioWidget(
                    enumName: CamelMoveOutside,
                    yesValue: CamelMoveOutside.yes,
                    onChangedYes: (val) =>
                        moveCtrl.onChange(val ?? CamelMoveOutside.yes),
                    noValue: CamelMoveOutside.no,
                    onChangedNo: (val) =>
                        moveCtrl.onChange(val ?? CamelMoveOutside.no),
                    groupValue: moveCtrl.charcter,
                    noAnswerValue: CamelMoveOutside.noAnswer,
                    onChangedNoAnswer: (val) =>
                        moveCtrl.onChange(val ?? CamelMoveOutside.noAnswer),
                  ),
                  if (moveCtrl.charcter == CamelMoveOutside.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the purpose of her movements?".tr),
                        GetBuilder<CamelMoveCheckboxController>(
                            init: CamelMoveCheckboxController(choices: [
                              "Markets", //? push in api object with id 20
                              "massacres", //? push in api object with id 21
                              "veterinary clinics", //? push in api object with id 22
                              "Race", //? push in api object with id 23
                              "Export", //? push in api object with id 24
                              "other", //? push in api object with id 25 //? push in api object with id 25
                            ]),
                            builder: (moveCheck) {
                              return Column(
                                children: List.generate(
                                    moveCheck.choicesBoolList.length, (index) {
                                  return ListTile(
                                    title: Text(moveCheck.choices[index].tr),
                                    leading: Checkbox(
                                      value: moveCheck.choicesBoolList[index],
                                      onChanged: (val) =>
                                          moveCheck.onChange(val, index),
                                    ),
                                  );
                                }),
                              );
                            }),
                        LabelWidget(
                            label: "What are the times of its movements?".tr),
                        GetBuilder<CamelMoveTimesCheckboxController>(
                            init: CamelMoveTimesCheckboxController(choices: [
                              'Throughout the year', //? push in api object with id 26
                              "seasonal", //? push in api object with id 27
                            ]),
                            builder: (moveTimesCtrl) {
                              return Column(
                                children: List.generate(
                                    moveTimesCtrl.choicesBoolList.length,
                                    (index) {
                                  return ListTile(
                                    title:
                                        Text(moveTimesCtrl.choices[index].tr),
                                    leading: Checkbox(
                                      value:
                                          moveTimesCtrl.choicesBoolList[index],
                                      onChanged: (val) =>
                                          moveTimesCtrl.onChange(val, index),
                                    ),
                                  );
                                }),
                              );
                            }),
                        LabelWidget(
                            label: "What are the distances of their movements?"
                                .tr),
                        const CamelDistanceMovementWidget(),
                      ],
                    ),
                ],
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //! Are new animals bought to the farm?
        //? push in api object with id 31 if yes and 32 if No
        LabelWidget(label: "Are new animals bought to the farm?".tr),
        GetBuilder<CamelNewAnimalBoughtController>(
            init: CamelNewAnimalBoughtController(),
            builder: (newanimal) {
              return Column(
                children: [
                  GeneralRadioWidget(
                    enumName: CamelNewAnimalBought,
                    yesValue: CamelNewAnimalBought.yes,
                    onChangedYes: (val) =>
                        newanimal.onChange(val ?? CamelNewAnimalBought.yes),
                    noValue: CamelNewAnimalBought.no,
                    onChangedNo: (val) =>
                        newanimal.onChange(val ?? CamelNewAnimalBought.no),
                    groupValue: newanimal.charcter,
                    noAnswerValue: CamelNewAnimalBought.noAnswer,
                    onChangedNoAnswer: (val) => newanimal
                        .onChange(val ?? CamelNewAnimalBought.noAnswer),
                  ),
                  if (newanimal.charcter == CamelNewAnimalBought.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the reason for buying animals?".tr),
                        const CamelBuyNewAnimalWidget(),
                        LabelWidget(
                            label: "What are the times to buy animals?".tr),
                        const CamelTimesBuyNewAnimalWidget(),
                        LabelWidget(
                            label:
                                "What are the sources of animal purchase?".tr),
                        const CamelSourceBuyNewAnimalWidget(),
                        //? push in api object with id 44 and comment with date
                        GetBuilder<DateController>(
                            init: DateController(),
                            builder: (dateCtrl) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  LabelWidget(
                                      label:
                                          "What is the date of the last purchase of animals?"
                                              .tr),
                                  CupertinoButton(
                                      child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          alignment: Alignment.center,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              13,
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: whiteColor,
                                                fontSize: 15),
                                          )),
                                      onPressed: () =>
                                          dateCtrl.onDateChange(context)),
                                ],
                              );
                            }),
                        //? push in api object with id 45 and comment with date
                        LabelWidget(label: "How many animals?".tr),
                        GeneralTextFieldWidget(
                            title: "How many animals?".tr,
                            onNoteChange: (val) {
                              textCtrl.onChangeAnimalCount(val ?? "");
                            }),
                      ],
                    ),
                ],
              );
            }),
      ],
    );
  }
}
