import 'package:get/get.dart';

enum HorseInflammationSiteRadio { udder, nipples,noAnswer }

class HorseInflammationSiteRadioController extends GetxController {
  HorseInflammationSiteRadio charcter = HorseInflammationSiteRadio.noAnswer;

  void onChange(HorseInflammationSiteRadio value) {
    charcter = value;
    update();
  }
}
