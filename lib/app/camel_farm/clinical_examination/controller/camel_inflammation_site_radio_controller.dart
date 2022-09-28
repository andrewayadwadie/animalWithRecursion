import 'package:get/get.dart';

enum CamelInflammationSiteRadio { udder, nipples,noAnswer }

class CamelInflammationSiteRadioController extends GetxController {
  CamelInflammationSiteRadio charcter = CamelInflammationSiteRadio.noAnswer;

  void onChange(CamelInflammationSiteRadio value) {
    charcter = value;
    update();
  }
}
