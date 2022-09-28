 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../controller/camel_lab_info_controller.dart';
import 'camel_list_sample_widget.dart';

class CamelLabInfoWidget extends StatelessWidget {
  const CamelLabInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamelLabInfoController>(
        init: CamelLabInfoController(),
        builder: (lab) {
          return ListView(children: [
            InkWell(
              onTap: () {
                lab.increaseList();
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 15,
                // width: MediaQuery.of(context).size.width/5,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 6),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child:   Text(
                  "add sample".tr,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 50),
              height: MediaQuery.of(context).size.height / 1.6,
              child: ListView.builder(
                  itemCount: lab.samples.length,
                  itemBuilder: (context, index) {
                    return CamelListSampleWidget(
                      index: index,
                      samplController: lab.sampleNumbertextEditList[index],
                      placeSamplController: lab.placetextEditList[index],
                    );
                  }),
            )
          ]);
        });
  }
}
