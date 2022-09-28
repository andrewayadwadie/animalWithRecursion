import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/label_widget.dart';
import '../../controller/artificial_first_controller.dart';
import '../../controller/artificial_fivth_controller.dart';
import '../../controller/artificial_forth_controller.dart';
import '../../controller/artificial_second_controller.dart';
import '../../controller/artificial_sixth_controller.dart';
import '../../controller/artificial_third_controller.dart';
import 'artificial_form_textfield_widget.dart';

class ArtificialFormWidget extends StatelessWidget {
  const ArtificialFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //! Is there artificial insemination?
        const LabelWidget(label: "Is there artificial insemination? "),
        GetBuilder<AritificialFirstController>(
            init: AritificialFirstController(),
            builder: (first) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<AritificialFirstExist>(
                      value: AritificialFirstExist.yes,
                      groupValue: first.charcter,
                      onChanged: (val) =>
                          first.onChange(val ?? AritificialFirstExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<AritificialFirstExist>(
                      value: AritificialFirstExist.no,
                      groupValue: first.charcter,
                      onChanged: (val) =>
                          first.onChange(val ?? AritificialFirstExist.no),
                    ),
                  ),
                ],
              );
            }),

        //! type of used Straw
        const LabelWidget(label: "type of used Straw "),
        const ArtificialFormTextField(title: "type of used Straw "),

        //! Is there Synchronization in farm ?
        const LabelWidget(label: "Is there Synchronization in farm ?"),
        GetBuilder<AritificialSecondController>(
            init: AritificialSecondController(),
            builder: (second) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<AritificialSecondExist>(
                      value: AritificialSecondExist.yes,
                      groupValue: second.charcter,
                      onChanged: (val) =>
                          second.onChange(val ?? AritificialSecondExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<AritificialSecondExist>(
                      value: AritificialSecondExist.no,
                      groupValue: second.charcter,
                      onChanged: (val) =>
                          second.onChange(val ?? AritificialSecondExist.no),
                    ),
                  ),
                ],
              );
            }),

        //! Is there anestrum ?
        const LabelWidget(label: "Is there anestrum ?"),
        GetBuilder<AritificialThirdController>(
            init: AritificialThirdController(),
            builder: (third) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<AritificialThirdExist>(
                      value: AritificialThirdExist.yes,
                      groupValue: third.charcter,
                      onChanged: (val) =>
                          third.onChange(val ?? AritificialThirdExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<AritificialThirdExist>(
                      value: AritificialThirdExist.no,
                      groupValue: third.charcter,
                      onChanged: (val) =>
                          third.onChange(val ?? AritificialThirdExist.no),
                    ),
                  ),
                  if (third.charcter == AritificialThirdExist.yes)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //! Is the anestrum treated? ?
                        const LabelWidget(label: "Is the anestrum treated? "),
                        GetBuilder<AritificialSixthController>(
                            init: AritificialSixthController(),
                            builder: (sixth) {
                              return Column(
                                children: [
                                  ListTile(
                                    title: const Text('Yes'),
                                    leading: Radio<AritificialSixthExist>(
                                      value: AritificialSixthExist.yes,
                                      groupValue: sixth.charcter,
                                      onChanged: (val) => sixth.onChange(
                                          val ?? AritificialSixthExist.yes),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text('No'),
                                    leading: Radio<AritificialSixthExist>(
                                      value: AritificialSixthExist.no,
                                      groupValue: sixth.charcter,
                                      onChanged: (val) => sixth.onChange(
                                          val ?? AritificialSixthExist.no),
                                    ),
                                  ),
                                  if (sixth.charcter ==
                                      AritificialSixthExist.yes)
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        //! What are the medications used to stimulate the ovaries?
                                        LabelWidget(
                                            label:
                                                "What are the medications used to stimulate the ovaries? "),
                                        ArtificialFormTextField(
                                            title:
                                                "What are the medications used to stimulate the ovaries? "),
                                        //! What is the composition of the feed?
                                        LabelWidget(
                                            label:
                                                "What is the composition of the feed? "),
                                        ArtificialFormTextField(
                                            title:
                                                "What is the composition of the feed? "),
                                      ],
                                    ),
                                ],
                              );
                            }),
                      ],
                    )
                ],
              );
            }),

        //! Is there rebeat breeder  ?
        const LabelWidget(label: "Is there rebeat breeder ?"),
        GetBuilder<AritificialForthController>(
            init: AritificialForthController(),
            builder: (forth) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<AritificialForthExist>(
                      value: AritificialForthExist.yes,
                      groupValue: forth.charcter,
                      onChanged: (val) =>
                          forth.onChange(val ?? AritificialForthExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<AritificialForthExist>(
                      value: AritificialForthExist.no,
                      groupValue: forth.charcter,
                      onChanged: (val) =>
                          forth.onChange(val ?? AritificialForthExist.no),
                    ),
                  ),
                  if (forth.charcter == AritificialForthExist.yes)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        //! Are swabs taken for bacterial culture from the vagina?
                        LabelWidget(
                            label:
                                "Are swabs taken for bacterial culture from the vagina?"),
                        ArtificialFormTextField(
                            title:
                                "Are swabs taken for bacterial culture from the vagina?"),
                        //! Are swabs taken for bacterial culture from the cervix?
                        LabelWidget(
                            label:
                                "Are swabs taken for bacterial culture from the cervix? "),
                        ArtificialFormTextField(
                            title:
                                "Are swabs taken for bacterial culture from the cervix? "),
                      ],
                    )
                ],
              );
            }),

        //! Is the gynecological ultrasound scan done ?
        const LabelWidget(label: "Is the gynecological ultrasound scan done?"),
        GetBuilder<AritificialFivthController>(
            init: AritificialFivthController(),
            builder: (fivth) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<AritificialFivthExist>(
                      value: AritificialFivthExist.yes,
                      groupValue: fivth.charcter,
                      onChanged: (val) =>
                          fivth.onChange(val ?? AritificialFivthExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<AritificialFivthExist>(
                      value: AritificialFivthExist.no,
                      groupValue: fivth.charcter,
                      onChanged: (val) =>
                          fivth.onChange(val ?? AritificialFivthExist.no),
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}
