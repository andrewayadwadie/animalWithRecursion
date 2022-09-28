import 'package:get/get.dart';

enum SheepUdderGangrene { yes, no,noAnswer }

class SheepUdderGangreneController extends GetxController {
  SheepUdderGangrene charcter = SheepUdderGangrene.noAnswer;

  void onChange(SheepUdderGangrene value) {
    charcter = value;
    update();
  }
}
