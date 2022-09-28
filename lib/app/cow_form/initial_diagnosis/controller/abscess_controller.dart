import 'package:get/get.dart';

enum Abscess { normal, one, two, three }

class AbscessController extends GetxController {
  Abscess charcter = Abscess.normal;
  String note = "";

  void onChange(Abscess value) {
    charcter = value;

    update();
  }

  void onChangeNote(String value) {
    note = value;
    update();
  }
}
