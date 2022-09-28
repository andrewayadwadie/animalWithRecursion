import 'package:get/get.dart';

enum CowTreatedRadio { yes, no,noAnswer }

class CowTreatedRadioController extends GetxController {
  CowTreatedRadio charcter = CowTreatedRadio.noAnswer;

  void onChange(CowTreatedRadio value) {
    charcter = value;
    update();
  }
}
