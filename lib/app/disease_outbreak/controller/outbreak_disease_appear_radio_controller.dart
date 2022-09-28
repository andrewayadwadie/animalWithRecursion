import 'package:get/get.dart';

enum OutBreakDiseaseAppear { yes, no, noAnswer }

class OutBreakDiseaseAppearController extends GetxController {
  OutBreakDiseaseAppear charcter = OutBreakDiseaseAppear.noAnswer;

  void onChange(OutBreakDiseaseAppear value) {
    charcter = value;
    update();
  }
}
