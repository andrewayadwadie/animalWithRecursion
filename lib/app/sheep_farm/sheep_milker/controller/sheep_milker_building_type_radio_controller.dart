import 'package:get/get.dart';

enum SheepMilkerBuildingTypeRadio { fullyClosed, halfWallWithCanopy,noAnswer }

class SheepMilkerBuildingTypeRadioController extends GetxController {
  SheepMilkerBuildingTypeRadio charcter =
      SheepMilkerBuildingTypeRadio.noAnswer;

  void onChange(SheepMilkerBuildingTypeRadio value) {
    charcter = value;
    update();
  }
}
