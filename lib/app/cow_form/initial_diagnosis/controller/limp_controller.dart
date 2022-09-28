import 'package:get/get.dart';

enum Limp { normal, one,two,three }

class LimpController extends GetxController {
  Limp charcter = Limp.normal;
  String note = "";

  void onChange(Limp value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}