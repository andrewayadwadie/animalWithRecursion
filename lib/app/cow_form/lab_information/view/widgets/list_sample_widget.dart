import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/lab_controller.dart';
import 'sample_widget.dart';

class ListSampleWidget extends StatelessWidget {
  const ListSampleWidget({
    Key? key,
    required this.index,
    required this.samplController,
  }) : super(key: key);
  final int index;
  final TextEditingController samplController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LabController>(
        init: LabController(),
        builder: (lab) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: lightPrimaryColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Form(
              //   key: itemFormKey[index],
              child: Column(
                children: [
                  SampleWidget(
                      controller: samplController,
                      onChange: (val) {
                        lab.addSample(index, sample: val);
                      }),
                  GetBuilder<LabController>(
                      init: LabController(),
                      builder: (ctrll) {
                        return GestureDetector(
                          onTap: () {
                            ctrll.decreaseList(index);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 2.8,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              color: redColor,
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.delete_forever,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Delete Sample'.tr,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          );
        });
  }
}
