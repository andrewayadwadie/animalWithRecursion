import 'package:get/get.dart';

enum BreathingTimes { normal, one,two,three }

class BreathingTimesController extends GetxController {
  BreathingTimes charcter = BreathingTimes.normal;
  String note = "";

  void onChange(BreathingTimes value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}