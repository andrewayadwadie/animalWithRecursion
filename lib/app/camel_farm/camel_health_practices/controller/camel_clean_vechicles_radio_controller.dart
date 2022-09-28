import 'package:get/get.dart';

enum CamelCleanVehiclesRadio { yes, no, noAnswer }

class CamelCleanVehiclesRadioController extends GetxController {
  CamelCleanVehiclesRadio charcter = CamelCleanVehiclesRadio.noAnswer;

  void onChange(CamelCleanVehiclesRadio value) {
    charcter = value;
    update();
  }
}
