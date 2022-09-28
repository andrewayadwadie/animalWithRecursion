import 'package:get/get.dart';

enum GoatWateringLocation { underCanopy, outdoors ,noAnswer }

class GoatWateringLocationController extends GetxController {
  GoatWateringLocation charcter = GoatWateringLocation.noAnswer;

  void onChange(GoatWateringLocation value) {
    charcter = value;
    update();
  }
}
