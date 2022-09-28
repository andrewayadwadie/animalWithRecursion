import 'package:get/get.dart';

class InsectTypeController extends GetxController {
  bool tick = false;
  bool flea = false;
  bool mosquito = false;
  bool hamosh = false;

  void tickonChange(bool? value) {
    tick = value ?? false;

    update();
  }

  void fleaOnChange(bool? value) {
    flea = value ?? false;

    update();
  }

  void mosquitoonChange(bool? value) {
    mosquito = value ?? false;

    update();
  }

  void hamoshonChange(bool? value) {
    hamosh = value ?? false;

    update();
  }
}
