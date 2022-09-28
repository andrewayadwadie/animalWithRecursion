import 'package:get/get.dart';

enum SheepCleanVehiclesRadio { yes, no, noAnswer }

class SheepCleanVehiclesRadioController extends GetxController {
  SheepCleanVehiclesRadio charcter = SheepCleanVehiclesRadio.noAnswer;

  void onChange(SheepCleanVehiclesRadio value) {
    charcter = value;
    update();
  }
}
