import 'package:get/get.dart';

enum MilkProduction { normal, one, two, three }

class MilkProductionController extends GetxController {
  MilkProduction charcter = MilkProduction.normal;
  String note = "";

  void onChange(MilkProduction value) {
    charcter = value;

    update();
  }

  void onChangeNote(String value) {
    note = value;
    update();
  }
}
