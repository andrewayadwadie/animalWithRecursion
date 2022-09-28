import 'package:get/get.dart';

enum VeterinaryDepartmentRadio { yes, no, noAnswer }

class VeterinaryDepartmentRadioController extends GetxController {
  VeterinaryDepartmentRadio charcter = VeterinaryDepartmentRadio.noAnswer;

  void onChange(VeterinaryDepartmentRadio value) {
    charcter = value;
    update();
  }
}
