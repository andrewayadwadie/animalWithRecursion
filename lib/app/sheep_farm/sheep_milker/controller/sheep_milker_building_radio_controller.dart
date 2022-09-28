import 'package:get/get.dart';

enum SheepMilkerBuildingRadio { milkerBuilding, barn ,noAnswer}

class SheepMilkerBuildingRadioController extends GetxController {
  SheepMilkerBuildingRadio charcter = SheepMilkerBuildingRadio.noAnswer;

  void onChange(SheepMilkerBuildingRadio value) {
    charcter = value;
    update();
  }
}
