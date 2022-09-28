import 'package:get/get.dart';

enum HorseMilkerBuildingRadio { milkerBuilding, barn ,noAnswer}

class HorseMilkerBuildingRadioController extends GetxController {
  HorseMilkerBuildingRadio charcter = HorseMilkerBuildingRadio.noAnswer;

  void onChange(HorseMilkerBuildingRadio value) {
    charcter = value;
    update();
  }
}
