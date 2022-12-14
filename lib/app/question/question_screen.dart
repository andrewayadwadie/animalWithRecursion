
import 'dart:developer';

import 'package:animal_wealth/app/question/controller/question_radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/style.dart';
import '../shared_widgets/custom_loader.dart';
import 'controller/section_controller.dart';
import 'model/question_model.dart';
import 'widget/question_check_box_widget.dart';
import 'widget/question_date_widget.dart';
import 'widget/question_radio_widget.dart';
import 'widget/question_text_widget.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: GetBuilder<SectionRecursionController>(
            init: SectionRecursionController(),
            builder: (sectionCtrl) {
              List<Question> questionsWithNoChildren =
                  sectionCtrl.sections.questionsWithNoChildrens;
              List<Question> questionsWithChildren =
                  sectionCtrl.sections.questionsWithChildrens;

              return Column(
                children: [
                  //!===============================================================
                  //? get data with no children
                  sectionCtrl.loading == true
                      ? const Center(child: LoaderWidget())
                      : Column(
                          children: List.generate(
                              questionsWithNoChildren.length, (index) {
                            return Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 5,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(12)),
                                child: questionsWithNoChildren[index].type ==
                                        'text'
                                    ? QuestionTextWidget(
                                        controller: sectionCtrl
                                                    .textControllersWithNoChildren[
                                                "${questionsWithNoChildren[index].id}"] ??
                                            TextEditingController(),
                                        title:
                                            questionsWithNoChildren[index].name,
                                        questionAnswers:
                                            questionsWithNoChildren[index]
                                                .questionAnswers,
                                      )
                                    : questionsWithNoChildren[index].type ==
                                            'date'
                                        ? QuestionDateWidget(
                                            dateController: sectionCtrl
                                                        .datesWithNoChildren[
                                                    "${questionsWithNoChildren[index].id}"] ??
                                                TextEditingController(),
                                            title:
                                                questionsWithNoChildren[index]
                                                    .name,
                                            questionAnswers:
                                                questionsWithNoChildren[index]
                                                    .questionAnswers,
                                          )
                                        : questionsWithNoChildren[index].type ==
                                                'radio button'
                                            ? QuestionRadioWidget(
                                                question:
                                                    questionsWithNoChildren[
                                                        index],
                                                answers: sectionCtrl
                                                    .radioAnswersWithNoChildren,
                                              )
                                            : QuestionCheckBoxWidget(
                                                question:
                                                    questionsWithNoChildren[
                                                        index],
                                                // answers: sectionCtrl
                                                //     .checkBoxAnswersWithNoChildren,
                                              ));
                          }),
                        ),
                  const Divider(
                    thickness: 5,
                    color: redColor,
                  ),
                  //!===============================================================
                  //? get data with children

                  sectionCtrl.loading == true
                      ? const Center(child: LoaderWidget())
                      : GetBuilder<QuestionRadioController>(
                          init: QuestionRadioController(),
                          global: false,
                          builder: (radioCtrl) {
                            return Column(
                              children: List.generate(
                                  questionsWithChildren.length, (index) {
                                return Column(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(10),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                5,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: primaryColor),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: questionsWithChildren[index]
                                                    .type ==
                                                'text'
                                            ? QuestionTextWidget(
                                                controller: sectionCtrl
                                                            .textControllersWithChildren[
                                                        "${questionsWithChildren[index].id}"] ??
                                                    TextEditingController(),
                                                title:
                                                    questionsWithChildren[index]
                                                        .name,
                                                questionAnswers:
                                                    questionsWithChildren[index]
                                                        .questionAnswers,
                                              )
                                            : questionsWithChildren[index]
                                                        .type ==
                                                    'date'
                                                ? QuestionDateWidget(
                                                    dateController: sectionCtrl
                                                                .datesWithChildren[
                                                            "${questionsWithChildren[index].id}"] ??
                                                        TextEditingController(),
                                                    title:
                                                        questionsWithChildren[
                                                                index]
                                                            .name,
                                                    questionAnswers:
                                                        questionsWithChildren[
                                                                index]
                                                            .questionAnswers,
                                                  )
                                                : questionsWithChildren[index]
                                                            .type ==
                                                        'radio button'
                                                    ? QuestionRadioWidget(
                                                        question:
                                                            questionsWithChildren[
                                                                index],
                                                        answers: sectionCtrl
                                                            .radioAnswersWithChildren,
                                                      )
                                                    : QuestionCheckBoxWidget(
                                                        question:
                                                            questionsWithChildren[
                                                                index],
                                                        // answers: sectionCtrl
                                                        //     .checkBoxAnswersWithChildren,
                                                      )),
                                    //! children question

                                    Column(
                                      children: List.generate(
                                          questionsWithChildren[index]
                                              .children
                                              .length, (childIndex) {
                                               log('radio select ${radioCtrl.selectedMapNames['${questionsWithChildren[index].id}']}');
                                               log('question children name  ${questionsWithChildren[index].children[childIndex].name}' );
                                        return radioCtrl.selectedMapNames['${questionsWithChildren[index].id}'] ==
                                                questionsWithChildren[index].children[childIndex].name
                                            ? Container(
                                                margin:
                                                    const EdgeInsets.all(10),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    5,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: primaryColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: questionsWithChildren[
                                                                index]
                                                            .children[
                                                                childIndex]
                                                            .type ==
                                                        'text'
                                                    ? QuestionTextWidget(
                                                        controller: sectionCtrl
                                                                    .textControllersWithChildren[
                                                                "${questionsWithChildren[index].children[childIndex].id}"] ??
                                                            TextEditingController(),
                                                        title:
                                                            questionsWithChildren[
                                                                    index]
                                                                    
                                                                .children[
                                                                    childIndex]
                                                                .name,
                                                        questionAnswers:
                                                            questionsWithChildren[
                                                                    index]
                                                                .children[
                                                                    childIndex]
                                                                .questionAnswers,
                                                      )
                                                    : questionsWithChildren[
                                                                    index]
                                                                .children[
                                                                    childIndex]
                                                                .type ==
                                                            'date'
                                                        ? QuestionDateWidget(
                                                            dateController: sectionCtrl
                                                                        .datesWithChildren[
                                                                    "${questionsWithChildren[index].children[childIndex].id}"] ??
                                                                TextEditingController(),
                                                            title: questionsWithChildren[
                                                                    index]
                                                                .children[
                                                                    childIndex]
                                                                .name,
                                                            questionAnswers:
                                                                questionsWithChildren[
                                                                        index]
                                                                    .children[
                                                                        childIndex]
                                                                    .questionAnswers,
                                                          )
                                                        : questionsWithChildren[
                                                                        index]
                                                                    .children[
                                                                        childIndex]
                                                                    .type ==
                                                                'radio button'
                                                            ? QuestionRadioWidget(
                                                                question: questionsWithChildren[
                                                                            index]
                                                                        .children[
                                                                    childIndex],
                                                                answers: sectionCtrl
                                                                    .radioAnswersWithChildren,
                                                              )
                                                            : QuestionCheckBoxWidget(
                                                                question: questionsWithChildren[
                                                                            index]
                                                                        .children[
                                                                    childIndex],
                                                                // answers: sectionCtrl
                                                                //     .checkBoxAnswersWithChildren,
                                                              ),
                                              )
                                            : const SizedBox();
                                      }),
                                    )
                                  ],
                                );
                              }),
                            );
                          }),
                ],
              );
            }),
      )),
    );
  }
}
