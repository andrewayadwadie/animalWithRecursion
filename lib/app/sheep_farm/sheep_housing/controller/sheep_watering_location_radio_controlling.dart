import 'package:get/get.dart';

enum SheepWateringLocation { underCanopy, outdoors ,noAnswer }

class SheepWateringLocationController extends GetxController {
  SheepWateringLocation charcter = SheepWateringLocation.noAnswer;

  void onChange(SheepWateringLocation value) {
    charcter = value;
    update();
  }
}
