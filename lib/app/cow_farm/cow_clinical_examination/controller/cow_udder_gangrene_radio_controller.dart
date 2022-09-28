import 'package:get/get.dart';

enum CowUdderGangrene { yes, no,noAnswer }

class CowUdderGangreneController extends GetxController {
  CowUdderGangrene charcter = CowUdderGangrene.noAnswer;

  void onChange(CowUdderGangrene value) {
    charcter = value;
    update();
  }
}
