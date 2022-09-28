import 'package:get/get.dart';

enum Diarrhea { normal, one, two, three }

class DiarrheaController extends GetxController {
  Diarrhea charcter = Diarrhea.normal;
  String note = "";

  void onChange(Diarrhea value) {
    charcter = value;

    update();
  }

  void onChangeNote(String value) {
    note = value;
    update();
  }
}
