import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../home/home_screen.dart';
import '../../controller/lab_controller.dart';
import 'list_sample_widget.dart';

class LabInfoFormWidget extends StatelessWidget {
  const LabInfoFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        child: GetBuilder<LabController>(
            init: LabController(),
            builder: (lab) {
              return ListView(
                children: [
                  InkWell(
                    onTap: () {
                      lab.increaseList();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "add sample".tr,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50),
                    height: MediaQuery.of(context).size.height / 1.6,
                    child: ListView.builder(
                        itemCount: lab.samples.length,
                        itemBuilder: (context, index) {
                          return ListSampleWidget(
                              index: index,
                              samplController: lab.textEditList[index]);
                        }),
                  )
                ],
              );
            }),
      ),
      //!Submit (Next Buttom)
      Align(
         alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
        child: InkWell(
          onTap: () {
            //   Get.to(const ClinicalSymptomScreen());
            Get.defaultDialog(
              title: "Submit Farm Data ",
              middleText:
                  "Cow herd data will be saved. Do you want to add a herd to another animal?",
              onConfirm: () {
                //        Get.offAll(const AnimalTypeScreen());
                // Get.to( AnimalTypeScreen());
              },
              onCancel: () {
                Get.offAll(HomeScreen());
              },
              textConfirm: "yes",
              confirmTextColor: Colors.white,
              textCancel: "no",
            );
          },
          child: Get.locale == const Locale('ar')
              ? SvgPicture.asset(
                  "assets/icons/add-ar.svg",
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.height / 10,
                )
              : SvgPicture.asset(
                  "assets/icons/add-en.svg",
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.height / 10,
                ),
        ),
      )
    ]);
  }
}
