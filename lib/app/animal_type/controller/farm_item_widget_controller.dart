import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';

class FarmItemWidgetController extends GetxController {
  bool isClicked = false;
  int choicedId = 0;
  List<Color> afterColorSelected = [
    primaryColor,
    primaryColor,
    primaryColor,
    primaryColor,
    primaryColor,
    primaryColor,
  ];

  List items = [
    'Cows'.tr,
    'Camels'.tr,
    'Sheeps'.tr,
    'Goats'.tr,
    'Horses'.tr,
    'Chickens'.tr,
  ];
  List<bool> selectedColor = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void changeSelected(int index) {
    //! when click change index to false
    selectedColor[index] = !selectedColor[index];
    //! change list from List of bool to list of color
    changeFromBoolToColor(selectedColor);
    //! check if clicked or not to avoid from multichoice
    isClicked = checkIfClicked(selectedColor);
    //! get choicedId to send it to api or onther screen
    choicedId = getChoiceId(selectedColor);
    log("coiced id = $choicedId");
    update();
  }

  void changeFromBoolToColor(List<bool> boolList) {
    for (int i = 0; i < boolList.length; i++) {
      if (boolList[i] == false) {
        afterColorSelected[i] = primaryColor;
      } else {
        afterColorSelected[i] = secondaryColor;
      }
    }
  }

  bool checkIfClicked(List<bool> boolList) {
    //!check if there one item of list have value false
    for (var i = 0; i < boolList.length; i++) {
      if (boolList[i] == true) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  int getChoiceId(List<bool> boolList) {
    for (var i = 0; i < boolList.length; i++) {
      if (boolList[i] == true) {
        return i + 1;
      }
    }

    return 0;
  }

  void reset() {
    selectedColor = [
      false,
      false,
      false,
      false,
      false,
      false,
    ];
    afterColorSelected = [
      primaryColor,
      primaryColor,
      primaryColor,
      primaryColor,
      primaryColor,
      primaryColor,
    ];

    isClicked = false;
    choicedId = 0;
    update();
  }
/*
  //! reset when double click
  void reset() {
    for (var i = 0; i < selectedColor.length; i++) {
      if (selectedColor[i] == true) {
        selectedColor[i] = !selectedColor[i] ;
        //! change list from List of bool to list of color
        changeFromBoolToColor(selectedColor);
        //! check if clicked or not to avoid from multichoice
        isClicked = checkIfClicked(selectedColor);

        update();
      }
    }
    log("clicked");
    update();
  }*/
}
