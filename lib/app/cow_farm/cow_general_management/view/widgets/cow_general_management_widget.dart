import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_defenation_radio_controller.dart';
import '../../controller/cow_exist_animal_controller.dart';
import '../../controller/cow_general_checkbox_controller.dart';
import '../../controller/cow_mix_checkbox_controller.dart';
import '../../controller/cow_mix_with_animals_controller.dart';
import '../../controller/cow_move_outside_radio_controller.dart';
import '../../controller/cow_move_outsite_check_controller.dart';
import '../../controller/cow_move_times_check_controller.dart';
import '../../controller/cow_new_animal_bought_radio_controller.dart';
import '../../controller/cow_record_radio_controller.dart';
import '../../controller/cow_textfield_controller.dart';
import '../../controller/cow_wild_radio_controller.dart';
import 'cow_animal_exist_in_farm_widget.dart';
import 'cow_another_animal_type_widget.dart';
import 'cow_buy_new_animal_widget.dart';
import 'cow_distance_movement_widget.dart';
import 'cow_general_radio_widget.dart';
import 'cow_general_textfield_widget.dart';
import 'cow_source_buy_new_animal_widget.dart';
import 'cow_times_buy_new_animal_widget.dart';

// ignore: must_be_immutable
class CowGeneralManagementWidget extends StatelessWidget {
  CowGeneralManagementWidget({Key? key}) : super(key: key);
  CowTextFieldController textCtrl = Get.put(CowTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!workers
        //? push in api object with id 1
        LabelWidget(label: "number of workers in the farm ".tr),
        CowGeneralTextFieldWidget(
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
        GetBuilder<CowDefenationController>(
            init: CowDefenationController(),
            builder: (defCtrl) {
              return CowGeneralRadioWidget(
                enumName: CowDefenation,
                yesValue: CowDefenation.yes,
                onChangedYes: (val) =>
                    defCtrl.onChange(val ?? CowDefenation.yes),
                noValue: CowDefenation.no,
                onChangedNo: (val) => defCtrl.onChange(val ?? CowDefenation.no),
                groupValue: defCtrl.charcter,
                noAnswerValue: CowDefenation.noAnswer,
                onChangedNoAnswer: (val) =>
                    defCtrl.onChange(val ?? CowDefenation.noAnswer),
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Do you keep records of farm
        LabelWidget(label: "Do you keep records of farm?".tr),
        GetBuilder<CowRecordController>(
            init: CowRecordController(),
            builder: (record) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowGeneralRadioWidget(
                    enumName: CowRecord,
                    yesValue: CowRecord.yes,
                    onChangedYes: (val) =>
                        record.onChange(val ?? CowRecord.yes),
                    noValue: CowRecord.no,
                    onChangedNo: (val) => record.onChange(val ?? CowRecord.no),
                    groupValue: record.charcter,
                    noAnswerValue: CowRecord.noAnswer,
                    onChangedNoAnswer: (val) =>
                        record.onChange(val ?? CowRecord.noAnswer),
                  ),
                  if (record.charcter == CowRecord.yes)
                    GetBuilder<CowGeneralCheckboxController>(
                        init: CowGeneralCheckboxController(choices: [
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
        GetBuilder<CowAnimalExistController>(
            init: CowAnimalExistController(),
            builder: (existAnimalCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CowAnimalExistRadioWidget(
                    enumName: CowAnimalExist,
                    yesValue: CowAnimalExist.yes,
                    onChangedYes: (val) =>
                        existAnimalCtrl.onChange(val ?? CowAnimalExist.yes),
                    noValue: CowAnimalExist.no,
                    onChangedNo: (val) =>
                        existAnimalCtrl.onChange(val ?? CowAnimalExist.no),
                    groupValue: existAnimalCtrl.charcter,
                    onChangedNoAnswer: (val) => existAnimalCtrl
                        .onChange(val ?? CowAnimalExist.noAnswer),
                    noAnswerValue: CowAnimalExist.noAnswer,
                  ),
                  if (existAnimalCtrl.charcter == CowAnimalExist.yes)
                    LabelWidget(label: "Detect animals".tr),
                  if (existAnimalCtrl.charcter == CowAnimalExist.yes)
                    const CowOntherAnimalWidget(),
                ],
              );
            }),
        //!Is there a possibility of mixing herd animals with wild animals?
        //? push in api object with id 11 if yes and 12 if No
        LabelWidget(
            label:
                "Is there a possibility of mixing herd animals with wild animals?"
                    .tr),
        GetBuilder<CowWildController>(
            init: CowWildController(),
            builder: (wildCtrl) {
              return CowGeneralRadioWidget(
                enumName: CowWild,
                yesValue: CowWild.yes,
                onChangedYes: (val) => wildCtrl.onChange(val ?? CowWild.yes),
                noValue: CowWild.no,
                onChangedNo: (val) => wildCtrl.onChange(val ?? CowWild.no),
                groupValue: wildCtrl.charcter,
                noAnswerValue: CowWild.noAnswer,
                onChangedNoAnswer: (val) =>
                    wildCtrl.onChange(val ?? CowWild.noAnswer),
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
        GetBuilder<CowWithAnimalsController>(
            init: CowWithAnimalsController(),
            builder: (mixCtrl) {
              return Column(
                children: [
                  CowGeneralRadioWidget(
                    enumName: CowWithAnimals,
                    yesValue: CowWithAnimals.yes,
                    onChangedYes: (val) =>
                        mixCtrl.onChange(val ?? CowWithAnimals.yes),
                    noValue: CowWithAnimals.no,
                    onChangedNo: (val) =>
                        mixCtrl.onChange(val ?? CowWithAnimals.no),
                    groupValue: mixCtrl.charcter,
                    noAnswerValue: CowWithAnimals.noAnswer,
                    onChangedNoAnswer: (val) =>
                        mixCtrl.onChange(val ?? CowWithAnimals.noAnswer),
                  ),
                  if (mixCtrl.charcter == CowWithAnimals.yes)
                    GetBuilder<CowMixCheckboxController>(
                        init: CowMixCheckboxController(choices: [
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
        GetBuilder<CowMoveOutsideController>(
            init: CowMoveOutsideController(),
            builder: (moveCtrl) {
              return Column(
                children: [
                  CowGeneralRadioWidget(
                    enumName: CowMoveOutside,
                    yesValue: CowMoveOutside.yes,
                    onChangedYes: (val) =>
                        moveCtrl.onChange(val ?? CowMoveOutside.yes),
                    noValue: CowMoveOutside.no,
                    onChangedNo: (val) =>
                        moveCtrl.onChange(val ?? CowMoveOutside.no),
                    groupValue: moveCtrl.charcter,
                    noAnswerValue: CowMoveOutside.noAnswer,
                    onChangedNoAnswer: (val) =>
                        moveCtrl.onChange(val ?? CowMoveOutside.noAnswer), 
                  ),
                  if (moveCtrl.charcter == CowMoveOutside.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the purpose of her movements?".tr),
                        GetBuilder<CowMoveCheckboxController>(
                            init: CowMoveCheckboxController(choices: [
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
                        GetBuilder<CowMoveTimesCheckboxController>(
                            init: CowMoveTimesCheckboxController(choices: [
                              'Throughout the year', //? push in api object with id 26
                              'seasonal', //? push in api object with id 27
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
                        const CowDistanceMovementWidget(),
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
        GetBuilder<CowNewAnimalBoughtController>(
            init: CowNewAnimalBoughtController(),
            builder: (newanimal) {
              return Column(
                children: [
                  CowGeneralRadioWidget(
                    enumName: CowNewAnimalBought,
                    yesValue: CowNewAnimalBought.yes,
                    onChangedYes: (val) =>
                        newanimal.onChange(val ?? CowNewAnimalBought.yes),
                    noValue: CowNewAnimalBought.no,
                    onChangedNo: (val) =>
                        newanimal.onChange(val ?? CowNewAnimalBought.no),
                    groupValue: newanimal.charcter,
                    noAnswerValue: CowNewAnimalBought.noAnswer,
                    onChangedNoAnswer: (val) =>
                        newanimal.onChange(val ?? CowNewAnimalBought.noAnswer),
                  ),
                  if (newanimal.charcter == CowNewAnimalBought.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the reason for buying animals?".tr),
                        const CowBuyNewAnimalWidget(),
                        LabelWidget(
                            label: "What are the times to buy animals?".tr),
                        const CowTimesBuyNewAnimalWidget(),
                        LabelWidget(
                            label:
                                "What are the sources of animal purchase?".tr),
                        const CowSourceBuyNewAnimalWidget(),
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
                        CowGeneralTextFieldWidget(
                            title: "Animal Number".tr,
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
