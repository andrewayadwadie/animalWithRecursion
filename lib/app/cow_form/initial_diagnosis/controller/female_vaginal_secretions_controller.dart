import 'package:get/get.dart';

enum FemaleVaginal { normal, one, two, three }

class FemaleVaginalController extends GetxController {
  FemaleVaginal charcter = FemaleVaginal.normal;
  String note = "";

  void onChange(FemaleVaginal value) {
    charcter = value;

    update();
  }

  void onChangeNote(String value) {
    note = value;
    update();
  }
}
