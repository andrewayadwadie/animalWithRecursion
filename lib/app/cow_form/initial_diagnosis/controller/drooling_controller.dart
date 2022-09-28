import 'package:get/get.dart';

enum Drooling { normal, one,two,three }

class DroolingController extends GetxController {
  Drooling charcter = Drooling.normal;
  String note = "";

  void onChange(Drooling value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}