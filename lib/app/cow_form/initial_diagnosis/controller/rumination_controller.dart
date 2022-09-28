import 'package:get/get.dart';

enum Rumination { normal, one,two,three }

class RuminationController extends GetxController {
  Rumination charcter = Rumination.normal;
  String note = "";

  void onChange(Rumination value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}