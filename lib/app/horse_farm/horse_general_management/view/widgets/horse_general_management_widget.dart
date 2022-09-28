import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_defenation_radio_controller.dart';
import '../../controller/horse_exist_animal_controller.dart';
import '../../controller/horse_general_checkbox_controller.dart';
import '../../controller/horse_mix_checkbox_controller.dart';
import '../../controller/horse_mix_with_animals_controller.dart';
import '../../controller/horse_move_outside_radio_controller.dart';
import '../../controller/horse_move_outsite_check_controller.dart';
import '../../controller/horse_move_times_check_controller.dart';
import '../../controller/horse_new_animal_bought_radio_controller.dart';
import '../../controller/horse_record_radio_controller.dart';
import '../../controller/horse_textfield_controller.dart';
import '../../controller/horse_wild_radio_controller.dart';
import 'horse_animal_exist_in_farm_widget.dart';
import 'horse_another_animal_type_widget.dart';
import 'horse_buy_new_animal_widget.dart';
import 'horse_distance_movement_widget.dart';
import 'horse_general_radio_widget.dart';
import 'horse_general_textfield_widget.dart';
import 'horse_source_buy_new_animal_widget.dart';
import 'horse_times_buy_new_animal_widget.dart';

// ignore: must_be_immutable
class HorseGeneralManagementWidget extends StatelessWidget {
  HorseGeneralManagementWidget({Key? key}) : super(key: key);
  HorseTextFieldController textCtrl = Get.put(HorseTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!workers
        //? push in api object with id 1
        LabelWidget(label: "number of workers in the farm ".tr),
        HorseGeneralTextFieldWidget(
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
        GetBuilder<HorseDefenationController>(
            init: HorseDefenationController(),
            builder: (defCtrl) {
              return HorseGeneralRadioWidget(
                enumName: HorseDefenation,
                yesValue: HorseDefenation.yes,
                onChangedYes: (val) =>
                    defCtrl.onChange(val ?? HorseDefenation.yes),
                noValue: HorseDefenation.no,
                onChangedNo: (val) =>
                    defCtrl.onChange(val ?? HorseDefenation.no),
                groupValue: defCtrl.charcter,
                noAnswerValue: HorseDefenation.noAnswer,
                onChangedNoAnswer: (val) =>
                    defCtrl.onChange(val ?? HorseDefenation.noAnswer),
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Do you keep records of farm
        LabelWidget(label: "Do you keep records of farm?".tr),
        GetBuilder<HorseRecordController>(
            init: HorseRecordController(),
            builder: (record) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseGeneralRadioWidget(
                    enumName: HorseRecord,
                    yesValue: HorseRecord.yes,
                    onChangedYes: (val) =>
                        record.onChange(val ?? HorseRecord.yes),
                    noValue: HorseRecord.no,
                    onChangedNo: (val) =>
                        record.onChange(val ?? HorseRecord.no),
                    groupValue: record.charcter,
                    noAnswerValue: HorseRecord.noAnswer,
                    onChangedNoAnswer: (val) =>
                        record.onChange(val ?? HorseRecord.noAnswer),
                  ),
                  if (record.charcter == HorseRecord.yes)
                    GetBuilder<HorseGeneralCheckboxController>(
                        init: HorseGeneralCheckboxController(choices: [
                          "animal identification record", //? push in api object with id 4
                          "census record", //? push in api object with id 5
                          "production record", //? push in api object with id 6
                          "sick record", //? push in api object with id 7
                          "treatments", //? push in api object with id 8
                          "record of fortifications", //? push in api object with id 9
                          "log visits"
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
        GetBuilder<HorseAnimalExistController>(
            init: HorseAnimalExistController(),
            builder: (existAnimalCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorseAnimalExistRadioWidget(
                    enumName: HorseAnimalExist,
                    yesValue: HorseAnimalExist.yes,
                    onChangedYes: (val) =>
                        existAnimalCtrl.onChange(val ?? HorseAnimalExist.yes),
                    noValue: HorseAnimalExist.no,
                    onChangedNo: (val) =>
                        existAnimalCtrl.onChange(val ?? HorseAnimalExist.no),
                    groupValue: existAnimalCtrl.charcter,
                    onChangedNoAnswer: (val) => existAnimalCtrl
                        .onChange(val ?? HorseAnimalExist.noAnswer),
                    noAnswerValue: HorseAnimalExist.noAnswer,
                  ),
                  if (existAnimalCtrl.charcter == HorseAnimalExist.yes)
                    LabelWidget(label: "Detect animals".tr),
                  if (existAnimalCtrl.charcter == HorseAnimalExist.yes)
                    const HorseOntherAnimalWidget(),
                ],
              );
            }),
        //!Is there a possibility of mixing herd animals with wild animals?
        //? push in api object with id 11 if yes and 12 if No
        LabelWidget(
            label:
                "Is there a possibility of mixing herd animals with wild animals?"
                    .tr),
        GetBuilder<HorseWildController>(
            init: HorseWildController(),
            builder: (wildCtrl) {
              return HorseGeneralRadioWidget(
                enumName: HorseWild,
                yesValue: HorseWild.yes,
                onChangedYes: (val) => wildCtrl.onChange(val ?? HorseWild.yes),
                noValue: HorseWild.no,
                onChangedNo: (val) => wildCtrl.onChange(val ?? HorseWild.no),
                groupValue: wildCtrl.charcter,
                noAnswerValue: HorseWild.noAnswer,
                onChangedNoAnswer: (val) =>
                    wildCtrl.onChange(val ?? HorseWild.noAnswer),
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
        GetBuilder<HorseWithAnimalsController>(
            init: HorseWithAnimalsController(),
            builder: (mixCtrl) {
              return Column(
                children: [
                  HorseGeneralRadioWidget(
                    enumName: HorseWithAnimals,
                    yesValue: HorseWithAnimals.yes,
                    onChangedYes: (val) =>
                        mixCtrl.onChange(val ?? HorseWithAnimals.yes),
                    noValue: HorseWithAnimals.no,
                    onChangedNo: (val) =>
                        mixCtrl.onChange(val ?? HorseWithAnimals.no),
                    groupValue: mixCtrl.charcter,
                    noAnswerValue: HorseWithAnimals.noAnswer,
                    onChangedNoAnswer: (val) =>
                        mixCtrl.onChange(val ?? HorseWithAnimals.noAnswer),
                  ),
                  if (mixCtrl.charcter == HorseWithAnimals.yes)
                    GetBuilder<HorseMixCheckboxController>(
                        init: HorseMixCheckboxController(choices: [
                          "vaccination campaigns", //? push in api object with id 13
                          "veterinary clinics", //? push in api object with id 14
                          "markets", //? push in api object with id 15
                          "Race", //? push in api object with id 16
                          "other",
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
        GetBuilder<HorseMoveOutsideController>(
            init: HorseMoveOutsideController(),
            builder: (moveCtrl) {
              return Column(
                children: [
                  HorseGeneralRadioWidget(
                    enumName: HorseMoveOutside,
                    yesValue: HorseMoveOutside.yes,
                    onChangedYes: (val) =>
                        moveCtrl.onChange(val ?? HorseMoveOutside.yes),
                    noValue: HorseMoveOutside.no,
                    onChangedNo: (val) =>
                        moveCtrl.onChange(val ?? HorseMoveOutside.no),
                    groupValue: moveCtrl.charcter,
                    noAnswerValue: HorseMoveOutside.noAnswer,
                    onChangedNoAnswer: (val) =>
                        moveCtrl.onChange(val ?? HorseMoveOutside.noAnswer),
                  ),
                  if (moveCtrl.charcter == HorseMoveOutside.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the purpose of her movements?".tr),
                        GetBuilder<HorseMoveCheckboxController>(
                            init: HorseMoveCheckboxController(choices: [
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
                        GetBuilder<HorseMoveTimesCheckboxController>(
                            init: HorseMoveTimesCheckboxController(choices: [
                              'Throughout the year', //? push in api object with id 26
                              "seasonal", //? push in api object with id 27
                            ]),
                            builder: (moveTimesCtrl) {
                              return Column(
                                children: List.generate(
                                    moveTimesCtrl.choicesBoolList.length,
                                    (index) {
                                  return ListTile(
                                    title: Text(moveTimesCtrl.choices[index].tr),
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
                        const HorseDistanceMovementWidget(),
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
        GetBuilder<HorseNewAnimalBoughtController>(
            init: HorseNewAnimalBoughtController(),
            builder: (newanimal) {
              return Column(
                children: [
                  HorseGeneralRadioWidget(
                    enumName: HorseNewAnimalBought,
                    yesValue: HorseNewAnimalBought.yes,
                    onChangedYes: (val) =>
                        newanimal.onChange(val ?? HorseNewAnimalBought.yes),
                    noValue: HorseNewAnimalBought.no,
                    onChangedNo: (val) =>
                        newanimal.onChange(val ?? HorseNewAnimalBought.no),
                    groupValue: newanimal.charcter,
                    noAnswerValue: HorseNewAnimalBought.noAnswer,
                    onChangedNoAnswer: (val) => newanimal
                        .onChange(val ?? HorseNewAnimalBought.noAnswer),
                  ),
                  if (newanimal.charcter == HorseNewAnimalBought.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the reason for buying animals?".tr),
                        const HorseBuyNewAnimalWidget(),
                        LabelWidget(
                            label: "What are the times to buy animals?".tr),
                        const HorseTimesBuyNewAnimalWidget(),
                        LabelWidget(
                            label:
                                "What are the sources of animal purchase?".tr),
                        const HorseSourceBuyNewAnimalWidget(),
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
                        HorseGeneralTextFieldWidget(
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
