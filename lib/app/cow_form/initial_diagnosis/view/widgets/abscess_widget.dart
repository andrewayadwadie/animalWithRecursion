
import 'package:flutter/material.dart';

import '../../controller/abscess_controller.dart';
import 'initial_textfield_form_widget.dart';

class AbscessWidget extends StatelessWidget {
  const AbscessWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final Abscess groupValue;
  final Function(Abscess? val) onChangeNormal;
  final Function(Abscess? val) onChangeOne;
  final Function(Abscess? val) onChangeTwo;
  final Function(Abscess? val) onChangeThree;
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
            "Abscess : ",
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
                      Radio<Abscess>(
                        value: Abscess.normal,
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
                      Radio<Abscess>(
                        value: Abscess.one,
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
                        Radio<Abscess>(
                          value: Abscess.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? Abscess.two)
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
                        Radio<Abscess>(
                          value: Abscess.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? Abscess.three)
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
