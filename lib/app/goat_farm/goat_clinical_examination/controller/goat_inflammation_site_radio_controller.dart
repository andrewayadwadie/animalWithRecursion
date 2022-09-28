import 'package:get/get.dart';

enum GoatInflammationSiteRadio { udder, nipples,noAnswer }

class GoatInflammationSiteRadioController extends GetxController {
  GoatInflammationSiteRadio charcter = GoatInflammationSiteRadio.noAnswer;

  void onChange(GoatInflammationSiteRadio value) {
    charcter = value;
    update();
  }
}
