import 'package:flutter/material.dart';

import '../../controller/bloody_urine_controller.dart';
import 'initial_textfield_form_widget.dart';

class BloodyUrineWidget extends StatelessWidget {
  const BloodyUrineWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final BloodyUrine groupValue;
  final Function(BloodyUrine? val) onChangeNormal;
  final Function(BloodyUrine? val) onChangeOne;
  final Function(BloodyUrine? val) onChangeTwo;
  final Function(BloodyUrine? val) onChangeThree;
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
            "Bloody Urine : ",
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
                      Radio<BloodyUrine>(
                        value: BloodyUrine.normal,
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
                      Radio<BloodyUrine>(
                        value: BloodyUrine.one,
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
                        Radio<BloodyUrine>(
                          value: BloodyUrine.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? BloodyUrine.two)
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
                        Radio<BloodyUrine>(
                          value: BloodyUrine.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? BloodyUrine.three)
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
