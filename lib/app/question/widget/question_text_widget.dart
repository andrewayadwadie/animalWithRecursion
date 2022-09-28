import 'package:flutter/material.dart';

import '../../../utils/style.dart';
import '../../shared_widgets/label_widget.dart';
import '../model/section_model.dart';

class QuestionTextWidget extends StatelessWidget {
  const QuestionTextWidget(
      {Key? key,
      required this.controller,
      required this.title,
      required this.questionAnswers})
      : super(key: key);
  final TextEditingController controller;
  final String title;
  final List<QuestionAnswers> questionAnswers;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LabelWidget(label: title),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.text,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: greyColor),
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: title,
            ),
            textInputAction: TextInputAction.next,
            onSaved: (val) {},
            validator: (value) {
              if (value!.isEmpty) {
                return 'You must enter $title';
              }
              return null;
            }, // enabledBorder: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
