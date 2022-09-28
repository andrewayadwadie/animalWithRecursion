import 'package:flutter/material.dart';

import '../../controller/drooling_controller.dart';
import 'initial_textfield_form_widget.dart';

class DroolingWidget extends StatelessWidget {
  const DroolingWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final Drooling groupValue;
  final Function(Drooling? val) onChangeNormal;
  final Function(Drooling? val) onChangeOne;
  final Function(Drooling? val) onChangeTwo;
  final Function(Drooling? val) onChangeThree;
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
            "Drooling : ",
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
                      Radio<Drooling>(
                        value: Drooling.normal,
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
                      Radio<Drooling>(
                        value: Drooling.one,
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
                        Radio<Drooling>(
                          value: Drooling.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? Drooling.two)
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
                        Radio<Drooling>(
                          value: Drooling.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? Drooling.three)
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
