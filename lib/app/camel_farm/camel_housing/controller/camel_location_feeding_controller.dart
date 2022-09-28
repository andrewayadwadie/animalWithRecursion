import 'package:get/get.dart';

enum CamelFeedingLocation { underCanopy, outdoors ,noAnswer }

class CamelFeedingLocationController extends GetxController {
  CamelFeedingLocation charcter = CamelFeedingLocation.noAnswer;

  void onChange(CamelFeedingLocation value) {
    charcter = value;
    update();
  }
}
