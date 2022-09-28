import 'package:get/get.dart';

enum CamelMilkerBuildingTypeRadio { fullyClosed, halfWallWithCanopy,noAnswer }

class CamelMilkerBuildingTypeRadioController extends GetxController {
  CamelMilkerBuildingTypeRadio charcter =
      CamelMilkerBuildingTypeRadio.noAnswer;

  void onChange(CamelMilkerBuildingTypeRadio value) {
    charcter = value;
    update();
  }
}
