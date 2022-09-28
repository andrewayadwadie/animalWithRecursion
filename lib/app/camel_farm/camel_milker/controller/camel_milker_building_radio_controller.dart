import 'package:get/get.dart';

enum CamelMilkerBuildingRadio { milkerBuilding, barn ,noAnswer}

class CamelMilkerBuildingRadioController extends GetxController {
  CamelMilkerBuildingRadio charcter = CamelMilkerBuildingRadio.noAnswer;

  void onChange(CamelMilkerBuildingRadio value) {
    charcter = value;
    update();
  }
}
