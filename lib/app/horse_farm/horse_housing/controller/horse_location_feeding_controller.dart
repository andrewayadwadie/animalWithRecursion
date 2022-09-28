import 'package:get/get.dart';

enum HorseFeedingLocation { underCanopy, outdoors ,noAnswer }

class HorseFeedingLocationController extends GetxController {
  HorseFeedingLocation charcter = HorseFeedingLocation.noAnswer;

  void onChange(HorseFeedingLocation value) {
    charcter = value;
    update();
  }
}
