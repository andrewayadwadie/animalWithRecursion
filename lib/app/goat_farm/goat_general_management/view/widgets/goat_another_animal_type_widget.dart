import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../../utils/style.dart';
import '../../../../shared_widgets/custom_loader.dart';
import '../../controller/goat_another_animal_type_controller.dart';

class GoatOntherAnimalWidget extends StatelessWidget {
  const GoatOntherAnimalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GetBuilder<GoatAnotherAnimalController>(
          init: GoatAnotherAnimalController(),
          builder: (controller) {
            return GetBuilder<InternetController>(
                init: InternetController(),
                builder: (net) {
                  return GestureDetector(
                      onTap: () {
                        net.checkInternet().then((val) {
                          if (val) {
                            showModalBottomSheet(
                              context: context,
                              builder: (ctx) => controller.loading == true
                                  ? const LoaderWidget()
                                  : SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2.5,
                                      child: ListView.builder(
                                          itemCount:
                                              controller.animalType.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                controller.onTapSelected(
                                                    ctx,
                                                    controller
                                                        .animalType[index].id,
                                                    index);
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 60,
                                                        vertical: 15),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      12,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Colors.grey)),
                                                  child: Text(
                                                    controller
                                                        .animalType[index].name,
                                                    style: const TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                            );
                          }
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(right: 7, left: 10),
                        margin:
                            const EdgeInsets.only(right: 40, left: 25, top: 20),
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
                              controller.animalTypeText,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  height: 1.1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
          }),
    );
  }
}
