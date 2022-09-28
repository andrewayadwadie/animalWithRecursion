import 'package:get/get.dart';

enum Temperature { normal, one,two,three }

class TemperatureController extends GetxController {
  Temperature charcter = Temperature.normal;
  String note = "";

  void onChange(Temperature value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}