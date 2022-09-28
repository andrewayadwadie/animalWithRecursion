import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CamelHerdFormController extends GetxController {
  String numberOfAnimals = "0";
  String numberOfCases = "0";
  String numberOfAdults = "0";
  String numberOfVirginity = "0";
  String numberOfAged = "0";
  String numberOfInfant = "0";
  String numberOfAblaction = "0";
  String numberOfMales = "0";
  String numberOfFemales = "0";
  String numberOfDeaths = "0";
  String numberOfSuddenDeath = "0";
  //!==========================================================================

  String numberOfAdultsOfCases = "0";
  String numberOfVirginityOfCases = "0";
  String numberOfAgedOfCases = "0";
  String numberOfInfantOfCases = "0";
  String numberOfAblactionOfCases = "0";
  String numberOfMalesOfCases = "0";
  String numberOfFemalesOfCases = "0";
  String note = "";
  //!==========================================================================
  TextEditingController numberOfAnimalsCtrl = TextEditingController();
  TextEditingController numberOfCasesCtrl = TextEditingController();
  TextEditingController numberOfAdultsCtrl = TextEditingController();
  TextEditingController numberOfVirginityCtrl = TextEditingController();
  TextEditingController numberOfAgedCtrl = TextEditingController();
  TextEditingController numberOfInfantCtrl = TextEditingController();
  TextEditingController numberOfAblactionCtrl = TextEditingController();
  TextEditingController numberOfMalesCtrl = TextEditingController();
  TextEditingController numberOfFemalesCtrl = TextEditingController();
  TextEditingController numberOfDeathsCtrl = TextEditingController();
  TextEditingController numberOfSuddenDeathCtrl = TextEditingController();
//!==========================================================================
  TextEditingController numberOfAdultsCtrlOfCases = TextEditingController();
  TextEditingController numberOfVirginityCtrlOfCases = TextEditingController();
  TextEditingController numberOfAgedCtrlOfCases = TextEditingController();
  TextEditingController numberOfInfantCtrlOfCases = TextEditingController();
  TextEditingController numberOfAblactionCtrlOfCases = TextEditingController();
  TextEditingController numberOfMalesCtrlOfCases = TextEditingController();
  TextEditingController numberOfFemalesCtrlOfCases = TextEditingController();
  TextEditingController noteCtrl = TextEditingController();

  @override
  void onClose() {
    numberOfAnimalsCtrl.dispose();
    numberOfCasesCtrl.dispose();
    numberOfAdultsCtrl.dispose();
    numberOfVirginityCtrl.dispose();
    numberOfAgedCtrl.dispose();
    numberOfInfantCtrl.dispose();
    numberOfAblactionCtrl.dispose();
    numberOfMalesCtrl.dispose();
    numberOfFemalesCtrl.dispose();
    numberOfDeathsCtrl.dispose();
    numberOfSuddenDeathCtrl.dispose();
    noteCtrl.dispose();
    //!==========================================================================
    numberOfAdultsCtrlOfCases.dispose();
    numberOfVirginityCtrlOfCases.dispose();
    numberOfAgedCtrlOfCases.dispose();
    numberOfInfantCtrlOfCases.dispose();
    numberOfAblactionCtrlOfCases.dispose();
    numberOfMalesCtrlOfCases.dispose();
    numberOfFemalesCtrlOfCases.dispose();
    super.onClose();
  }

  void changenumberOfAnimals(String val) {
    if (val == "") {
      numberOfAnimals = "0";

      update();
    } else {
      numberOfAnimals = val;
      numberOfAnimalsCtrl.text = val;
      numberOfAnimalsCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAnimalsCtrl.text.length));

      update();
    }
  }

  void changenumberOfCases(String val) {
    if (val == "") {
      numberOfCases = "0";
      update();
    } else {
      numberOfCases = val;
      numberOfCasesCtrl.text = val;
      numberOfCasesCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfCasesCtrl.text.length));
      update();
    }
  }

  void changenumberOfAdults(String val) {
    if (val == "") {
      numberOfAdults = "0";
      update();
    } else {
      numberOfAdults = val;
      numberOfAdultsCtrl.text = val;
      numberOfAdultsCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAdultsCtrl.text.length));
      update();
    }
  }

  void changenumberOfVirginity(String val) {
    if (val == "") {
      numberOfVirginity = "0";
      update();
    } else {
      numberOfVirginity = val;
      numberOfVirginityCtrl.text = val;
      numberOfVirginityCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfVirginityCtrl.text.length));
      update();
    }
  }

  void changenumberOfAged(String val) {
    if (val == "") {
      numberOfAged = "0";
      update();
    } else {
      numberOfAged = val;
      numberOfAgedCtrl.text = val;
      numberOfAgedCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAgedCtrl.text.length));
      update();
    }
  }

  void changenumberOfInfant(String val) {
    if (val == "") {
      numberOfInfant = "0";
      update();
    } else {
      numberOfInfant = val;
      numberOfInfantCtrl.text = val;
      numberOfInfantCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfInfantCtrl.text.length));
      update();
    }
  }

  void changenumberOfAblaction(String val) {
    if (val == "") {
      numberOfAblaction = "0";
      update();
    } else {
      numberOfAblaction = val;
      numberOfAblactionCtrl.text = val;
      numberOfAblactionCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAblactionCtrl.text.length));
      update();
    }
  }

  void changenumberOfMales(String val) {
    if (val == "") {
      numberOfMales = "0";
      update();
    } else {
      numberOfMales = val;
      numberOfMalesCtrl.text = val;
      numberOfMalesCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfMalesCtrl.text.length));
      update();
    }
  }

  void changenumberOfFemales(String val) {
    if (val == "") {
      numberOfFemales = "0";

      update();
    } else {
      numberOfFemales = val;
      numberOfFemalesCtrl.text = val;
      numberOfFemalesCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfFemalesCtrl.text.length));
      update();
    }
  }

  void changenumberOfDeaths(String val) {
    if (val == "") {
      numberOfDeaths = "0";
      update();
    } else {
      numberOfDeaths = val;
      numberOfDeathsCtrl.text = val;
      numberOfDeathsCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfDeathsCtrl.text.length));
      update();
    }
  }

  void changenumberOfSuddenDeath(String val) {
    if (val == "") {
      numberOfSuddenDeath = "0";
      update();
    } else {
      numberOfSuddenDeath = val;
      numberOfSuddenDeathCtrl.text = val;
      numberOfSuddenDeathCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfSuddenDeathCtrl.text.length));
      update();
    }
  }

  void changenote(String val) {
    if (val == "") {
      note = "";
      update();
    } else {
      note = val;
      noteCtrl.text = val;
      noteCtrl.selection = TextSelection.fromPosition(
          TextPosition(offset: noteCtrl.text.length));
      update();
    }
  }
  //!==========================================================================

  void changenumberOfAdultsOfCases(String val) {
    if (val == "") {
      numberOfAdultsOfCases = "0";
      update();
    } else {
      numberOfAdultsOfCases = val;
      numberOfAdultsCtrlOfCases.text = val;
      numberOfAdultsCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAdultsCtrlOfCases.text.length));
      update();
    }
  }

  void changenumberOfVirginityOfCases(String val) {
    if (val == "") {
      numberOfVirginityOfCases = "0";
      update();
    } else {
      numberOfVirginityOfCases = val;
      numberOfVirginityCtrlOfCases.text = val;
      numberOfVirginityCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfVirginityCtrlOfCases.text.length));
      update();
    }
  }

  void changenumberOfAgedOfCases(String val) {
    if (val == "") {
      numberOfAgedOfCases = "0";
      update();
    } else {
      numberOfAgedOfCases = val;
      numberOfAgedCtrlOfCases.text = val;
      numberOfAgedCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAgedCtrlOfCases.text.length));
      update();
    }
  }

  void changenumberOfInfantOfCases(String val) {
    if (val == "") {
      numberOfInfantOfCases = "0";
      update();
    } else {
      numberOfInfantOfCases = val;
      numberOfInfantCtrlOfCases.text = val;
      numberOfInfantCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfInfantCtrlOfCases.text.length));
      update();
    }
  }

  void changenumberOfAblactionOfCases(String val) {
    if (val == "") {
      numberOfAblactionOfCases = "0";
      update();
    } else {
      numberOfAblactionOfCases = val;
      numberOfAblactionCtrlOfCases.text = val;
      numberOfAblactionCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfAblactionCtrlOfCases.text.length));
      update();
    }
  }

  void changenumberOfMalesOfCases(String val) {
    if (val == "") {
      numberOfMalesOfCases = "0";
      update();
    } else {
      numberOfMalesOfCases = val;
      numberOfMalesCtrlOfCases.text = val;
      numberOfMalesCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfMalesCtrlOfCases.text.length));
      update();
    }
  }

  void changenumberOfFemalesOfCases(String val) {
    if (val == "") {
      numberOfFemalesOfCases = "0";

      update();
    } else {
      numberOfFemalesOfCases = val;
      numberOfFemalesCtrlOfCases.text = val;
      numberOfFemalesCtrlOfCases.selection = TextSelection.fromPosition(
          TextPosition(offset: numberOfFemalesCtrlOfCases.text.length));
      update();
    }
  }




}
