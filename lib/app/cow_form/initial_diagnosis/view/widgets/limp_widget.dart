import 'package:flutter/material.dart';

import '../../controller/limp_controller.dart';
import 'initial_textfield_form_widget.dart';

class LimpWidget extends StatelessWidget {
  const LimpWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final Limp groupValue;
  final Function(Limp? val) onChangeNormal;
  final Function(Limp? val) onChangeOne;
  final Function(Limp? val) onChangeTwo;
  final Function(Limp? val) onChangeThree;
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
            "Limp : ",
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
                      Radio<Limp>(
                        value: Limp.normal,
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
                      Radio<Limp>(
                        value: Limp.one,
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
                        Radio<Limp>(
                          value: Limp.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? Limp.two)
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
                        Radio<Limp>(
                          value: Limp.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? Limp.three)
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
