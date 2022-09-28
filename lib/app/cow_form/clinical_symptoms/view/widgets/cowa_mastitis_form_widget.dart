import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/antibiotics_controller.dart';
import '../../controller/expasion_tile_one_controller.dart';
import '../../controller/farm_floor_controller.dart';
import '../../controller/lamb_controller.dart';
import '../../controller/radio_one_controller.dart';
import '../../controller/symptoms_of_mastitis_controller.dart';
import 'cows_mastitis_form_textfield_widget.dart';

class CowsMastitisFormWidget extends StatelessWidget {
  const CowsMastitisFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //!Water source for cleaning the farm
        const LabelWidget(label: "Water source for cleaning the farm : "),

        const CowsMastitisFormTextFieldWidget(
            title: "Water source for cleaning the farm"),

        //! The source of water for cleaning cows before milking
        const LabelWidget(
            label: "The source of water for cleaning cows before milking : "),

        const CowsMastitisFormTextFieldWidget(
            title: "The source of water for cleaning cows before milking"),
        //! Milking type
        const LabelWidget(label: "Milking type : "),
        GetBuilder<ExpasionOneController>( 
            init: ExpasionOneController(),
            builder: (exp1) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(exp1.title),
                  children: [
                    ListTile(
                      title: const Text("automatic"),
                      onTap: () {
                        exp1.changeTitle("automatic");
                      },
                    ),
                    ListTile(
                      title: const Text("semi automatic"),
                      onTap: () {
                        exp1.changeTitle("semi automatic");
                      },
                    ),
                    ListTile(
                      title: const Text("manual"),
                      onTap: () {
                        exp1.changeTitle("manual");
                      },
                    ),
                  ],
                ),
              );
            }),

        //!Manual juice after automatic milking
        const LabelWidget(label: "Manual juice after automatic milking : "),

        const CowsMastitisFormTextFieldWidget(
            title: "Manual juice after automatic milking"),
        //!Opportunity to breastfeed other cows to cows with mastitis
        const LabelWidget(
            label:
                "Opportunity to breastfeed other cows to cows with mastitis : "),

        const CowsMastitisFormTextFieldWidget(
          title: "Opportunity to breastfeed other cows to cows with mastitis",
        ),
        //!Are there syringes to dry the udders of cows?
        const LabelWidget(
            label: "Are there syringes to dry the udders of cows? : "),
        GetBuilder<RadioOneController>(
            init: RadioOneController(),
            builder: (radio) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<SyringesExist>(
                      value: SyringesExist.yes,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? SyringesExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<SyringesExist>(
                      value: SyringesExist.no,
                      groupValue: radio.charcter,
                      onChanged: (val) =>
                          radio.onChange(val ?? SyringesExist.no),
                    ),
                  ),
                ],
              );
            }),

        //!Symptoms of mastitis
        const LabelWidget(label: "Symptoms of mastitis : "),
        GetBuilder<SymptomsOfMastitisController>(
            init: SymptomsOfMastitisController(),
            builder: (ctrl) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: const Text("Symptoms Of Mastitis"),
                  children: [
                    ListTile(
                      title: const Text("Anorexia"),
                      leading: Checkbox(
                        value: ctrl.anorexia,
                        onChanged: (val) => ctrl.anorexiaonChange(val),
                      ),
                    ),
                    ListTile(
                      title: const Text("temperature rise"),
                      leading: Checkbox(
                        value: ctrl.temperaturerise,
                        onChanged: (val) => ctrl.temperatureriseOnChange(val),
                      ),
                    ),
                    ListTile(
                      title: const Text("lack Of milk production"),
                      leading: Checkbox(
                        value: ctrl.lackOfmilkproduction,
                        onChanged: (val) =>
                            ctrl.lackOfmilkproductiononChange(val),
                      ),
                    ),
                    ListTile(
                      title: const Text("Udder Redness"),
                      leading: Checkbox(
                        value: ctrl.udderRedness,
                        onChanged: (val) => ctrl.udderRednessonChange(val),
                      ),
                    ),
                  ],
                ),
              );
            }),
        //! Antibiotics
        const LabelWidget(label: "Antibiotics  : "),
        GetBuilder<AntibioticsController>(
            init: AntibioticsController(),
            builder: (antibiotics) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(antibiotics.title),
                  children: [
                    ListTile(
                      title: const Text("intramuscular injection"),
                      onTap: () {
                        antibiotics.changeTitle("intramuscular injection");
                      },
                    ),
                    ListTile(
                      title: const Text("udder injection"),
                      onTap: () {
                        antibiotics.changeTitle("udder injection");
                      },
                    ),
                    ListTile(
                      title: const Text("Both"),
                      onTap: () {
                        antibiotics.changeTitle("Both");
                      },
                    ),
                  ],
                ),
              );
            }),

        //! farm floor
        const LabelWidget(label: "farm floor  : "),
        GetBuilder<FarmFloorController>(
            init: FarmFloorController(),
            builder: (floor) {
              return Container(
                margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
                decoration: BoxDecoration(
                  color: greyColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ExpansionTile(
                  title: Text(floor.title),
                  children: [
                    ListTile(
                      title: const Text("soil"),
                      onTap: () {
                        floor.changeTitle("soil");
                      },
                    ),
                    ListTile(
                      title: const Text("concrete and rubber"),
                      onTap: () {
                        floor.changeTitle("concrete and rubber");
                      },
                    ),
                  ],
                ),
              );
            }),
        //! Are there laboratories on the farm to conduct bacterial culture and allergy testing?
        const LabelWidget(
            label:
                "Are there laboratories on the farm to conduct bacterial culture and allergy testing?  : "),
        GetBuilder<LambController>(
            init: LambController(),
            builder: (lab) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Yes'),
                    leading: Radio<LambExist>(
                      value: LambExist.yes,
                      groupValue: lab.charcter,
                      onChanged: (val) => lab.onChange(val ?? LambExist.yes),
                    ),
                  ),
                  ListTile(
                    title: const Text('No'),
                    leading: Radio<LambExist>(
                      value: LambExist.no,
                      groupValue: lab.charcter,
                      onChanged: (val) => lab.onChange(val ?? LambExist.no),
                    ),
                  ),
                ],
              );
            }),

        //!The number of mastitis cases per day
        const LabelWidget(label: "The number of mastitis cases per day : "),

        const CowsMastitisFormTextFieldWidget(
            title: "The number of mastitis cases per day "),
        //!The number of cases that return to the natural milker
        const LabelWidget(
            label: "The number of cases that return to the natural milker : "),

        const CowsMastitisFormTextFieldWidget(
            title: "The number of cases that return to the natural milker "),

        //!milk production quantity
        const LabelWidget(label: "milk production quantity : "),

        const CowsMastitisFormTextFieldWidget(
            title: "milk production quantity "),
      ],
    );
  }
}
