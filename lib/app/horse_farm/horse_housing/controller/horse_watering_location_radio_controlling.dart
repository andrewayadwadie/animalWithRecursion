import 'package:get/get.dart';

enum HorseWateringLocation { underCanopy, outdoors ,noAnswer }

class HorseWateringLocationController extends GetxController {
  HorseWateringLocation charcter = HorseWateringLocation.noAnswer;

  void onChange(HorseWateringLocation value) {
    charcter = value;
    update();
  }
}
