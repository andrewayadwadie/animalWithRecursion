import 'package:get/get.dart';

enum Anorexia { normal, one,two,three }

class AnorexiaController extends GetxController {
  Anorexia charcter = Anorexia.normal;
  String note = "";

  void onChange(Anorexia value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}