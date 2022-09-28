import 'package:get/get.dart';

enum Pulse { normal, one,two,three }

class PulseController extends GetxController {
  Pulse charcter = Pulse.normal;
  String note = "";

  void onChange(Pulse value) {
    charcter = value;

    update();
  }
  void onChangeNote(String value) {
    note = value;
    update();
  }
}