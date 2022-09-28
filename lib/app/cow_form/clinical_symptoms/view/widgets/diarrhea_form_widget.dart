import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cures_controller.dart';
import '../../controller/diarrhea_type_controller.dart';
import '../../controller/immunized_controller.dart';
import '../../controller/parasit_controller.dart';
import '../../controller/pneumonia_medicine_controller.dart';
import '../../controller/temp_controller.dart';
import '../../controller/vaccination_used_controller.dart';
import 'diarrhea_textfield_form_widget.dart';

class DiarrheaFormWidget extends StatelessWidget {
  const DiarrheaFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!The age of calves that suffer from diarrhea and  cough .
        const LabelWidget(
            label: "The age of calves that suffer from diarrhea and cough : "),
        const DiarrheaFormTextFieldWidget(
            title: "The age of calves that suffer from diarrhea and cough : "),
        //! Calf symptoms that suffer from diarrhea and cough .
        const LabelWidget(
            label: "Calf symptoms that suffer from diarrhea and cough : "),
        const DiarrheaFormTextFieldWidget(
            title: "Calf symptoms that suffer from diarrhea and cough : "),
        //! Is it accompanied by a high temperature?

        GetBuilder<TempController>(
            init: TempController(),
            builder: (temp) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<TempExist>(
                      value: TempExist.yes,
                      groupValue: temp.charcter,
                      onChanged: (val) => temp.onChange(val ?? TempExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<TempExist>(
                      value: TempExist.no,
                      groupValue: temp.charcter,
                      onChanged: (val) => temp.onChange(val ?? TempExist.no),
                    ),
                  ),
                ],
              );
            }),

        //! Remedies used for diarrhea .
        const LabelWidget(label: "Remedies used for diarrhea : "),
        GetBuilder<CuresController>(
            init: CuresController(),
            builder: (cures) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(cures.title),
                  children: [
                    ListTile(
                      title: const Text("cure 1"),
                      onTap: () {
                        cures.changeTitle("cure 1");
                      },
                    ),
                    ListTile(
                      title: const Text("cures 2"),
                      onTap: () {
                        cures.changeTitle("cures 2");
                      },
                    ),
                    ListTile(
                      title: const Text("cures 3"),
                      onTap: () {
                        cures.changeTitle("cures 3");
                      },
                    ),
                  ],
                ),
              );
            }),
        //! Parasite medicines .
        const LabelWidget(label: "Parasite medicines : "),
        GetBuilder<ParasitController>(
            init: ParasitController(),
            builder: (parasit) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(parasit.title),
                  children: [
                    ListTile(
                      title: const Text("cure 1"),
                      onTap: () {
                        parasit.changeTitle("cure 1");
                      },
                    ),
                    ListTile(
                      title: const Text("parasit 2"),
                      onTap: () {
                        parasit.changeTitle("parasit 2");
                      },
                    ),
                    ListTile(
                      title: const Text("parasit 3"),
                      onTap: () {
                        parasit.changeTitle("parasit 3");
                      },
                    ),
                  ],
                ),
              );
            }),
        //! The type of vaccination used .
        const LabelWidget(label: "The type of vaccination used"),
        GetBuilder<VaccinationUsedController>(
            init: VaccinationUsedController(),
            builder: (vaccination) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(vaccination.title),
                  children: [
                    ListTile(
                      title: const Text("cure 1"),
                      onTap: () {
                        vaccination.changeTitle("cure 1");
                      },
                    ),
                    ListTile(
                      title: const Text("vaccination 2"),
                      onTap: () {
                        vaccination.changeTitle("vaccination 2");
                      },
                    ),
                    ListTile(
                      title: const Text("vaccination 3"),
                      onTap: () {
                        vaccination.changeTitle("vaccination 3");
                      },
                    ),
                  ],
                ),
              );
            }),
        //! Are mothers and calves immunized against diarrhea?
        const LabelWidget(
            label: "Are mothers and calves immunized against diarrhea?"),
        GetBuilder<ImmunizedController>(
            init: ImmunizedController(),
            builder: (temp) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<ImmunizedExist>(
                      value: ImmunizedExist.yes,
                      groupValue: temp.charcter,
                      onChanged: (val) =>
                          temp.onChange(val ?? ImmunizedExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<ImmunizedExist>(
                      value: ImmunizedExist.no,
                      groupValue: temp.charcter,
                      onChanged: (val) =>
                          temp.onChange(val ?? ImmunizedExist.no),
                    ),
                  ),
                ],
              );
            }),
        //! Diarrhea type
        const LabelWidget(label: "Diarrhea type"),
        GetBuilder<DiarrheaTypeController>(
            init: DiarrheaTypeController(),
            builder: (diarrheaType) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(diarrheaType.title),
                  children: [
                    ListTile(
                      title: const Text("bloody"),
                      onTap: () {
                        diarrheaType.changeTitle("bloody");
                      },
                    ),
                    ListTile(
                      title: const Text("mucous"),
                      onTap: () {
                        diarrheaType.changeTitle("mucous");
                      },
                    ),
                    ListTile(
                      title: const Text("watery"),
                      onTap: () {
                        diarrheaType.changeTitle("watery");
                      },
                    ),
                    ListTile(
                      title: const Text("green"),
                      onTap: () {
                        diarrheaType.changeTitle("green");
                      },
                    ),
                    ListTile(
                      title: const Text("cheesy white like milk"),
                      onTap: () {
                        diarrheaType.changeTitle("cheesy white like milk");
                      },
                    ),
                  ],
                ),
              );
            }),
        //! Pneumonia medicines
        const LabelWidget(label: "Pneumonia medicines"),
        GetBuilder<PneumoniaMedicineController>(
            init: PneumoniaMedicineController(),
            builder: (pneumoniaMedicine) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(pneumoniaMedicine.title),
                  children: [
                    ListTile(
                      title: const Text("medicine 1"),
                      onTap: () {
                        pneumoniaMedicine.changeTitle("medicine 1");
                      },
                    ),
                    ListTile(
                      title: const Text("medicine 2"),
                      onTap: () {
                        pneumoniaMedicine.changeTitle("medicine 2");
                      },
                    ),
                    ListTile(
                      title: const Text("medicine 3"),
                      onTap: () {
                        pneumoniaMedicine.changeTitle("medicine 3");
                      },
                    ),
                  ],
                ),
              );
            }),

        //!Immunization against viral diseases .
        const LabelWidget(label: "Immunization against viral diseases "),
        const DiarrheaFormTextFieldWidget(
            title: "Immunization against viral diseases "),

        //!Weight of calves with diarrhea .
        const LabelWidget(label: "Weight of calves with diarrhea "),
        const DiarrheaFormTextFieldWidget(
            title: "Weight of calves with diarrhea "),
        //!recovery rate .
        const LabelWidget(label: "recovery rate "),
        const DiarrheaFormTextFieldWidget(title: "recovery rate "),
      ],
    );
  }
}
