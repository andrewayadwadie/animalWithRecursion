import 'package:get/get.dart';

enum HorseUdderGangrene { yes, no,noAnswer }

class HorseUdderGangreneController extends GetxController {
  HorseUdderGangrene charcter = HorseUdderGangrene.noAnswer;

  void onChange(HorseUdderGangrene value) {
    charcter = value;
    update();
  }
}
