import 'package:get/get.dart';

enum Nasal { normal, one,two,three }

class NasalController extends GetxController {
  Nasal charcter = Nasal.normal;
  String note = "";

  void onChange(Nasal value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}