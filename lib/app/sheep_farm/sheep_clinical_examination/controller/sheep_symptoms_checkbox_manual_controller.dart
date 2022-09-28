import 'package:get/get.dart';

class SheepSymptomsCheckboxManualController extends GetxController {
  bool fever = false;
  bool limp = false;
  bool cough = false;
  bool breathingDifficulties = false;
  bool diarrhea = false;
  bool nasalSecretions = false;
  bool vaginalSecretions = false;
  bool secretionsFromEye = false;
  bool drooling = false;
  bool inflammationInTongue = false;
  bool anorexia = false;
  bool nervousSymptoms = false;
  bool skinLesions = false;
  bool weightLoss = false;
  bool decreasedMilkProduction = false;
  bool lethargy = false;
  bool mastitis = false;
  bool miscarriage = false;

  void feveronChange(bool? value) {
    fever = value ?? false;

    update();
  }
  void limponChange(bool? value) {
    limp = value ?? false;

    update();
  }
  void coughonChange(bool? value) {
    cough = value ?? false;

    update();
  }
  void breathingDifficultiesonChange(bool? value) {
    breathingDifficulties = value ?? false;

    update();
  }
  void diarrheaonChange(bool? value) {
    diarrhea = value ?? false;

    update();
  }
  void nasalSecretionsonChange(bool? value) {
    nasalSecretions = value ?? false;

    update();
  }
  void vaginalSecretionsonChange(bool? value) {
    vaginalSecretions = value ?? false;

    update();
  }
  void secretionsFromEyeonChange(bool? value) {
    secretionsFromEye = value ?? false;

    update();
  }
  void droolingonChange(bool? value) {
    drooling = value ?? false;

    update();
  }
  void inflammationInTongueonChange(bool? value) {
    inflammationInTongue = value ?? false;

    update();
  }
  void anorexiaonChange(bool? value) {
    anorexia = value ?? false;

    update();
  }
  void nervousSymptomsonChange(bool? value) {
    nervousSymptoms = value ?? false;

    update();
  }
  void skinLesionsonChange(bool? value) {
    skinLesions = value ?? false;

    update();
  }
  void weightLossonChange(bool? value) {
    weightLoss = value ?? false;

    update();
  }
  void decreasedMilkProductiononChange(bool? value) {
    decreasedMilkProduction = value ?? false;

    update();
  }
  void lethargyonChange(bool? value) {
    lethargy = value ?? false;

    update();
  }
  void mastitisonChange(bool? value) {
    mastitis = value ?? false;

    update();
  }
  void miscarriageonChange(bool? value) {
    miscarriage = value ?? false;

    update();
  }
}
