import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/hoof_controller.dart';
import '../../controller/lamp_cure_controller.dart';
import '../../controller/lamp_date_controller.dart';
import 'lamp_form_textfield_widget.dart';

class LampFormWidget extends StatelessWidget {
  const LampFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!animal age
        const LabelWidget(label: "animal age : "),
        const LampFormTextFieldWidget(title: "animal age"),
        //! dynasty
        const LabelWidget(label: "dynasty : "),
        const LampFormTextFieldWidget(title: "dynasty"),
        //! Hoof type
        const LabelWidget(label: "Hoof type : "),
        GetBuilder<HoofController>(
            init: HoofController(),
            builder: (hoof) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(hoof.title),
                  children: [
                    ListTile(
                      title: const Text("lateral"),
                      onTap: () {
                        hoof.changeTitle("lateral");
                      },
                    ),
                    ListTile(
                      title: const Text("medial"),
                      onTap: () {
                        hoof.changeTitle("medial");
                      },
                    ),
                  ],
                ),
              );
            }),

        //! Lamp Date
        GetBuilder<LampDateController>(
            init: LampDateController(),
            builder: (dateCtrl) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LabelWidget(label: "Lamp Date : "),
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
        //! Treatments used
        const LabelWidget(label: "Treatments used : "),
        GetBuilder<HoofController>(
            init: HoofController(),
            builder: (hoof) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(hoof.title),
                  children: [
                    ListTile(
                      title: const Text("cure1"),
                      onTap: () {
                        hoof.changeTitle("cure1");
                      },
                    ),
                    ListTile(
                      title: const Text("cure2"),
                      onTap: () {
                        hoof.changeTitle("cure2");
                      },
                    ),
                    ListTile(
                      title: const Text("cure3"),
                      onTap: () {
                        hoof.changeTitle("cure3");
                      },
                    ),
                  ],
                ),
              );
            }),
        //!Milk production during limp
        const LabelWidget(label: "Milk production during limp : "),
        const LampFormTextFieldWidget(title: "Milk production during limp"),
        //!How many cows are limping per month?
        const LabelWidget(label: "How many cows are limping per month? : "),
        const LampFormTextFieldWidget(
            title: "How many cows are limping per month?"),
        //!Recovery rate after treatment?
        const LabelWidget(label: "Recovery rate after treatment? : "),
        const LampFormTextFieldWidget(title: "Recovery rate after treatment?"),
        //!Do treated cows produce normal milk?
        
        const LabelWidget(label: "Do treated cows produce normal milk? : "),
        GetBuilder<LampCureController>(
            init: LampCureController(),
            builder: (lampCure) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<LampCureExist>(
                      value: LampCureExist.yes,
                      groupValue: lampCure.charcter,
                      onChanged: (val) =>
                          lampCure.onChange(val ?? LampCureExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<LampCureExist>(
                      value: LampCureExist.no,
                      groupValue: lampCure.charcter,
                      onChanged: (val) =>
                          lampCure.onChange(val ?? LampCureExist.no),
                    ),
                  ),
                ],
              );
            }),
     
      ],
    );
  }
}
