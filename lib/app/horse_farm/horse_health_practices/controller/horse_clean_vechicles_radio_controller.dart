import 'package:get/get.dart';

enum HorseCleanVehiclesRadio { yes, no, noAnswer }

class HorseCleanVehiclesRadioController extends GetxController {
  HorseCleanVehiclesRadio charcter = HorseCleanVehiclesRadio.noAnswer;

  void onChange(HorseCleanVehiclesRadio value) {
    charcter = value;
    update();
  }
}
