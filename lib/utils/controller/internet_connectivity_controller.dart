import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

import '../style.dart';

class InternetController extends GetxController {
  Future<bool> checkInternet() async {
    bool hasInternet = await InternetConnectionChecker().hasConnection;

    if (hasInternet == false) {
      showSimpleNotification(
          Text(
          "No Internet Connection ".tr,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        background: redColor,
      );
      update();
      return false;
    }
    update();
    return true;
  }
}
