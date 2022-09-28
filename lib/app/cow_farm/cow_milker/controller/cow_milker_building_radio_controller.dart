import 'package:get/get.dart';

enum CowMilkerBuildingRadio { milkerBuilding, barn ,noAnswer}

class CowMilkerBuildingRadioController extends GetxController {
  CowMilkerBuildingRadio charcter = CowMilkerBuildingRadio.noAnswer;

  void onChange(CowMilkerBuildingRadio value) {
    charcter = value;
    update();
  }
}
