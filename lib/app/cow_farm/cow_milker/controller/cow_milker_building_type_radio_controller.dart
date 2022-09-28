import 'package:get/get.dart';

enum CowMilkerBuildingTypeRadio { fullyClosed, halfWallWithCanopy,noAnswer }

class CowMilkerBuildingTypeRadioController extends GetxController {
  CowMilkerBuildingTypeRadio charcter =
      CowMilkerBuildingTypeRadio.noAnswer;

  void onChange(CowMilkerBuildingTypeRadio value) {
    charcter = value;
    update();
  }
}
