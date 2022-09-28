
import 'package:get/get.dart';

class DiseaseCheckBoxController extends GetxController {
  bool mastitis = false;
  bool limp = false;
  bool miscarriage = false;
  bool diarrhea = false;
  bool artificialInsemination = false;
  bool insects = false;

  void mastitisonChange(bool? value) {
    mastitis = value ?? false;

    update();
  }
  void limpOnChange(bool? value) {
    limp = value ?? false;

    update();
  }
  void miscarriageonChange(bool? value) {
    miscarriage = value ?? false;

    update();
  }
  void diarrheaonChange(bool? value) {
    diarrhea = value ?? false;

    update();
  }
  void artificialInseminationonChange(bool? value) {
    artificialInsemination = value ?? false;

    update();
  }
  void insectsonChange(bool? value) {
    insects = value ?? false;

    update();
  }
 
}
