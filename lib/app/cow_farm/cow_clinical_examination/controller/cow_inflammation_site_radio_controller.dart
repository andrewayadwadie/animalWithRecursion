import 'package:get/get.dart';

enum CowInflammationSiteRadio { udder, nipples,noAnswer }

class CowInflammationSiteRadioController extends GetxController {
  CowInflammationSiteRadio charcter = CowInflammationSiteRadio.noAnswer;

  void onChange(CowInflammationSiteRadio value) {
    charcter = value;
    update();
  }
}
