import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';

class TaskItemWIdget extends StatelessWidget {
  const TaskItemWIdget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width / 80,
          left: MediaQuery.of(context).size.width / 80,
          top: MediaQuery.of(context).size.height / 60),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(2, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.height / 14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor,
            ),
            child: const Icon(
              Icons.note_alt,
              color: whiteColor,
              size: 50,
            ),
          ),
          Container(
            alignment: Get.locale == const Locale('en')
                ? Alignment.centerLeft
                : Alignment.centerRight,
            width: MediaQuery.of(context).size.width / 2.4,
            height: MediaQuery.of(context).size.height / 11,
            child: Text(
              'farm'.tr + ' $index',
              style: const TextStyle(
                  color: darkColor, fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 10,
            height: MediaQuery.of(context).size.height / 20,
            decoration: BoxDecoration(
                //   color: primaryColor,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 2, color: greyColor)),
            child: const Center(
                child: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColor,
            )),
          ),
        ],
      ),
    );
  }
}
