import 'package:get/get.dart';

enum SheepInflammationSiteRadio { udder, nipples,noAnswer }

class SheepInflammationSiteRadioController extends GetxController {
  SheepInflammationSiteRadio charcter = SheepInflammationSiteRadio.noAnswer;

  void onChange(SheepInflammationSiteRadio value) {
    charcter = value;
    update();
  }
}
