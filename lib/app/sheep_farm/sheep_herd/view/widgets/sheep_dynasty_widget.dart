 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../controller/sheep_herd_dynasty_controller.dart';
 

class SheepDynastyWidget extends StatelessWidget {
  const SheepDynastyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SheepHerdDynastyController>(
        init: SheepHerdDynastyController(sheepHerdId: 3),
        builder: (controller) {
          return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (ctx) => controller.loading == true
                      ? const LoaderWidget()
                      : SizedBox(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: ListView.builder(
                              itemCount: controller.dynasty.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    controller.onTapSelected(ctx,
                                        controller.dynasty[index].id, index);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60, vertical: 15),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                      child: Text(
                                        controller.dynasty[index].name,
                                        style: const TextStyle(
                                            color: primaryColor, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(right: 7, left: 10),
                margin: const EdgeInsets.only(right: 40, left: 25, top: 20),
                alignment: Alignment.centerRight,
                // width:
                //     MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 16,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      controller.dynastyText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 1.1,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: darkColor),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: darkColor,
                      size: 30,
                    ),
                  ],
                ),
              ));
        });
  }
}
