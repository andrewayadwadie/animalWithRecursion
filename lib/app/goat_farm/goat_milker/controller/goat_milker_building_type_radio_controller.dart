import 'package:get/get.dart';

enum GoatMilkerBuildingTypeRadio { fullyClosed, halfWallWithCanopy,noAnswer }

class GoatMilkerBuildingTypeRadioController extends GetxController {
  GoatMilkerBuildingTypeRadio charcter =
      GoatMilkerBuildingTypeRadio.noAnswer;

  void onChange(GoatMilkerBuildingTypeRadio value) {
    charcter = value;
    update();
  }
}
