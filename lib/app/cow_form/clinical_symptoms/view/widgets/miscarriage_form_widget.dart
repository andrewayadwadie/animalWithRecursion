import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/fetuses_size_controller.dart';
import '../../controller/intro_miscarrage_controller.dart';
import '../../controller/miscarriage_date_controller.dart';
import '../../controller/miscarriage_occures_controller.dart';
import '../../controller/swelling_controller.dart';
import '../../controller/vaginal_secretion_controller.dart';

class MiscarriageFormWidget extends StatelessWidget {
  const MiscarriageFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //! miscarriage Date
        GetBuilder<MiscarriageDateController>(
            init: MiscarriageDateController(),
            builder: (dateCtrl) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LabelWidget(label: "miscarriage Date : "),
                  CupertinoButton(
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 20,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                            style: const TextStyle(color: whiteColor),
                          )),
                      onPressed: () => dateCtrl.onLampDateChange(context)),
                ],
              );
            }),
        //!The months of pregnancy in which a miscarriage occurs
        const LabelWidget(
            label: "The months of pregnancy in which a miscarriage occurs : "),
        GetBuilder<MisccarrigeController>(
            init: MisccarrigeController(),
            builder: (misscarrage) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(misscarrage.title),
                  children: [
                    ListTile(
                      title: const Text("first 3 months"),
                      onTap: () {
                        misscarrage.changeTitle("first 3 months ");
                      },
                    ),
                    ListTile(
                      title: const Text("last 3 months"),
                      onTap: () {
                        misscarrage.changeTitle("last 3 months ");
                      },
                    ),
                  ],
                ),
              );
            }),
        //!Are there any pre-abortion symptoms?
        const LabelWidget(
            label: "Are there pre-abortion symptoms and predispositions?  : "),
        GetBuilder<MiscarriageIntroController>(
            init: MiscarriageIntroController(),
            builder: (mis) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<MiscarriageIntroExist>(
                      value: MiscarriageIntroExist.yes,
                      groupValue: mis.charcter,
                      onChanged: (val) =>
                          mis.onChange(val ?? MiscarriageIntroExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<MiscarriageIntroExist>(
                      value: MiscarriageIntroExist.no,
                      groupValue: mis.charcter,
                      onChanged: (val) =>
                          mis.onChange(val ?? MiscarriageIntroExist.no),
                    ),
                  ),
                ],
              );
            }),

        //! Is there a vaginal secretion?

        const LabelWidget(label: "Is there a vaginal secretion? : "),
        GetBuilder<VaginalSecretionController>(
            init: VaginalSecretionController(),
            builder: (vaginalsecretion) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<VaginalSecretionExist>(
                      value: VaginalSecretionExist.yes,
                      groupValue: vaginalsecretion.charcter,
                      onChanged: (val) => vaginalsecretion
                          .onChange(val ?? VaginalSecretionExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<VaginalSecretionExist>(
                      value: VaginalSecretionExist.no,
                      groupValue: vaginalsecretion.charcter,
                      onChanged: (val) => vaginalsecretion
                          .onChange(val ?? VaginalSecretionExist.no),
                    ),
                  ),
                ],
              );
            }),
        //! Is there a change in the size of the  fetuses?

        const LabelWidget(
            label: "Is there a change in the size of the fetuses?: "),
        GetBuilder<FetusesSizeController>(
            init: FetusesSizeController(),
            builder: (fetuses) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<FetusesSizeExist>(
                      value: FetusesSizeExist.yes,
                      groupValue: fetuses.charcter,
                      onChanged: (val) =>
                          fetuses.onChange(val ?? FetusesSizeExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<FetusesSizeExist>(
                      value: FetusesSizeExist.no,
                      groupValue: fetuses.charcter,
                      onChanged: (val) =>
                          fetuses.onChange(val ?? FetusesSizeExist.no),
                    ),
                  ),
                ],
              );
            }),

        //! Is there swelling in the fetus?

        const LabelWidget(label: "Is there swelling in the fetus?: "),
        GetBuilder<SwellingController>(
            init: SwellingController(),
            builder: (swelling) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<SwellingExist>(
                      value: SwellingExist.yes,
                      groupValue: swelling.charcter,
                      onChanged: (val) =>
                          swelling.onChange(val ?? SwellingExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<SwellingExist>(
                      value: SwellingExist.no,
                      groupValue: swelling.charcter,
                      onChanged: (val) =>
                          swelling.onChange(val ?? SwellingExist.no),
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}
