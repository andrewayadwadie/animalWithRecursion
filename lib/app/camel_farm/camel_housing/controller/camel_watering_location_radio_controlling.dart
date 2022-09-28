import 'package:get/get.dart';

enum CamelWateringLocation { underCanopy, outdoors ,noAnswer }

class CamelWateringLocationController extends GetxController {
  CamelWateringLocation charcter = CamelWateringLocation.noAnswer;

  void onChange(CamelWateringLocation value) {
    charcter = value;
    update();
  }
}
