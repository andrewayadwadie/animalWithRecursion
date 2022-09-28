import 'package:get/get.dart';

enum HorseIfUdderWashed { yes, no ,noAnswer}

class HorseIfUdderWashedController extends GetxController {
  HorseIfUdderWashed charcter = HorseIfUdderWashed.noAnswer;

  void onChange(HorseIfUdderWashed value) {
    charcter = value;
    update();
  }
}
