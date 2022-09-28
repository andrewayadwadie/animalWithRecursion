import 'package:get/get.dart';

enum CowCleanVehiclesRadio { yes, no, noAnswer }

class CowCleanVehiclesRadioController extends GetxController {
  CowCleanVehiclesRadio charcter = CowCleanVehiclesRadio.noAnswer;

  void onChange(CowCleanVehiclesRadio value) {
    charcter = value;
    update();
  }
}
