import 'package:get/get.dart';

enum BloodyUrine { normal, one,two,three }

class BloodyUrineController extends GetxController {
  BloodyUrine charcter = BloodyUrine.normal;
  String note = "";

  void onChange(BloodyUrine value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}