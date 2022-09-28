import 'package:flutter/material.dart';

import '../../controller/breathing_times_controller.dart';
import 'initial_textfield_form_widget.dart';

class BreathingTimesWidget extends StatelessWidget {
  const BreathingTimesWidget({
    Key? key,
    required this.groupValue,
    required this.onChangeNormal,
    required this.onChangeOne,
    required this.onChangeTwo,
    required this.onChangeThree,
    required this.onNoteChange,
  }) : super(key: key);
  final BreathingTimes groupValue;
  final Function(BreathingTimes? val) onChangeNormal;
  final Function(BreathingTimes? val) onChangeOne;
  final Function(BreathingTimes? val) onChangeTwo;
  final Function(BreathingTimes? val) onChangeThree;
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
            "Breathing Times : ",
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
                      Radio<BreathingTimes>(
                        value: BreathingTimes.normal,
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
                      Radio<BreathingTimes>(
                        value: BreathingTimes.one,
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
                        Radio<BreathingTimes>(
                          value: BreathingTimes.two,
                          groupValue: groupValue,
                          onChanged:
                              //  temp.onChange(val ?? BreathingTimes.two)
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
                        Radio<BreathingTimes>(
                          value: BreathingTimes.three,
                          groupValue: groupValue,
                          onChanged:
                              // temp.onChange(val ?? BreathingTimes.three)
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
