import 'package:flutter/material.dart';

import '../../controller/ulcer_controller.dart';
import 'initial_textfield_form_widget.dart';

class UlcerWidget extends StatelessWidget {
  const UlcerWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final Ulcer groupValue;
  final Function(Ulcer? val) onChangeNormal;
  final Function(Ulcer? val) onChangeOne;
  final Function(Ulcer? val) onChangeTwo;
  final Function(Ulcer? val) onChangeThree;
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
            "Ulcer : ",
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
                      Radio<Ulcer>(
                        value: Ulcer.normal,
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
                      Radio<Ulcer>(
                        value: Ulcer.one,
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
                        Radio<Ulcer>(
                          value: Ulcer.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? Ulcer.two)
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
                        Radio<Ulcer>(
                          value: Ulcer.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? Ulcer.three)
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
