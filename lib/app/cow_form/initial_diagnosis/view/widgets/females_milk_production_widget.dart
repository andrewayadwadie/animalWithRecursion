import 'package:flutter/material.dart';

import '../../controller/females_milk_production_controller.dart';
import 'initial_textfield_form_widget.dart';

class MilkProductionWidget extends StatelessWidget {
  const MilkProductionWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final MilkProduction groupValue;
  final Function(MilkProduction? val) onChangeNormal;
  final Function(MilkProduction? val) onChangeOne;
  final Function(MilkProduction? val) onChangeTwo;
  final Function(MilkProduction? val) onChangeThree;
  final Function(String? val) onNoteChange;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //! title
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 15,
          child: const Text(
            "Female milk production : ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("normal"),
                      Radio<MilkProduction>(
                        value: MilkProduction.normal,
                        groupValue: groupValue,
                        onChanged: onChangeNormal,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("+"),
                      Radio<MilkProduction>(
                        value: MilkProduction.one,
                        groupValue: groupValue,
                        onChanged: onChangeOne,
                      ),
                    ],
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("++"),
                        Radio<MilkProduction>(
                          value: MilkProduction.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? MilkProduction.two)
                              onChangeTwo,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("+++"),
                        Radio<MilkProduction>(
                          value: MilkProduction.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? MilkProduction.three)
                              onChangeThree,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               InitialTextFieldwidget(
                title: "notes",
                onNoteChange: onNoteChange,
              
              )
            ],
          ),
        )
      ],
    );
  }
}
