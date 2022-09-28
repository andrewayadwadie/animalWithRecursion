import 'package:get/get.dart';

class AnatomicalCheckController extends GetxController {
  bool respiratory = false;
  bool lymphNodes = false;

  bool heart = false;
  bool spleen = false;
  bool digestive = false;
  bool kidney = false;
  bool externalOnly = false;

  void respiratoryonChange(bool? value) {
    respiratory = value ?? false;

    update();
  }

  void lymphNodesChange(bool? value) {
    lymphNodes = value ?? false;

    update();
  }

  void heartChange(bool? value) {
    heart = value ?? false;

    update();
  }

  void spleenChange(bool? value) {
    spleen = value ?? false;

    update();
  }

  void digestiveChange(bool? value) {
    digestive = value ?? false;

    update();
  }

  void kidneyChange(bool? value) {
    kidney = value ?? false;

    update();
  }

  void externalOnlyChange(bool? value) {
    externalOnly = value ?? false;

    update();
  }
}
