import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/insect_first_controller.dart';
import '../../controller/insect_fivth_controller.dart';
import '../../controller/insect_forth_controller.dart';
import '../../controller/insect_second_controller.dart';
import '../../controller/insect_third_controller.dart';
import '../../controller/insect_type_controller.dart';
import 'insect_form_textfield_widget.dart';

class InsectFormWidget extends StatelessWidget {
  const InsectFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //! insect type
      const LabelWidget(label: "insect type : "),
      SizedBox(
        height: MediaQuery.of(context).size.height / 7,
        child: GetBuilder<InsectTypeController>(
            init: InsectTypeController(),
            builder: (insect) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('tick'),
                        Checkbox(
                          value: insect.tick,
                          onChanged: (val) => insect.tickonChange(val),
                        ),
                        const Text('flea'),
                        Checkbox(
                          value: insect.flea,
                          onChanged: (val) => insect.fleaOnChange(val),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('mosquito'),
                        Checkbox(
                          value: insect.mosquito,
                          onChanged: (val) => insect.mosquitoonChange(val),
                        ),
                        const Text('vermin'),
                        Checkbox(
                          value: insect.hamosh,
                          onChanged: (val) => insect.hamoshonChange(val),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),

      //! Are there animals that have insects?
      const LabelWidget(label: "Are there animals that have insects? "),
      GetBuilder<InsectFirstController>(
          init: InsectFirstController(),
          builder: (first) {
            return Column(
              children: [
                ListTile(
                  title: const Text('Yes'),
                  leading: Radio<InsectFirstExist>(
                    value: InsectFirstExist.yes,
                    groupValue: first.charcter,
                    onChanged: (val) =>
                        first.onChange(val ?? InsectFirstExist.yes),
                  ),
                ),
                ListTile(
                  title: const Text('No'),
                  leading: Radio<InsectFirstExist>(
                    value: InsectFirstExist.no,
                    groupValue: first.charcter,
                    onChanged: (val) =>
                        first.onChange(val ?? InsectFirstExist.no),
                  ),
                ),
              ],
            );
          }),
      //! Are medications used to prevent blood parasites?
      const LabelWidget(
          label: "Are medications used to prevent blood parasites? "),
      GetBuilder<InsectSecondController>(
          init: InsectSecondController(),
          builder: (second) {
            return Column(
              children: [
                ListTile(
                  title: const Text('Yes'),
                  leading: Radio<InsectSecondExist>(
                    value: InsectSecondExist.yes,
                    groupValue: second.charcter,
                    onChanged: (val) =>
                        second.onChange(val ?? InsectSecondExist.yes),
                  ),
                ),
                ListTile(
                  title: const Text('No'),
                  leading: Radio<InsectSecondExist>(
                    value: InsectSecondExist.no,
                    groupValue: second.charcter,
                    onChanged: (val) =>
                        second.onChange(val ?? InsectSecondExist.no),
                  ),
                ),
              ],
            );
          }),

      //! Is there a program to control and control mosquitoes, locusts and vermin, especially in the summer?
      const LabelWidget(
          label:
              "Is there a program to control and control mosquitoes, locusts and vermin, especially in the summer? "),
      GetBuilder<InsectThirdController>(
          init: InsectThirdController(),
          builder: (third) {
            return Column(
              children: [
                ListTile(
                  title: const Text('Yes'),
                  leading: Radio<InsectThirdExist>(
                    value: InsectThirdExist.yes,
                    groupValue: third.charcter,
                    onChanged: (val) =>
                        third.onChange(val ?? InsectThirdExist.yes),
                  ),
                ),
                ListTile(
                  title: const Text('No'),
                  leading: Radio<InsectThirdExist>(
                    value: InsectThirdExist.no,
                    groupValue: third.charcter,
                    onChanged: (val) =>
                        third.onChange(val ?? InsectThirdExist.no),
                  ),
                ),
              ],
            );
          }),

      //! Is there a program to control pests and insects?
      const LabelWidget(
          label: "Is there a program to control pests and insects?"),
      GetBuilder<InsectForthController>(
          init: InsectForthController(),
          builder: (forth) {
            return Column(
              children: [
                ListTile(
                  title: const Text('Yes'),
                  leading: Radio<InsectForthExist>(
                    value: InsectForthExist.yes,
                    groupValue: forth.charcter,
                    onChanged: (val) =>
                        forth.onChange(val ?? InsectForthExist.yes),
                  ),
                ),
                ListTile(
                  title: const Text('No'),
                  leading: Radio<InsectForthExist>(
                    value: InsectForthExist.no,
                    groupValue: forth.charcter,
                    onChanged: (val) =>
                        forth.onChange(val ?? InsectForthExist.no),
                  ),
                ),
              ],
            );
          }),

      //! farm hygiene
      const LabelWidget(label: "farm hygiene : "),
      const InsectFormTextFieldWidget(title: "farm hygiene"),

      //! Are there modern systems to control insects?
      const LabelWidget(label: "Are there modern systems to control insects? "),
      const InsectFormTextFieldWidget(
          title: "Are there modern systems to control insects?"),

      //! Are there diseases on the farm associated with the presence of insects?
      const LabelWidget(
          label:
              "Are there diseases on the farm associated with the presence of insects?"),
      GetBuilder<InsectFivthController>(
          init: InsectFivthController(),
          builder: (fivth) {
            return Column(
              children: [
                ListTile(
                  title: const Text('Yes'),
                  leading: Radio<InsectFivthExist>(
                    value: InsectFivthExist.yes,
                    groupValue: fivth.charcter,
                    onChanged: (val) =>
                        fivth.onChange(val ?? InsectFivthExist.yes),
                  ),
                ),
                ListTile(
                  title: const Text('No'),
                  leading: Radio<InsectFivthExist>(
                    value: InsectFivthExist.no,
                    groupValue: fivth.charcter,
                    onChanged: (val) =>
                        fivth.onChange(val ?? InsectFivthExist.no),
                  ),
                ),
                if (fivth.charcter == InsectFivthExist.yes)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      //! disease
                      LabelWidget(label: "disease "),
                      InsectFormTextFieldWidget(title: "disease"),
                    ],
                  )
              ],
            );
          }),
    ]);
  }
}
