import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../camel_farm/camel_health_practices_operational_biosecurity/controller/camel_antibiotics_date_controller.dart';
import '../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../goat_general_management/controller/goat_send_camel_herd_data_controller.dart';
import '../../goat_general_management/service/goat_send_general_data_service.dart';
import 'goat_animal_bathed_radio_controller.dart';
import 'goat_animal_isolate_radio_controller.dart';
import 'goat_animal_pest_control_radio_controller.dart';
import 'goat_animal_quarantine_radio_controller.dart';
import 'goat_antibiotics_description_controller.dart';
import 'goat_antibiotics_having_controller.dart';
import 'goat_antibiotics_senstivity_radio_controller.dart';
import 'goat_antibiotics_type_controller.dart';
import 'goat_antibiotics_use_radio_controller.dart';
import 'goat_antibiotics_used_radio_controller.dart';
import 'goat_blood_parasites_controller.dart';
import 'goat_chemicals_farm_used_controller.dart';
import 'goat_chemicals_used_controller.dart';
import 'goat_dippers_radio_controller.dart';
import 'goat_farm_pest_control_radio_controller.dart';
import 'goat_feeder_cleaned_radio_controller.dart';
import 'goat_floor_cleaned_radio_controller.dart';
import 'goat_if_udder_washed_controller.dart';
import 'goat_insect_exist_radio_controller.dart';
import 'goat_mastitis_milked_controller.dart';
import 'goat_milk_sample_radio_controller.dart';
import 'goat_milker_cleaned_radio_controller.dart';
import 'goat_milker_exist_radio_controller.dart';
import 'goat_milker_tool_cleaned_radio_controller.dart';
import 'goat_nipple_skin_used_radio_controller.dart';
import 'goat_operational_isolate_place_radio_controller.dart';
import 'goat_operational_sick_isolate_radio_controller.dart';
import 'goat_opertional_textfield_controller.dart';
import 'goat_sanitizers_milker_tool_radio_controller.dart';
import 'goat_sanitizers_used_controller.dart';
import 'goat_sanitizers_used_radio_controller.dart';
import 'goat_sanitiziers_milker_tools_controller.dart';
import 'goat_slaughter_place_radio_controller.dart';
import 'goat_slaughter_radio_controller.dart';
import 'goat_udder_washed_radio_controller.dart';

class GoatHealthOpertionalBiosecuritySendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendGoatHerdDataController sendDataCtrl =
      Get.put(SendGoatHerdDataController());

  GoatsickIsolateRadioController sickIsolateRadioController =
      Get.put(GoatsickIsolateRadioController());
  GoatIsolatePlaceRadioController isolatePlaceRadioController =
      Get.put(GoatIsolatePlaceRadioController());
  GoatsickAnimalIsolateRadioController sickAnimalIsolateRadioController =
      Get.put(GoatsickAnimalIsolateRadioController());
  GoatAnimalIsolateQuarantineRadioController
      animalIsolateQuarantineRadioController =
      Get.put(GoatAnimalIsolateQuarantineRadioController());
  GoatAnimalBathedRadioController animalBathedRadioController =
      Get.put(GoatAnimalBathedRadioController());

  GoatFloorCleanedRadioController floorCleanedRadioController =
      Get.put(GoatFloorCleanedRadioController());
  GoatFeederrCleanedRadioController feederrCleanedRadioController =
      Get.put(GoatFeederrCleanedRadioController());
  GoatSlaughterRadioController slaughterRadioController =
      Get.put(GoatSlaughterRadioController());
  GoatSlaughterPlacerRadioController slaughterPlacerRadioController =
      Get.put(GoatSlaughterPlacerRadioController());

  GoatMilkerExistRadioController milkerExistRadioController =
      Get.put(GoatMilkerExistRadioController());
  GoatMilkerCleanedRadioController milkerCleanedRadioController =
      Get.put(GoatMilkerCleanedRadioController());
  GoatMilkerToolsCleanedRadioController milkerToolsCleanedRadioController =
      Get.put(GoatMilkerToolsCleanedRadioController());

  GoatSanitizersUsedRadioController sanitizersUsedRadioController =
      Get.put(GoatSanitizersUsedRadioController());
  GoatSanitizersMilkerToolsController sanitizersMilkerToolsController =
      Get.put(GoatSanitizersMilkerToolsController());
  GoatSanitizersUsedController sanitizersUsedController =
      Get.put(GoatSanitizersUsedController());
  GoatMIlkSampleRadioController milkSampleRadioController =
      Get.put(GoatMIlkSampleRadioController());
  GoatDipperRadioController dipperRadioController =
      Get.put(GoatDipperRadioController());

  GoatUdderWashedRadioController udderWashedRadioController =
      Get.put(GoatUdderWashedRadioController());

  GoatMastitisMilkedController mastitisMilkedController =
      Get.put(GoatMastitisMilkedController());
  GoatInsectExistRadioController insectExistRadioController =
      Get.put(GoatInsectExistRadioController());
  InsectTypeController insectTypeController = Get.put(InsectTypeController());

  GoatChemicalsUsedController chemicalsUsedController =
      Get.put(GoatChemicalsUsedController());
  GoatChemicalsFarmUsedController chemicalsFarmUsedController =
      Get.put(GoatChemicalsFarmUsedController());
  GoatBloodParasitesController bloodParasitesController =
      Get.put(GoatBloodParasitesController());
  GoatAntibioticsUsedRadioController antibioticsUsedRadioController =
      Get.put(GoatAntibioticsUsedRadioController());

  GoatAntibioticsUseRadioController antibioticsUseRadioController =
      Get.put(GoatAntibioticsUseRadioController());

  GoatAntibioticsTypeController antibioticsTypeController =
      Get.put(GoatAntibioticsTypeController());

  GoatAntibioticsSenstivityRadioController
      antibioticsSenstivityRadioController =
      Get.put(GoatAntibioticsSenstivityRadioController());
  GoatAntibioticsDescriptionController antibioticsDescriptionController =
      Get.put(GoatAntibioticsDescriptionController());
  GoatWhoWillGiveAntibioticsHavingController antibioticsHavingController =
      Get.put(GoatWhoWillGiveAntibioticsHavingController());

  AntibioticsDateController antibioticsDateController =
      Get.put(AntibioticsDateController());

  GoatOpertionalTextFieldController opertionalTextFieldController =
      Get.put(GoatOpertionalTextFieldController());
  GoatSanitizersMilkerToolsRadioController
      sanitizersMilkerToolsRadioController =
      Get.put(GoatSanitizersMilkerToolsRadioController());
  GoatNipplesSkinUsedRadioController nipplesSkinUsedRadioCtrl =
      Get.put(GoatNipplesSkinUsedRadioController());

  GoatIfUdderWashedController ifUdderWashedCtrl =
      Get.put(GoatIfUdderWashedController());
  GoatInsectAnimalPestControlRadioController insectAnimalPestControlRadioCtrl =
      Get.put(GoatInsectAnimalPestControlRadioController());
  GoatInsectFarmPestControlRadioController insectFarmPestControlRadioCtrl =
      Get.put(GoatInsectFarmPestControlRadioController());

  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(
        id: 160, answer: opertionalTextFieldController.bathedNo);
    sendDataCtrl.addAnswer(
        id: 163, answer: opertionalTextFieldController.floorCleanNo);
    sendDataCtrl.addAnswer(
        id: 166, answer: opertionalTextFieldController.watererCleanNo);
    sendDataCtrl.addAnswer(
        id: 167, answer: opertionalTextFieldController.farmWaste);
    sendDataCtrl.addAnswer(
        id: 168, answer: opertionalTextFieldController.deadAnimal);
    sendDataCtrl.addAnswer(
        id: 177, answer: opertionalTextFieldController.milkerCleanNo);
    sendDataCtrl.addAnswer(
        id: 180, answer: opertionalTextFieldController.milkerToolsCleanNo);
    sendDataCtrl.addAnswer(
        id: 200, answer: opertionalTextFieldController.animalInfected);
    sendDataCtrl.addAnswer(
        id: 297, answer: opertionalTextFieldController.antibioticGiven);
    //!--------------------------
    //* Radio button
    if (sickIsolateRadioController.charcter == GoatsickIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 150, answer: "");
    } else if (sickIsolateRadioController.charcter == GoatsickIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 151, answer: "");
    } else if (sickIsolateRadioController.charcter ==
        GoatsickIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 358, answer: "");
    }

    //* Radio button
    if (nipplesSkinUsedRadioCtrl.charcter == GoatNipplesSkinUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 429, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        GoatNipplesSkinUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 430, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        GoatNipplesSkinUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 431, answer: "");
    }
    //* Radio button
    if (ifUdderWashedCtrl.charcter == GoatIfUdderWashed.yes) {
      sendDataCtrl.addAnswer(id: 432, answer: "");
    } else if (ifUdderWashedCtrl.charcter == GoatIfUdderWashed.no) {
      sendDataCtrl.addAnswer(id: 433, answer: "");
    } else if (ifUdderWashedCtrl.charcter == GoatIfUdderWashed.noAnswer) {
      sendDataCtrl.addAnswer(id: 434, answer: "");
    }
    //* Radio button
    if (insectAnimalPestControlRadioCtrl.charcter ==
        GoatInsectAnimalPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 435, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        GoatInsectAnimalPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 436, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        GoatInsectAnimalPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 437, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (sanitizersMilkerToolsRadioController.charcter ==
        GoatSanitizersMilkerToolsRadio.yes) {
      sendDataCtrl.addAnswer(id: 426, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        GoatSanitizersMilkerToolsRadio.no) {
      sendDataCtrl.addAnswer(id: 427, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        GoatSanitizersMilkerToolsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 428, answer: "");
    }

    //* Radio button
    if (insectFarmPestControlRadioCtrl.charcter ==
        GoatInsectFarmPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 444, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        GoatInsectFarmPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 445, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        GoatInsectFarmPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 446, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (isolatePlaceRadioController.charcter == GoatIsolatePlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 152, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        GoatIsolatePlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 153, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        GoatIsolatePlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 359, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sickAnimalIsolateRadioController.charcter ==
        GoatsickAnimalIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 154, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        GoatsickAnimalIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 155, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        GoatsickAnimalIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 360, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalIsolateQuarantineRadioController.charcter ==
        GoatAnimalIsolateQuarantineRadio.yes) {
      sendDataCtrl.addAnswer(id: 156, answer: "");
    } else if (animalIsolateQuarantineRadioController.charcter ==
        GoatAnimalIsolateQuarantineRadio.no) {
      sendDataCtrl.addAnswer(id: 157, answer: "");
    }
    if (animalIsolateQuarantineRadioController.charcter ==
        GoatAnimalIsolateQuarantineRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 361, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalBathedRadioController.charcter == GoatAnimalBathedRadio.yes) {
      sendDataCtrl.addAnswer(id: 158, answer: "");
    } else if (animalBathedRadioController.charcter ==
        GoatAnimalBathedRadio.no) {
      sendDataCtrl.addAnswer(id: 159, answer: "");
    } else if (animalBathedRadioController.charcter ==
        GoatAnimalBathedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 362, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (floorCleanedRadioController.charcter == GoatFloorCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 161, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        GoatFloorCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 162, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        GoatFloorCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 363, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feederrCleanedRadioController.charcter == GoatFeederrCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 164, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        GoatFeederrCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 165, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        GoatFeederrCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 364, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterRadioController.charcter == GoatSlaughterRadio.yes) {
      sendDataCtrl.addAnswer(id: 169, answer: "");
    } else if (slaughterRadioController.charcter == GoatSlaughterRadio.no) {
      sendDataCtrl.addAnswer(id: 170, answer: "");
    } else if (slaughterRadioController.charcter ==
        GoatSlaughterRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 366, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterPlacerRadioController.charcter ==
        GoatSlaughterPlacerRadio.yes) {
      sendDataCtrl.addAnswer(id: 171, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        GoatSlaughterPlacerRadio.no) {
      sendDataCtrl.addAnswer(id: 172, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        GoatSlaughterPlacerRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 367, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerExistRadioController.charcter == GoatMilkerExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 173, answer: "");
    } else if (milkerExistRadioController.charcter == GoatMilkerExistRadio.no) {
      sendDataCtrl.addAnswer(id: 174, answer: "");
    } else if (milkerExistRadioController.charcter ==
        GoatMilkerExistRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 368, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerCleanedRadioController.charcter == GoatMilkerCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 175, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        GoatMilkerCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 176, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        GoatMilkerCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 369, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerToolsCleanedRadioController.charcter ==
        GoatMilkerToolsCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 178, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        GoatMilkerToolsCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 179, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        GoatMilkerToolsCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 370, answer: "");
    }
    //!!!*******************************************************
    //!!!*******************************************************
    //* Radio button

    if (sanitizersUsedRadioController.charcter == GoatSanitizersUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 423, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        GoatSanitizersUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 424, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        GoatSanitizersUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 425, answer: "");
    }

    //!!!*******************************************************
    //!!!*******************************************************
    //!--------------------------
    //* dropdown
    if (sanitizersUsedController.sanitizersUsedId.value == 1) {
      sendDataCtrl.addAnswer(id: 183, answer: "");
    }
    if (sanitizersUsedController.sanitizersUsedId.value == 2) {
      sendDataCtrl.addAnswer(id: 184, answer: "");
    }
    if (sanitizersUsedController.sanitizersUsedId.value == 3) {
      sendDataCtrl.addAnswer(id: 185, answer: "");
    }
    if (sanitizersUsedController.sanitizersUsedText.value ==
        'What type of sanitizers used?') {
      sendDataCtrl.addAnswer(id: 371, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (sanitizersMilkerToolsController.sanitizersMilkerToolsId.value == 1) {
      sendDataCtrl.addAnswer(id: 186, answer: "");
    }
    if (sanitizersMilkerToolsController.sanitizersMilkerToolsId.value == 2) {
      sendDataCtrl.addAnswer(id: 187, answer: "");
    }
    if (sanitizersMilkerToolsController.sanitizersMilkerToolsId.value == 3) {
      sendDataCtrl.addAnswer(id: 188, answer: "");
    }
    if (sanitizersMilkerToolsController.sanitizersMilkerToolsText.value ==
        'What type of sanitizers used to Milker Tools?') {
      sendDataCtrl.addAnswer(id: 372, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkSampleRadioController.charcter == GoatMIlkSampleRadio.yes) {
      sendDataCtrl.addAnswer(id: 189, answer: "");
    } else if (milkSampleRadioController.charcter == GoatMIlkSampleRadio.no) {
      sendDataCtrl.addAnswer(id: 190, answer: "");
    } else if (milkSampleRadioController.charcter ==
        GoatMIlkSampleRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 373, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (dipperRadioController.charcter == GoatDipperRadio.after) {
      sendDataCtrl.addAnswer(id: 191, answer: "");
    } else if (dipperRadioController.charcter == GoatDipperRadio.before) {
      sendDataCtrl.addAnswer(id: 192, answer: "");
    } else if (dipperRadioController.charcter == GoatDipperRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 374, answer: "");
    }
//!--------------------------
    //* Radio button
    if (udderWashedRadioController.charcter == GoatUdderWashedRadio.after) {
      sendDataCtrl.addAnswer(id: 193, answer: "");
    } else if (udderWashedRadioController.charcter ==
        GoatUdderWashedRadio.before) {
      sendDataCtrl.addAnswer(id: 194, answer: "");
    } else if (udderWashedRadioController.charcter ==
        GoatUdderWashedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 375, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (mastitisMilkedController.mastitisMilkedId.value == 1) {
      sendDataCtrl.addAnswer(id: 195, answer: "");
    }
    if (mastitisMilkedController.mastitisMilkedId.value == 2) {
      sendDataCtrl.addAnswer(id: 196, answer: "");
    }
    if (mastitisMilkedController.mastitisMilkedId.value == 3) {
      sendDataCtrl.addAnswer(id: 197, answer: "");
    }
    if (mastitisMilkedController.mastitisMilkedText.value ==
        'When should animals with mastitis be milked?') {
      sendDataCtrl.addAnswer(id: 376, answer: "");
    }
//!--------------------------
    //* Radio button
    if (insectExistRadioController.charcter == GoatInsectExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 198, answer: "");
    } else if (insectExistRadioController.charcter == GoatInsectExistRadio.no) {
      sendDataCtrl.addAnswer(id: 199, answer: "");
    } else if (insectExistRadioController.charcter ==
        GoatInsectExistRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 377, answer: "");
    }

    //!--------------------------
    //*check box
    if (insectTypeController.tick == true) {
      sendDataCtrl.addAnswer(id: 201, answer: "");
    }
    if (insectTypeController.flea == true) {
      sendDataCtrl.addAnswer(id: 202, answer: "");
    }
    if (insectTypeController.mosquito == true) {
      sendDataCtrl.addAnswer(id: 203, answer: "");
    }
    if (insectTypeController.hamosh == true) {
      sendDataCtrl.addAnswer(id: 204, answer: "");
    }
    if (insectTypeController.tick == false &&
        insectTypeController.flea == false &&
        insectTypeController.mosquito == false &&
        insectTypeController.hamosh == false) {
      sendDataCtrl.addAnswer(id: 378, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (chemicalsUsedController.chemicalsUsedId.value == 1) {
      sendDataCtrl.addAnswer(id: 205, answer: "");
    }
    if (chemicalsUsedController.chemicalsUsedId.value == 2) {
      sendDataCtrl.addAnswer(id: 206, answer: "");
    }
    if (chemicalsUsedController.chemicalsUsedId.value == 3) {
      sendDataCtrl.addAnswer(id: 207, answer: "");
    }
    if (chemicalsUsedController.chemicalsUsedText.value ==
        'Select the chemicals used') {
      sendDataCtrl.addAnswer(id: 379, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (chemicalsFarmUsedController.chemicalsFarmUsedId.value == 1) {
      sendDataCtrl.addAnswer(id: 208, answer: "");
    }
    if (chemicalsFarmUsedController.chemicalsFarmUsedId.value == 2) {
      sendDataCtrl.addAnswer(id: 209, answer: "");
    }
    if (chemicalsFarmUsedController.chemicalsFarmUsedId.value == 3) {
      sendDataCtrl.addAnswer(id: 210, answer: "");
    }
    if (chemicalsFarmUsedController.chemicalsFarmUsedText.value ==
        'chemicals used for farm') {
      sendDataCtrl.addAnswer(id: 380, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (bloodParasitesController.bloodParasitesId.value == 1) {
      sendDataCtrl.addAnswer(id: 211, answer: "");
    }
    if (bloodParasitesController.bloodParasitesId.value == 2) {
      sendDataCtrl.addAnswer(id: 212, answer: "");
    }
    if (bloodParasitesController.bloodParasitesId.value == 3) {
      sendDataCtrl.addAnswer(id: 213, answer: "");
    }
    if (bloodParasitesController.bloodParasitesText.value ==
        'medicines used to prevent blood parasites') {
      sendDataCtrl.addAnswer(id: 381, answer: "");
    }

//!--------------------------
    //* Radio button
    if (antibioticsUsedRadioController.charcter ==
        GoatAntibioticsUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 214, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        GoatAntibioticsUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 215, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        GoatAntibioticsUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 382, answer: "");
    }
//!--------------------------
    //* Radio button
    if (antibioticsUseRadioController.charcter ==
        GoatAntibioticsUseRadio.protection) {
      sendDataCtrl.addAnswer(id: 216, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        GoatAntibioticsUseRadio.treatment) {
      sendDataCtrl.addAnswer(id: 217, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        GoatAntibioticsUseRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 383, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (antibioticsTypeController.antibioticsTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 294, answer: "");
    }
    if (antibioticsTypeController.antibioticsTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 295, answer: "");
    }
    if (antibioticsTypeController.antibioticsTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 296, answer: "");
    }
    if (antibioticsTypeController.antibioticsTypeText.value ==
        'What type of antibiotics used?') {
      sendDataCtrl.addAnswer(id: 384, answer: "");
    }
//!--------------------------
    //* Radio button
    if (antibioticsSenstivityRadioController.charcter ==
        GoatAntibioticsSenstivityRadio.yes) {
      sendDataCtrl.addAnswer(id: 298, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        GoatAntibioticsSenstivityRadio.no) {
      sendDataCtrl.addAnswer(id: 299, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        GoatAntibioticsSenstivityRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 402, answer: "");
    }
//!--------------------------
    //* dropdown
    if (antibioticsDescriptionController.antibioticsDescriptionId.value == 1) {
      sendDataCtrl.addAnswer(id: 300, answer: "");
    }
    if (antibioticsDescriptionController.antibioticsDescriptionId.value == 2) {
      sendDataCtrl.addAnswer(id: 301, answer: "");
    }
    if (antibioticsDescriptionController.antibioticsDescriptionId.value == 3) {
      sendDataCtrl.addAnswer(id: 302, answer: "");
    }
    if (antibioticsDescriptionController.antibioticsDescriptionId.value == 4) {
      sendDataCtrl.addAnswer(id: 303, answer: "");
    }
    if (antibioticsDescriptionController.antibioticsDescriptionText.value ==
        'Who prescribes the antibiotic?') {
      sendDataCtrl.addAnswer(id: 403, answer: "");
    }

//!--------------------------
    //* dropdown
    if (antibioticsHavingController.antibioticsHavingId.value == 1) {
      sendDataCtrl.addAnswer(id: 304, answer: "");
    }
    if (antibioticsHavingController.antibioticsHavingId.value == 2) {
      sendDataCtrl.addAnswer(id: 305, answer: "");
    }
    if (antibioticsHavingController.antibioticsHavingId.value == 3) {
      sendDataCtrl.addAnswer(id: 306, answer: "");
    }
    if (antibioticsHavingController.antibioticsHavingId.value == 4) {
      sendDataCtrl.addAnswer(id: 307, answer: "");
    }
    if (antibioticsHavingController.antibioticsHavingText.value ==
        'Who gives antibiotics to animals?') {
      sendDataCtrl.addAnswer(id: 404, answer: "");
    }

    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 308,
        answer: antibioticsDateController.date.year == DateTime.now().year &&
                antibioticsDateController.date.month == DateTime.now().month &&
                antibioticsDateController.date.day == DateTime.now().day
            ? ""
            : "${antibioticsDateController.date.year}-${antibioticsDateController.date.month}-${antibioticsDateController.date.day} ");
  }

  void sendData(BuildContext context) async {
    var res = await SendGoatGeneralDataService.sendGoatGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setGoatStatusValue(7);

      Get.offAll(() => AllSectionScreen(
            animalId: SharedPreferencesHelper.getAnimalTypeValue(),
          ));
    } else if (res == 401) {
      sendDataCtrl.answers.clear();
      Get.offAll(() => const LoginScreen());
    } else if (res == 500 || res == 400) {
      sendDataCtrl.answers.clear();
      Get.snackbar(
        'Error',
        'Server Error ',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    } else if (res.runtimeType == String) {
      sendDataCtrl.answers.clear();
      Get.snackbar(
        'Error',
        "there are problem ,can't send data.",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      );
    }
  }
}
