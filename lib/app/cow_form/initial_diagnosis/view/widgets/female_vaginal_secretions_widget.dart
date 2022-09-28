import 'package:flutter/material.dart';

import '../../controller/female_vaginal_secretions_controller.dart';
import 'initial_textfield_form_widget.dart';

class FemaleVaginalWidget extends StatelessWidget {
  const FemaleVaginalWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final FemaleVaginal groupValue;
  final Function(FemaleVaginal? val) onChangeNormal;
  final Function(FemaleVaginal? val) onChangeOne;
  final Function(FemaleVaginal? val) onChangeTwo;
  final Function(FemaleVaginal? val) onChangeThree;
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
            "Female Vaginal Secretions : ",
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
                      Radio<FemaleVaginal>(
                        value: FemaleVaginal.normal,
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
                      Radio<FemaleVaginal>(
                        value: FemaleVaginal.one,
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
                        Radio<FemaleVaginal>(
                          value: FemaleVaginal.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? FemaleVaginal.two)
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
                        Radio<FemaleVaginal>(
                          value: FemaleVaginal.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? FemaleVaginal.three)
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
