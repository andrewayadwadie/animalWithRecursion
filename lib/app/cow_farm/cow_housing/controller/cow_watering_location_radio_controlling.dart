import 'package:get/get.dart';

enum CowWateringLocation { underCanopy, outdoors ,noAnswer }

class CowWateringLocationController extends GetxController {
  CowWateringLocation charcter = CowWateringLocation.noAnswer;

  void onChange(CowWateringLocation value) {
    charcter = value;
    update();
  }
}
