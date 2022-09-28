import 'package:get/get.dart';

enum HorseMilkerBuildingTypeRadio { fullyClosed, halfWallWithCanopy,noAnswer }

class HorseMilkerBuildingTypeRadioController extends GetxController {
  HorseMilkerBuildingTypeRadio charcter =
      HorseMilkerBuildingTypeRadio.noAnswer;

  void onChange(HorseMilkerBuildingTypeRadio value) {
    charcter = value;
    update();
  }
}
