import '../../../../camel_farm/camel_symptoms/view/widget/camel_symptoms_notes_textfield_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/horse_get_symptoms_controller.dart';
import '../../controller/horse_symptoms_image_picker.dart';
import 'horse_symptoms_textfield_widget.dart';
 
// ignore: must_be_immutable
class HorsesymptomsDataWidget extends StatelessWidget {
  const HorsesymptomsDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.height / 4,
      child: GetBuilder<HorseGetSymptomsController>(
          init: HorseGetSymptomsController(),
          builder: (typeCtrl) {
            return typeCtrl.loading.value == true
                ? const LoaderWidget()
                : ListView.builder(
                    itemCount: typeCtrl.symptoms.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('${typeCtrl.symptoms[index].name}'),
                            leading: Checkbox(
                              value: typeCtrl.choices == []
                                  ? false
                                  : typeCtrl.choices[index],
                              onChanged: (val) =>
                                  typeCtrl.changeCheckBox(val, index),
                            ),
                          ),
                          if (typeCtrl.choices[index] == true)
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: MediaQuery.of(context).size.height / 2,
                              child: GetBuilder<
                                      HorseSymptomsImagePickerController>(
                                  init: HorseSymptomsImagePickerController(
                                      typeCtrl.symptoms),
                                  builder: (imagePick) {
                                    return ListView(
                                      children: [
                                          LabelWidget(
                                            label:
                                                "How Many case of this Symptoms ?".tr),
                                        HorseSymptomsTextFieldWidget(
                                          controller:
                                              typeCtrl.textEditCtrl[index],
                                          title: "Count of cases".tr,
                                        ),

                                        //! Add images List button
                                        InkWell(
                                          onTap: () {
                                            imagePick
                                                .pickImagesFormGallery(index);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    10,
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    10,
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    50),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                15,
                                            decoration: BoxDecoration(
                                                color: redColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children:   [
                                                AutoSizeText(
                                                  "add Symptomss Images".tr,
                                                  style: const TextStyle(
                                                    color: whiteColor,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.photo_album_outlined,
                                                  color: whiteColor,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        //! image List View
                                        if (imagePick
                                            .allImagesList[index].isNotEmpty)
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    40,
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    40,
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    50),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                7,
                                            child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: imagePick
                                                    .allImagesList[index]
                                                    .length,
                                                itemBuilder: (context, indexx) {
                                                  return Container(
                                                    alignment: Alignment.center,
                                                    margin: EdgeInsets.only(
                                                        right: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            80,
                                                        left: MediaQuery
                                                                    .of(context)
                                                                .size
                                                                .width /
                                                            80,
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            80,
                                                        bottom: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            80),
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            11,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            4.6,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset: const Offset(
                                                                0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                        image: DecorationImage(
                                                            image: FileImage(
                                                                imagePick.allImagesList[
                                                                        index]
                                                                    [indexx]),
                                                            fit: BoxFit.cover)),
                                                  );
                                                }),
                                          ),
                                        CamelSymptomsNote(
                                            title: "Notes".tr,
                                            controller: typeCtrl
                                                .noteTextEditCtrl[index])
                                      ],
                                    );
                                  }),
                            ),
                        ],
                      );
                    });
          }),
    );
  }
}
