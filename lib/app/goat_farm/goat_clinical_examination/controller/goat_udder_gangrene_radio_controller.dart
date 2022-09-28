import 'package:get/get.dart';

enum GoatUdderGangrene { yes, no,noAnswer }

class GoatUdderGangreneController extends GetxController {
  GoatUdderGangrene charcter = GoatUdderGangrene.noAnswer;

  void onChange(GoatUdderGangrene value) {
    charcter = value;
    update();
  }
}
