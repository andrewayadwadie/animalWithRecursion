import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.func
  }) : super(key: key);
  final Function func;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 13,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin:  const EdgeInsets.symmetric(horizontal: 5),
    //  decoration: const BoxDecoration(color: secondaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: func.call(),
            child: Image.asset(
              "assets/icons/hamburger.png",
              width: MediaQuery.of(context).size.width / 8,
              height: MediaQuery.of(context).size.height / 8,
            ),
          ),
          Row(
            children: [
                Text(
                "Home".tr,
                style: const TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width / 10,
                height: MediaQuery.of(context).size.height / 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
