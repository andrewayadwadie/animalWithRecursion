import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared_widgets/label_widget.dart';
import '../controller/question_radio_controller.dart';
import '../model/question_model.dart';
import '../model/section_model.dart';

class QuestionRadioWidget extends StatelessWidget {
  const QuestionRadioWidget(
      {Key? key, required this.question, required this.answers})
      : super(key: key);
  final Question question;

  final Map<String, List<QuestionAnswers>> answers;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder<QuestionRadioController>(
          init: QuestionRadioController(),
          builder: (ctrl) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LabelWidget(label: question.name),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                      List.generate(question.questionAnswers.length, (index) {
                    return ListTile(
                      leading: Radio<int>(
                        value: answers['${question.id}']![index].id,
                        groupValue: ctrl.selectedMap['${question.id}'],
                        onChanged: (value) {
                          ctrl.changeValue(value, '${question.id}');
                        },
                      ),
                      title: Text(
                        question.questionAnswers[index].name,
                      ),
                    );
                  }),
                ),
              ],
            );
          }),
    );
  }
}
