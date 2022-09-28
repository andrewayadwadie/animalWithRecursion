import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';
 
import '../../question/question_screen.dart';
import '../controller/home_body_controller.dart';
import 'add_new_farm_widget.dart';
import 'task_item_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 40),
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(2, -3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //!Title
          Text(
            "Hi,Doctor".tr,
            style: const TextStyle(color: Colors.black87, fontSize: 25),
          ),
          // Text(
          //   "Welcome back".tr,
          //   style: const TextStyle(
          //       color: Colors.black87,
          //       fontSize: 32,
          //       fontWeight: FontWeight.bold,
          //       height: 1.1),
          // ),
          // //! Category title
          // SizedBox(
          //   height: MediaQuery.of(context).size.height / 30,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       "Add Farms".tr,
          //       style: const TextStyle(
          //           color: Colors.black87,
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           height: 1.1),
          //     ),

          //   ],
          // ),
          SizedBox(height: MediaQuery.of(context).size.height / 60),
          //! Farms Type Slider
          GetBuilder<HomeBodyController>(
              init: HomeBodyController(),
              builder: (ctrl) {
                return AddNewFarmWidget(
                  title: "Add New Farm ".tr,
                  icon: Icons.add_circle_outline,
                  onClick: () {
                    Get.to(() => const QuestionScreen());
                  },
                );
              }),
          //! Category title 2

          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All Farms".tr,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.1),
              ),
            ],
          ),
          //!Tasks List Slider
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return TaskItemWIdget(
                      index: index,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
