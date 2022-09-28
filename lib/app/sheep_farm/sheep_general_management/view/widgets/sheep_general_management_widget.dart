import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/sheep_defenation_radio_controller.dart';
import '../../controller/sheep_exist_animal_controller.dart';
import '../../controller/sheep_general_checkbox_controller.dart';
import '../../controller/sheep_mix_checkbox_controller.dart';
import '../../controller/sheep_mix_with_animals_controller.dart';
import '../../controller/sheep_move_outside_radio_controller.dart';
import '../../controller/sheep_move_outsite_check_controller.dart';
import '../../controller/sheep_move_times_check_controller.dart';
import '../../controller/sheep_new_animal_bought_radio_controller.dart';
import '../../controller/sheep_record_radio_controller.dart';
import '../../controller/sheep_textfield_controller.dart';
import '../../controller/sheep_wild_radio_controller.dart';
import 'sheep_animal_exist_in_farm_widget.dart';
import 'sheep_another_animal_type_widget.dart';
import 'sheep_buy_new_animal_widget.dart';
import 'sheep_distance_movement_widget.dart';
import 'sheep_general_radio_widget.dart';
import 'sheep_general_textfield_widget.dart';
import 'sheep_source_buy_new_animal_widget.dart';
import 'sheep_times_buy_new_animal_widget.dart';

