import 'package:get/get.dart';

enum GoatIfUdderWashed { yes, no ,noAnswer}

class GoatIfUdderWashedController extends GetxController {
  GoatIfUdderWashed charcter = GoatIfUdderWashed.noAnswer;

  void onChange(GoatIfUdderWashed value) {
    charcter = value;
    update();
  }
}
