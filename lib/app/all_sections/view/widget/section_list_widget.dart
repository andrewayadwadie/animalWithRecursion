import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/all_section_controller.dart';
import 'section_widget.dart';

class SectionListWidget extends StatelessWidget {
  const SectionListWidget({Key? key, required this.animalId}) : super(key: key);
  final int animalId;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllSectionController>(
        init: AllSectionController(),
        builder: (sectionCtrl) {
          return Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height / 50,
                right: MediaQuery.of(context).size.height / 50,
                top: MediaQuery.of(context).size.width / 17,
                bottom: MediaQuery.of(context).size.width / 50),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SectionWidget(
                    title: sectionCtrl.sectionTitles[0],
                    image: sectionCtrl.sectionImageList[0],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 0);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[1],
                    image: sectionCtrl.sectionImageList[1],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 1);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[2],
                    image: sectionCtrl.sectionImageList[2],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 2);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[3],
                    image: sectionCtrl.sectionImageList[3],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 3);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[4],
                    image: sectionCtrl.sectionImageList[4],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 4);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[5],
                    image: sectionCtrl.sectionImageList[5],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 5);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[6],
                    image: sectionCtrl.sectionImageList[6],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 6);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[7],
                    image: sectionCtrl.sectionImageList[7],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 7);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[8],
                    image: sectionCtrl.sectionImageList[8],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 8);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[9],
                    image: sectionCtrl.sectionImageList[9],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 9);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[10],
                    image: sectionCtrl.sectionImageList[10],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 10);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[11],
                    image: sectionCtrl.sectionImageList[11],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 11);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[12],
                    image: sectionCtrl.sectionImageList[12],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 12);
                    }),
                SectionWidget(
                    title: sectionCtrl.sectionTitles[13],
                    image: sectionCtrl.sectionImageList[13],
                    onTap: () {
                      sectionCtrl.choiceSection(animalId, 13);
                    }),
              ],
            ),
          );
        });
  }
}
