import 'dart:developer';

import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

class FarmLocationController extends GetxController {
  String country = "";
  String city = "";
  String area = "";

  Future<void> getLocation(double lat, double long) async {
    try {
      if (lat != 0.0 && long != 0.0) {
        List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
        // log("placeMarker : ${placemarks[0].country},${placemarks[0].administrativeArea},${placemarks[0].locality} ");
        country = placemarks[0].country ?? "";
        city = placemarks[0].administrativeArea ?? "";
        area = placemarks[0].locality ?? "";

        update();
      } else {
        Get.snackbar("Error", "Please check your current location");
      }
    } catch (e) {
      log("$e Please check your current location");
    }
  }
}
