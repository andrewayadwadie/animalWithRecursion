import 'package:get/get.dart';

enum EyeRedness { normal, one,two,three }

class EyeRednessController extends GetxController {
  EyeRedness charcter = EyeRedness.normal;
  String note = "";

  void onChange(EyeRedness value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}