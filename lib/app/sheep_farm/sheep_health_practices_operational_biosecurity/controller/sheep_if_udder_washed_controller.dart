import 'package:get/get.dart';

enum SheepIfUdderWashed { yes, no ,noAnswer}

class SheepIfUdderWashedController extends GetxController {
  SheepIfUdderWashed charcter = SheepIfUdderWashed.noAnswer;

  void onChange(SheepIfUdderWashed value) {
    charcter = value;
    update();
  }
}
