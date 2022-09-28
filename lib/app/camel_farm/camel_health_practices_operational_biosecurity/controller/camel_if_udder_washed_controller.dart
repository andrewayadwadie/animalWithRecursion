import 'package:get/get.dart';

enum CamelIfUdderWashed { yes, no ,noAnswer}

class CamelIfUdderWashedController extends GetxController {
  CamelIfUdderWashed charcter = CamelIfUdderWashed.noAnswer;

  void onChange(CamelIfUdderWashed value) {
    charcter = value;
    update();
  }
}
