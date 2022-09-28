import 'package:get/get.dart';

enum GoatMilkerBuildingRadio { milkerBuilding, barn ,noAnswer}

class GoatMilkerBuildingRadioController extends GetxController {
  GoatMilkerBuildingRadio charcter = GoatMilkerBuildingRadio.noAnswer;

  void onChange(GoatMilkerBuildingRadio value) {
    charcter = value;
    update();
  }
}
