import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../lab_information/view/screen/lab_info_screen.dart';
import '../../controller/suspected_dropdown_controller.dart';

class SuspectedDiseaseFormWidget extends StatelessWidget {
  const SuspectedDiseaseFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.6,
              child: GetBuilder<SuspectedDropDownController>(
                  init: SuspectedDropDownController(),
                  builder: (ctrl) {
                    return ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: const Text("Suspected Disease1"),
                            trailing: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 2.9,
                              height: MediaQuery.of(context).size.height / 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.blueGrey),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: darkColor,
                                    offset: Offset(
                                      3.0,
                                      3.0,
                                    ),
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        ctrl.decrement(index);
                                      },
                                      icon: const Icon(Icons.remove,
                                          color: primaryColor)),
                                  Text("${ctrl.caseList[index]}"),
                                  IconButton(
                                      onPressed: () {
                                        ctrl.increment(index);
                                      },
                                      icon: const Icon(Icons.add,
                                          color: primaryColor)),
                                ],
                              ),
                            ),
                          );
                        });
                  }),
            ),
          ],
        ),
      ),
      //!Submit (Next Buttom)
      Align(
        alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
        child: InkWell(
          onTap: () {
            Get.to(const LabInfoScreen());
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
