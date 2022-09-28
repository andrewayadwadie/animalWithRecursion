import 'package:get/get.dart';

enum CamelUdderGangrene { yes, no,noAnswer }

class CamelUdderGangreneController extends GetxController {
  CamelUdderGangrene charcter = CamelUdderGangrene.noAnswer;

  void onChange(CamelUdderGangrene value) {
    charcter = value;
    update();
  }
}
