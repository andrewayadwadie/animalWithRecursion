import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../camel_farm/general_management/view/widgets/general_radio_widget.dart';
import '../../../../camel_farm/general_management/view/widgets/general_textfield_widget.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/goat_defenation_radio_controller.dart';
import '../../controller/goat_exist_animal_controller.dart';
import '../../controller/goat_general_checkbox_controller.dart';
import '../../controller/goat_mix_checkbox_controller.dart';
import '../../controller/goat_mix_with_animals_controller.dart';
import '../../controller/goat_move_outside_radio_controller.dart';
import '../../controller/goat_move_outsite_check_controller.dart';
import '../../controller/goat_move_times_check_controller.dart';
import '../../controller/goat_new_animal_bought_radio_controller.dart';
import '../../controller/goat_record_radio_controller.dart';
import '../../controller/goat_textfield_controller.dart';
import '../../controller/goat_wild_radio_controller.dart';
import 'goat_animal_exist_in_farm_widget.dart';
import 'goat_another_animal_type_widget.dart';
import 'goat_buy_new_animal_widget.dart';
import 'goat_distance_movement_widget.dart';
import 'goat_source_buy_new_animal_widget.dart';
import 'goat_times_buy_new_animal_widget.dart';

// ignore: must_be_immutable
class GoatGeneralManagementWidget extends StatelessWidget {
  GoatGeneralManagementWidget({Key? key}) : super(key: key);
  GoatTextFieldController textCtrl = Get.put(GoatTextFieldController());
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
        GetBuilder<GoatDefenationController>(
            init: GoatDefenationController(),
            builder: (defCtrl) {
              return GeneralRadioWidget(
                enumName: GoatDefenation,
                yesValue: GoatDefenation.yes,
                onChangedYes: (val) =>
                    defCtrl.onChange(val ?? GoatDefenation.yes),
                noValue: GoatDefenation.no,
                onChangedNo: (val) =>
                    defCtrl.onChange(val ?? GoatDefenation.no),
                groupValue: defCtrl.charcter,
                noAnswerValue: GoatDefenation.noAnswer,
                onChangedNoAnswer: (val) =>
                    defCtrl.onChange(val ?? GoatDefenation.noAnswer),
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Do you keep records of farm
        LabelWidget(label: "Do you keep records of farm?".tr),
        GetBuilder<GoatRecordController>(
            init: GoatRecordController(),
            builder: (record) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GeneralRadioWidget(
                    enumName: GoatRecord,
                    yesValue: GoatRecord.yes,
                    onChangedYes: (val) =>
                        record.onChange(val ?? GoatRecord.yes),
                    noValue: GoatRecord.no,
                    onChangedNo: (val) => record.onChange(val ?? GoatRecord.no),
                    groupValue: record.charcter,
                    noAnswerValue: GoatRecord.noAnswer,
                    onChangedNoAnswer: (val) =>
                        record.onChange(val ?? GoatRecord.noAnswer),
                  ),
                  if (record.charcter == GoatRecord.yes)
                    GetBuilder<GoatGeneralCheckboxController>(
                        init: GoatGeneralCheckboxController(choices: [
                          "animal identification record", //? push in api object with id 4
                          "census record", //? push in api object with id 5
                          "production record", //? push in api object with id 6
                          "sick record", //? push in api object with id 7
                          "treatments", //? push in api object with id 8
                          "record of fortifications", //? push in api object with id 9
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
        GetBuilder<GoatAnimalExistController>(
            init: GoatAnimalExistController(),
            builder: (existAnimalCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoatAnimalExistRadioWidget(
                    enumName: GoatAnimalExist,
                    yesValue: GoatAnimalExist.yes,
                    onChangedYes: (val) =>
                        existAnimalCtrl.onChange(val ?? GoatAnimalExist.yes),
                    noValue: GoatAnimalExist.no,
                    onChangedNo: (val) =>
                        existAnimalCtrl.onChange(val ?? GoatAnimalExist.no),
                    groupValue: existAnimalCtrl.charcter,
                    onChangedNoAnswer: (val) => existAnimalCtrl
                        .onChange(val ?? GoatAnimalExist.noAnswer),
                    noAnswerValue: GoatAnimalExist.noAnswer,
                  ),
                  if (existAnimalCtrl.charcter == GoatAnimalExist.yes)
                    LabelWidget(label: "Detect animals".tr),
                  if (existAnimalCtrl.charcter == GoatAnimalExist.yes)
                    const GoatOntherAnimalWidget(),
                ],
              );
            }),
        //!Is there a possibility of mixing herd animals with wild animals?
        //? push in api object with id 11 if yes and 12 if No
        LabelWidget(
            label:
                "Is there a possibility of mixing herd animals with wild animals?"
                    .tr),
        GetBuilder<GoatWildController>(
            init: GoatWildController(),
            builder: (wildCtrl) {
              return GeneralRadioWidget(
                enumName: GoatWild,
                yesValue: GoatWild.yes,
                onChangedYes: (val) => wildCtrl.onChange(val ?? GoatWild.yes),
                noValue: GoatWild.no,
                onChangedNo: (val) => wildCtrl.onChange(val ?? GoatWild.no),
                groupValue: wildCtrl.charcter,
                noAnswerValue: GoatWild.noAnswer,
                onChangedNoAnswer: (val) =>
                    wildCtrl.onChange(val ?? GoatWild.noAnswer),
              );
            }),

        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Is it possible for herd animals to mix with animals from herds on other farms?
        LabelWidget(
            label:
                "Is it possible for herd animals to mix with animals from herds on other farms?"
                    .tr),
        //? if "no" don't push anything in api if yes push in api first checkbox
        GetBuilder<GoatWithAnimalsController>(
            init: GoatWithAnimalsController(),
            builder: (mixCtrl) {
              return Column(
                children: [
                  GeneralRadioWidget(
                    enumName: GoatWithAnimals,
                    yesValue: GoatWithAnimals.yes,
                    onChangedYes: (val) =>
                        mixCtrl.onChange(val ?? GoatWithAnimals.yes),
                    noValue: GoatWithAnimals.no,
                    onChangedNo: (val) =>
                        mixCtrl.onChange(val ?? GoatWithAnimals.no),
                    groupValue: mixCtrl.charcter,
                    noAnswerValue: GoatWithAnimals.noAnswer,
                    onChangedNoAnswer: (val) =>
                        mixCtrl.onChange(val ?? GoatWithAnimals.noAnswer),
                  ),
                  if (mixCtrl.charcter == GoatWithAnimals.yes)
                    GetBuilder<GoatMixCheckboxController>(
                        init: GoatMixCheckboxController(choices: [
                          "vaccination campaigns", //? push in api object with id 13
                          "veterinary clinics", //? push in api object with id 14
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
        GetBuilder<GoatMoveOutsideController>(
            init: GoatMoveOutsideController(),
            builder: (moveCtrl) {
              return Column(
                children: [
                  GeneralRadioWidget(
                    enumName: GoatMoveOutside,
                    yesValue: GoatMoveOutside.yes,
                    onChangedYes: (val) =>
                        moveCtrl.onChange(val ?? GoatMoveOutside.yes),
                    noValue: GoatMoveOutside.no,
                    onChangedNo: (val) =>
                        moveCtrl.onChange(val ?? GoatMoveOutside.no),
                    groupValue: moveCtrl.charcter,
                    noAnswerValue: GoatMoveOutside.noAnswer,
                    onChangedNoAnswer: (val) =>
                        moveCtrl.onChange(val ?? GoatMoveOutside.noAnswer),
                  ),
                  if (moveCtrl.charcter == GoatMoveOutside.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the purpose of her movements?".tr),
                        GetBuilder<GoatMoveCheckboxController>(
                            init: GoatMoveCheckboxController(choices: [
                              "Markets", //? push in api object with id 20
                              "massacres", //? push in api object with id 21
                              "veterinary clinics", //? push in api object with id 22
                              "Race", //? push in api object with id 23
                              "Export", //? push in api object with id 24
                              "other", //? push in api object with id 25
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
                        GetBuilder<GoatMoveTimesCheckboxController>(
                            init: GoatMoveTimesCheckboxController(choices: [
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
                        const GoatDistanceMovementWidget(),
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
        GetBuilder<GoatNewAnimalBoughtController>(
            init: GoatNewAnimalBoughtController(),
            builder: (newanimal) {
              return Column(
                children: [
                  GeneralRadioWidget(
                    enumName: GoatNewAnimalBought,
                    yesValue: GoatNewAnimalBought.yes,
                    onChangedYes: (val) =>
                        newanimal.onChange(val ?? GoatNewAnimalBought.yes),
                    noValue: GoatNewAnimalBought.no,
                    onChangedNo: (val) =>
                        newanimal.onChange(val ?? GoatNewAnimalBought.no),
                    groupValue: newanimal.charcter,
                    noAnswerValue: GoatNewAnimalBought.noAnswer,
                    onChangedNoAnswer: (val) =>
                        newanimal.onChange(val ?? GoatNewAnimalBought.noAnswer),
                  ),
                  if (newanimal.charcter == GoatNewAnimalBought.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the reason for buying animals?".tr),
                        const GoatBuyNewAnimalWidget(),
                        LabelWidget(
                            label: "What are the times to buy animals?".tr),
                        const GoatTimesBuyNewAnimalWidget(),
                        LabelWidget(
                            label:
                                "What are the sources of animal purchase?".tr),
                        const GoatSourceBuyNewAnimalWidget(),
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
