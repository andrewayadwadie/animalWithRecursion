import 'package:get/get.dart';

enum VaginalSecretionExist { yes, no }

class VaginalSecretionController extends GetxController {
  VaginalSecretionExist charcter = VaginalSecretionExist.yes;

  void onChange(VaginalSecretionExist value) {
    charcter = value;

    update();
  }
}




