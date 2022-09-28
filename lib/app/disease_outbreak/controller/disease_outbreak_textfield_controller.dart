import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiseaseOutbreakTextfieldController extends GetxController {
  TextEditingController otherLocalDisease = TextEditingController();
  TextEditingController noOfInfected = TextEditingController();
  TextEditingController noOfDeath = TextEditingController();
  TextEditingController autopsy = TextEditingController();
  TextEditingController animalSource = TextEditingController();
  TextEditingController noOfAnimal = TextEditingController();
  TextEditingController noOfAnimalTwoWeek = TextEditingController();
  TextEditingController exitPurpose = TextEditingController();
  TextEditingController exitAddress = TextEditingController();
  TextEditingController numberOfDoses = TextEditingController();
  TextEditingController noAnimalMeasures4 = TextEditingController();
  TextEditingController noAnimalMeasures5 = TextEditingController();
  TextEditingController noAnimalMeasures6 = TextEditingController();
  TextEditingController selectAction = TextEditingController();
  TextEditingController nameOfDisease = TextEditingController();
  TextEditingController nameOfDisease2 = TextEditingController();

  @override
  void onClose() {
    otherLocalDisease.dispose();
    noOfInfected.dispose();
    noOfDeath.dispose();
    autopsy.dispose();
    animalSource.dispose();
    noOfAnimal.dispose();
    noOfAnimalTwoWeek.dispose();
    exitPurpose.dispose();
    exitAddress.dispose();
    numberOfDoses.dispose();
    noAnimalMeasures4.dispose();
    noAnimalMeasures5.dispose();
    noAnimalMeasures6.dispose();
    selectAction.dispose();
    nameOfDisease.dispose();
    nameOfDisease2.dispose();
    super.onClose();
  }
/*
  void onChangeOtherLocalDisease(String value) {
    otherLocalDisease.text = value;
    update();
  }

  void onChangeNoOfInfected(String value) {
    noOfInfected.text = value;
    update();
  }

  void onChangeNoOfDeath(String value) {
    noOfDeath.text = value;
    update();
  }

  void onChangeAutopsy(String value) {
    autopsy.text = value;
    update();
  }

  void onChangeAnimalSource(String value) {
    animalSource.text = value;
    update();
  }

  void onChangeNumberOfAnimals(String value) {
    noOfAnimal.text = value;
    update();
  }

  void onChangeNumberOfAnimalsTwoWeek(String value) {
    noOfAnimalTwoWeek.text = value;
    update();
  }

  void onChangeExitPurpose(String value) {
    exitPurpose.text = value;
    update();
  }

  void onChangeExitAddress(String value) {
    exitAddress.text = value;
    update();
  }

  void onChangeNumberOfDoses(String value) {
    numberOfDoses.text = value;
    update();
  }

  void onChangeAnimalMeasures4(String value) {
    noAnimalMeasures4.text = value;
    update();
  }

  void onChangeAnimalMeasures5(String value) {
    noAnimalMeasures5.text = value;
    update();
  }

  void onChangeAnimalMeasures6(String value) {
    noAnimalMeasures6.text = value;
    update();
  }

  void onChangeSelectAction(String value) {
    selectAction.text = value;
    update();
  }

  void onChangeNameOfDisease(String value) {
    nameOfDisease.text = value;
    update();
  }

  void onChangeNameOfDisease2(String value) {
    nameOfDisease2.text = value;
    update();
  }
  */
}
