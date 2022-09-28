import 'package:get/get.dart';

enum GoatFeedingLocation { underCanopy, outdoors ,noAnswer }

class GoatFeedingLocationController extends GetxController {
  GoatFeedingLocation charcter = GoatFeedingLocation.noAnswer;

  void onChange(GoatFeedingLocation value) {
    charcter = value;
    update();
  }
}
