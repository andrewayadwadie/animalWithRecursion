import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../utils/style.dart';
import '../../../shared_widgets/custom_loader.dart';
import '../../controller/area_controller.dart';
import '../../controller/farm_location_controller.dart';

class AreaWidget extends StatelessWidget {
  const AreaWidget({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AreaController>(
        init: AreaController(),
        builder: (toolCtrl) {
          return GetBuilder<InternetController>(
              init: InternetController(),
              builder: (net) {
                return GetBuilder<CurrentLocationController>(
                    init: CurrentLocationController(),
                    builder: (current) {
                      return GetBuilder<FarmLocationController>(
                          init: FarmLocationController(),
                          builder: (farmLocation) {
                            return GestureDetector(
                                onTap: () {
                                  net.checkInternet().then((val) {
                                    if (val) {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (ctx) => toolCtrl.loading ==
                                                false
                                            ? const LoaderWidget()
                                            : SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2.5,
                                                child: ListView.builder(
                                                    itemCount:
                                                        toolCtrl.areas.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return InkWell(
                                                        onTap: () {
                                                          farmLocation
                                                              .getLocation(
                                                                  current.lat ??
                                                                      0.0,
                                                                  current.long ??
                                                                      0.0);
                                                          toolCtrl
                                                              .onTapSelected(
                                                                  ctx,
                                                                  toolCtrl
                                                                      .areas[
                                                                          index]
                                                                      .id,
                                                                  index);
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      60,
                                                                  vertical: 15),
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height /
                                                                12,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                border: Border.all(
                                                                    width: 1,
                                                                    color: Colors
                                                                        .grey)),
                                                            child: Text(
                                                              toolCtrl
                                                                  .areas[index]
                                                                  .name,
                                                              style: const TextStyle(
                                                                  color:
                                                                      primaryColor,
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
                                  padding:
                                      const EdgeInsets.only(right: 7, left: 10),
                                  margin: const EdgeInsets.only(
                                      right: 40, left: 25, top: 20),
                                  alignment: Alignment.centerRight,
                                  // width:
                                  //     MediaQuery.of(context).size.width / 2,
                                  height:
                                      MediaQuery.of(context).size.height / 16,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        toolCtrl.areasText.value,
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
                    });
              });
        });
  }
}