// ignore: must_be_immutable
class SheepGeneralManagementWidget extends StatelessWidget {
  SheepGeneralManagementWidget({Key? key}) : super(key: key);
  SheepTextFieldController textCtrl = Get.put(SheepTextFieldController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!workers
        //? push in api object with id 1
        LabelWidget(label: "number of workers in the farm ".tr),
        SheepGeneralTextFieldWidget(
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
        GetBuilder<SheepDefenationController>(
            init: SheepDefenationController(),
            builder: (defCtrl) {
              return SheepGeneralRadioWidget(
                enumName: SheepDefenation,
                yesValue: SheepDefenation.yes,
                onChangedYes: (val) =>
                    defCtrl.onChange(val ?? SheepDefenation.yes),
                noValue: SheepDefenation.no,
                onChangedNo: (val) =>
                    defCtrl.onChange(val ?? SheepDefenation.no),
                groupValue: defCtrl.charcter,
                noAnswerValue: SheepDefenation.noAnswer,
                onChangedNoAnswer: (val) =>
                    defCtrl.onChange(val ?? SheepDefenation.noAnswer),
              );
            }),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          thickness: 1,
        ),
        //!Do you keep records of farm
        LabelWidget(label: "Do you keep records of farm?".tr),
        GetBuilder<SheepRecordController>(
            init: SheepRecordController(),
            builder: (record) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepGeneralRadioWidget(
                    enumName: SheepRecord,
                    yesValue: SheepRecord.yes,
                    onChangedYes: (val) =>
                        record.onChange(val ?? SheepRecord.yes),
                    noValue: SheepRecord.no,
                    onChangedNo: (val) =>
                        record.onChange(val ?? SheepRecord.no),
                    groupValue: record.charcter,
                    noAnswerValue: SheepRecord.noAnswer,
                    onChangedNoAnswer: (val) =>
                        record.onChange(val ?? SheepRecord.noAnswer),
                  ),
                  if (record.charcter == SheepRecord.yes)
                    GetBuilder<SheepGeneralCheckboxController>(
                        init: SheepGeneralCheckboxController(choices: [
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
        GetBuilder<SheepAnimalExistController>(
            init: SheepAnimalExistController(),
            builder: (existAnimalCtrl) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SheepAnimalExistRadioWidget(
                    enumName: SheepAnimalExist,
                    yesValue: SheepAnimalExist.yes,
                    onChangedYes: (val) =>
                        existAnimalCtrl.onChange(val ?? SheepAnimalExist.yes),
                    noValue: SheepAnimalExist.no,
                    onChangedNo: (val) =>
                        existAnimalCtrl.onChange(val ?? SheepAnimalExist.no),
                    groupValue: existAnimalCtrl.charcter,
                    onChangedNoAnswer: (val) => existAnimalCtrl
                        .onChange(val ?? SheepAnimalExist.noAnswer),
                    noAnswerValue: SheepAnimalExist.noAnswer,
                  ),
                  if (existAnimalCtrl.charcter == SheepAnimalExist.yes)
                    LabelWidget(label: "Detect animals".tr),
                  if (existAnimalCtrl.charcter == SheepAnimalExist.yes)
                    const SheepOntherAnimalWidget(),
                ],
              );
            }),
        //!Is there a possibility of mixing herd animals with wild animals?
        //? push in api object with id 11 if yes and 12 if No
        LabelWidget(
            label:
                "Is there a possibility of mixing herd animals with wild animals?"
                    .tr),
        GetBuilder<SheepWildController>(
            init: SheepWildController(),
            builder: (wildCtrl) {
              return SheepGeneralRadioWidget(
                enumName: SheepWild,
                yesValue: SheepWild.yes,
                onChangedYes: (val) => wildCtrl.onChange(val ?? SheepWild.yes),
                noValue: SheepWild.no,
                onChangedNo: (val) => wildCtrl.onChange(val ?? SheepWild.no),
                groupValue: wildCtrl.charcter,
                noAnswerValue: SheepWild.noAnswer,
                onChangedNoAnswer: (val) =>
                    wildCtrl.onChange(val ?? SheepWild.noAnswer),
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
        GetBuilder<SheepWithAnimalsController>(
            init: SheepWithAnimalsController(),
            builder: (mixCtrl) {
              return Column(
                children: [
                  SheepGeneralRadioWidget(
                    enumName: SheepWithAnimals,
                    yesValue: SheepWithAnimals.yes,
                    onChangedYes: (val) =>
                        mixCtrl.onChange(val ?? SheepWithAnimals.yes),
                    noValue: SheepWithAnimals.no,
                    onChangedNo: (val) =>
                        mixCtrl.onChange(val ?? SheepWithAnimals.no),
                    groupValue: mixCtrl.charcter,
                    noAnswerValue: SheepWithAnimals.noAnswer,
                    onChangedNoAnswer: (val) =>
                        mixCtrl.onChange(val ?? SheepWithAnimals.noAnswer),
                  ),
                  if (mixCtrl.charcter == SheepWithAnimals.yes)
                    GetBuilder<SheepMixCheckboxController>(
                        init: SheepMixCheckboxController(choices: [
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
        GetBuilder<SheepMoveOutsideController>(
            init: SheepMoveOutsideController(),
            builder: (moveCtrl) {
              return Column(
                children: [
                  SheepGeneralRadioWidget(
                    enumName: SheepMoveOutside,
                    yesValue: SheepMoveOutside.yes,
                    onChangedYes: (val) =>
                        moveCtrl.onChange(val ?? SheepMoveOutside.yes),
                    noValue: SheepMoveOutside.no,
                    onChangedNo: (val) =>
                        moveCtrl.onChange(val ?? SheepMoveOutside.no),
                    groupValue: moveCtrl.charcter,
                    noAnswerValue: SheepMoveOutside.noAnswer,
                    onChangedNoAnswer: (val) =>
                        moveCtrl.onChange(val ?? SheepMoveOutside.noAnswer),
                  ),
                  if (moveCtrl.charcter == SheepMoveOutside.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the purpose of her movements?".tr),
                        GetBuilder<SheepMoveCheckboxController>(
                            init: SheepMoveCheckboxController(choices: [
                              "Markets", //? push in api object with id 20
                              "massacres", //? push in api object with id 21
                              "veterinary clinics", //? push in api object with id 22
                              "Race", //? push in api object with id 23
                              "Export", //? push in api object with id 24
                              "other",
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
                        GetBuilder<SheepMoveTimesCheckboxController>(
                            init: SheepMoveTimesCheckboxController(choices: [
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
                        const SheepDistanceMovementWidget(),
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
        GetBuilder<SheepNewAnimalBoughtController>(
            init: SheepNewAnimalBoughtController(),
            builder: (newanimal) {
              return Column(
                children: [
                  SheepGeneralRadioWidget(
                    enumName: SheepNewAnimalBought,
                    yesValue: SheepNewAnimalBought.yes,
                    onChangedYes: (val) =>
                        newanimal.onChange(val ?? SheepNewAnimalBought.yes),
                    noValue: SheepNewAnimalBought.no,
                    onChangedNo: (val) =>
                        newanimal.onChange(val ?? SheepNewAnimalBought.no),
                    groupValue: newanimal.charcter,
                    noAnswerValue: SheepNewAnimalBought.noAnswer,
                    onChangedNoAnswer: (val) => newanimal
                        .onChange(val ?? SheepNewAnimalBought.noAnswer),
                  ),
                  if (newanimal.charcter == SheepNewAnimalBought.yes)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "What is the reason for buying animals?".tr),
                        const SheepBuyNewAnimalWidget(),
                        LabelWidget(
                            label: "What are the times to buy animals?".tr),
                        const SheepTimesBuyNewAnimalWidget(),
                        LabelWidget(
                            label:
                                "What are the sources of animal purchase?".tr),
                        const SheepSourceBuyNewAnimalWidget(),
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
                        SheepGeneralTextFieldWidget(
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
