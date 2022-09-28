import 'package:get/get.dart';

enum Cough { normal, one, two, three }

class CoughController extends GetxController {
  Cough charcter = Cough.normal;
  String note = "";

  void onChange(Cough value) {
    charcter = value;

    update();
  }

  void onChangeNote(String value) {
    note = value;
    update();
  }
}
