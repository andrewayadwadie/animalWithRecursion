import 'package:flutter/material.dart';

import '../../controller/anorexia_controller.dart';
import 'initial_textfield_form_widget.dart';

class AnorexiaWidget extends StatelessWidget {
  const AnorexiaWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final Anorexia groupValue;
  final Function(Anorexia? val) onChangeNormal;
  final Function(Anorexia? val) onChangeOne;
  final Function(Anorexia? val) onChangeTwo;
  final Function(Anorexia? val) onChangeThree;
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
          height: MediaQuery.of(context).size.height / 20,
          child: const Text(
            "Anorexia : ",
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
                      Radio<Anorexia>(
                        value: Anorexia.normal,
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
                      Radio<Anorexia>(
                        value: Anorexia.one,
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
                        Radio<Anorexia>(
                          value: Anorexia.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? Anorexia.two)
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
                        Radio<Anorexia>(
                          value: Anorexia.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? Anorexia.three)
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
