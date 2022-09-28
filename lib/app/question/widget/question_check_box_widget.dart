
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared_widgets/label_widget.dart';
import '../controller/question_check_box_controller.dart';
import '../model/question_model.dart';

class QuestionCheckBoxWidget extends StatelessWidget {
  const QuestionCheckBoxWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder<QuestionCheckBoxController>(
          init: QuestionCheckBoxController(question),
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
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value:false,
                            // ctrl.selected['${question.id}']![index],
                            onChanged: (value) {
                              ctrl.changeValue(value ?? false, index);
                            }),
                        Text(
                          question.questionAnswers[index].name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        )
                      ],
                    );
                  }),
                )
              ],
            );
          }),
    );
  }
}
