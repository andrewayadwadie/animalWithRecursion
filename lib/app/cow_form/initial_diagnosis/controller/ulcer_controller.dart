import 'package:get/get.dart';

enum Ulcer { normal, one,two,three }

class UlcerController extends GetxController {
  Ulcer charcter = Ulcer.normal;
  String note = "";

  void onChange(Ulcer value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}