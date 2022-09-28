import 'package:get/get.dart';

enum CowIfUdderWashed { yes, no ,noAnswer}

class CowIfUdderWashedController extends GetxController {
  CowIfUdderWashed charcter = CowIfUdderWashed.noAnswer;

  void onChange(CowIfUdderWashed value) {
    charcter = value;
    update();
  }
}
