import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../cow_general_management/controller/cow_send_cow_herd_data_controller.dart';
import '../../cow_general_management/service/cow_send_general_data_service.dart';
import 'cow_animal_bathed_radio_controller.dart';
import 'cow_animal_isolate_radio_controller.dart';
import 'cow_animal_pest_control_radio_controller.dart';
import 'cow_animal_quarantine_radio_controller.dart';
import 'cow_antibiotics_date_controller.dart';
import 'cow_antibiotics_description_controller.dart';
import 'cow_antibiotics_having_controller.dart';
import 'cow_antibiotics_senstivity_radio_controller.dart';
import 'cow_antibiotics_type_controller.dart';
import 'cow_antibiotics_use_radio_controller.dart';
import 'cow_antibiotics_used_radio_controller.dart';
import 'cow_blood_parasites_controller.dart';
import 'cow_chemicals_farm_used_controller.dart';
import 'cow_chemicals_used_controller.dart';
import 'cow_dippers_radio_controller.dart';
import 'cow_farm_pest_control_radio_controller.dart';
import 'cow_feeder_cleaned_radio_controller.dart';
import 'cow_floor_cleaned_radio_controller.dart';
import 'cow_if_udder_washed_controller.dart';
import 'cow_insect_exist_radio_controller.dart';
import 'cow_mastitis_milked_controller.dart';
import 'cow_milk_sample_radio_controller.dart';
import 'cow_milker_cleaned_radio_controller.dart';
import 'cow_milker_exist_radio_controller.dart';
import 'cow_milker_tool_cleaned_radio_controller.dart';
import 'cow_nipple_skin_used_radio_controller.dart';
import 'cow_operational_isolate_place_radio_controller.dart';
import 'cow_operational_sick_isolate_radio_controller.dart';
import 'cow_opertional_textfield_controller.dart';
import 'cow_sanitizers_milker_tool_radio_controller.dart';
import 'cow_sanitizers_used_controller.dart';
import 'cow_sanitizers_used_radio_controller.dart';
import 'cow_sanitiziers_milker_tools_controller.dart';
import 'cow_slaughter_place_radio_controller.dart';
import 'cow_slaughter_radio_controller.dart';
import 'cow_udder_washed_radio_controller.dart';

class CowHealthOpertionalBiosecuritySendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCowHerdDataController sendDataCtrl = Get.put(SendCowHerdDataController());

  CowsickIsolateRadioController sickIsolateRadioController =
      Get.put(CowsickIsolateRadioController());
  CowIsolatePlaceRadioController isolatePlaceRadioController =
      Get.put(CowIsolatePlaceRadioController());
  CowsickAnimalIsolateRadioController sickAnimalIsolateRadioController =
      Get.put(CowsickAnimalIsolateRadioController());
  CowAnimalIsolateQuarantineRadioController
      animalIsolateQuarantineRadioController =
      Get.put(CowAnimalIsolateQuarantineRadioController());
  CowAnimalBathedRadioController animalBathedRadioController =
      Get.put(CowAnimalBathedRadioController());

  CowFloorCleanedRadioController floorCleanedRadioController =
      Get.put(CowFloorCleanedRadioController());
  CowFeederrCleanedRadioController feederrCleanedRadioController =
      Get.put(CowFeederrCleanedRadioController());
  CowSlaughterRadioController slaughterRadioController =
      Get.put(CowSlaughterRadioController());
  CowSlaughterPlacerRadioController slaughterPlacerRadioController =
      Get.put(CowSlaughterPlacerRadioController());

  CowMilkerExistRadioController milkerExistRadioController =
      Get.put(CowMilkerExistRadioController());
  CowMilkerCleanedRadioController milkerCleanedRadioController =
      Get.put(CowMilkerCleanedRadioController());
  CowMilkerToolsCleanedRadioController milkerToolsCleanedRadioController =
      Get.put(CowMilkerToolsCleanedRadioController());

  CowSanitizersUsedRadioController sanitizersUsedRadioController =
      Get.put(CowSanitizersUsedRadioController());
  CowSanitizersMilkerToolsController sanitizersMilkerToolsController =
      Get.put(CowSanitizersMilkerToolsController());
  CowSanitizersUsedController sanitizersUsedController =
      Get.put(CowSanitizersUsedController());
  CowMIlkSampleRadioController milkSampleRadioController =
      Get.put(CowMIlkSampleRadioController());
  CowDipperRadioController dipperRadioController =
      Get.put(CowDipperRadioController());

  CowUdderWashedRadioController udderWashedRadioController =
      Get.put(CowUdderWashedRadioController());

  CowMastitisMilkedController mastitisMilkedController =
      Get.put(CowMastitisMilkedController());
  CowInsectExistRadioController insectExistRadioController =
      Get.put(CowInsectExistRadioController());
  InsectTypeController insectTypeController = Get.put(InsectTypeController());

  CowChemicalsUsedController chemicalsUsedController =
      Get.put(CowChemicalsUsedController());
  CowChemicalsFarmUsedController chemicalsFarmUsedController =
      Get.put(CowChemicalsFarmUsedController());
  CowBloodParasitesController bloodParasitesController =
      Get.put(CowBloodParasitesController());
  CowAntibioticsUsedRadioController antibioticsUsedRadioController =
      Get.put(CowAntibioticsUsedRadioController());

  CowAntibioticsUseRadioController antibioticsUseRadioController =
      Get.put(CowAntibioticsUseRadioController());

  CowAntibioticsTypeController antibioticsTypeController =
      Get.put(CowAntibioticsTypeController());

  CowAntibioticsSenstivityRadioController antibioticsSenstivityRadioController =
      Get.put(CowAntibioticsSenstivityRadioController());
  CowAntibioticsDescriptionController antibioticsDescriptionController =
      Get.put(CowAntibioticsDescriptionController());
  CowWhoWillGiveAntibioticsHavingController antibioticsHavingController =
      Get.put(CowWhoWillGiveAntibioticsHavingController());

  CowAntibioticsDateController antibioticsDateController =
      Get.put(CowAntibioticsDateController());

  CowOPertionalTextFieldController opertionalTextFieldController =
      Get.put(CowOPertionalTextFieldController());

  CowSanitizersMilkerToolsRadioController sanitizersMilkerToolsRadioController =
      Get.put(CowSanitizersMilkerToolsRadioController());
  CowNipplesSkinUsedRadioController nipplesSkinUsedRadioCtrl =
      Get.put(CowNipplesSkinUsedRadioController());
  CowIfUdderWashedController ifUdderWashedCtrl =
      Get.put(CowIfUdderWashedController());
  CowInsectAnimalPestControlRadioController insectAnimalPestControlRadioCtrl =
      Get.put(CowInsectAnimalPestControlRadioController());
  CowInsectFarmPestControlRadioController insectFarmPestControlRadioCtrl =
      Get.put(CowInsectFarmPestControlRadioController());
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
    if (sickIsolateRadioController.charcter == CowsickIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 150, answer: "");
    } else if (sickIsolateRadioController.charcter == CowsickIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 151, answer: "");
    } else if (sickIsolateRadioController.charcter ==
        CowsickIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 358, answer: "");
    }
    //* Radio button
    if (nipplesSkinUsedRadioCtrl.charcter == CowNipplesSkinUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 429, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        CowNipplesSkinUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 430, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        CowNipplesSkinUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 431, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sanitizersMilkerToolsRadioController.charcter ==
        CowSanitizersMilkerToolsRadio.yes) {
      sendDataCtrl.addAnswer(id: 426, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        CowSanitizersMilkerToolsRadio.no) {
      sendDataCtrl.addAnswer(id: 427, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        CowSanitizersMilkerToolsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 428, answer: "");
    }
    //* Radio button
    if (ifUdderWashedCtrl.charcter == CowIfUdderWashed.yes) {
      sendDataCtrl.addAnswer(id: 432, answer: "");
    } else if (ifUdderWashedCtrl.charcter == CowIfUdderWashed.no) {
      sendDataCtrl.addAnswer(id: 433, answer: "");
    } else if (ifUdderWashedCtrl.charcter == CowIfUdderWashed.noAnswer) {
      sendDataCtrl.addAnswer(id: 434, answer: "");
    }
    //* Radio button
    if (insectAnimalPestControlRadioCtrl.charcter ==
        CowInsectAnimalPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 435, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        CowInsectAnimalPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 436, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        CowInsectAnimalPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 437, answer: "");
    }
    //* Radio button
    if (insectFarmPestControlRadioCtrl.charcter ==
        CowInsectFarmPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 444, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        CowInsectFarmPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 445, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        CowInsectFarmPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 446, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (isolatePlaceRadioController.charcter == CowIsolatePlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 152, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        CowIsolatePlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 153, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        CowIsolatePlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 359, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sickAnimalIsolateRadioController.charcter ==
        CowsickAnimalIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 154, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        CowsickAnimalIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 155, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        CowsickAnimalIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 360, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalIsolateQuarantineRadioController.charcter ==
        CowAnimalIsolateQuarantineRadio.yes) {
      sendDataCtrl.addAnswer(id: 156, answer: "");
    } else if (animalIsolateQuarantineRadioController.charcter ==
        CowAnimalIsolateQuarantineRadio.no) {
      sendDataCtrl.addAnswer(id: 157, answer: "");
    }
    if (animalIsolateQuarantineRadioController.charcter ==
        CowAnimalIsolateQuarantineRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 361, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalBathedRadioController.charcter == CowAnimalBathedRadio.yes) {
      sendDataCtrl.addAnswer(id: 158, answer: "");
    } else if (animalBathedRadioController.charcter ==
        CowAnimalBathedRadio.no) {
      sendDataCtrl.addAnswer(id: 159, answer: "");
    } else if (animalBathedRadioController.charcter ==
        CowAnimalBathedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 362, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (floorCleanedRadioController.charcter == CowFloorCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 161, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        CowFloorCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 162, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        CowFloorCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 363, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feederrCleanedRadioController.charcter == CowFeederrCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 164, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        CowFeederrCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 165, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        CowFeederrCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 364, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterRadioController.charcter == CowSlaughterRadio.yes) {
      sendDataCtrl.addAnswer(id: 169, answer: "");
    } else if (slaughterRadioController.charcter == CowSlaughterRadio.no) {
      sendDataCtrl.addAnswer(id: 170, answer: "");
    } else if (slaughterRadioController.charcter ==
        CowSlaughterRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 366, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterPlacerRadioController.charcter ==
        CowSlaughterPlacerRadio.yes) {
      sendDataCtrl.addAnswer(id: 171, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        CowSlaughterPlacerRadio.no) {
      sendDataCtrl.addAnswer(id: 172, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        CowSlaughterPlacerRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 367, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerExistRadioController.charcter == CowMilkerExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 173, answer: "");
    } else if (milkerExistRadioController.charcter == CowMilkerExistRadio.no) {
      sendDataCtrl.addAnswer(id: 174, answer: "");
    } else if (milkerExistRadioController.charcter ==
        CowMilkerExistRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 368, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerCleanedRadioController.charcter == CowMilkerCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 175, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        CowMilkerCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 176, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        CowMilkerCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 369, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerToolsCleanedRadioController.charcter ==
        CowMilkerToolsCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 178, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        CowMilkerToolsCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 179, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        CowMilkerToolsCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 370, answer: "");
    }
    //!!!*******************************************************
    //!!!*******************************************************
    //* Radio button

    if (sanitizersUsedRadioController.charcter == CowSanitizersUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 423, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        CowSanitizersUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 424, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        CowSanitizersUsedRadio.noAnswer) {
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
    if (milkSampleRadioController.charcter == CowMIlkSampleRadio.yes) {
      sendDataCtrl.addAnswer(id: 189, answer: "");
    } else if (milkSampleRadioController.charcter == CowMIlkSampleRadio.no) {
      sendDataCtrl.addAnswer(id: 190, answer: "");
    } else if (milkSampleRadioController.charcter ==
        CowMIlkSampleRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 373, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (dipperRadioController.charcter == CowDipperRadio.after) {
      sendDataCtrl.addAnswer(id: 191, answer: "");
    } else if (dipperRadioController.charcter == CowDipperRadio.before) {
      sendDataCtrl.addAnswer(id: 192, answer: "");
    } else if (dipperRadioController.charcter == CowDipperRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 374, answer: "");
    }
//!--------------------------
    //* Radio button
    if (udderWashedRadioController.charcter == CowUdderWashedRadio.after) {
      sendDataCtrl.addAnswer(id: 193, answer: "");
    } else if (udderWashedRadioController.charcter ==
        CowUdderWashedRadio.before) {
      sendDataCtrl.addAnswer(id: 194, answer: "");
    } else if (udderWashedRadioController.charcter ==
        CowUdderWashedRadio.noAnswer) {
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
    if (insectExistRadioController.charcter == CowInsectExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 198, answer: "");
    } else if (insectExistRadioController.charcter == CowInsectExistRadio.no) {
      sendDataCtrl.addAnswer(id: 199, answer: "");
    } else if (insectExistRadioController.charcter ==
        CowInsectExistRadio.noAnswer) {
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
        CowAntibioticsUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 214, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        CowAntibioticsUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 215, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        CowAntibioticsUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 382, answer: "");
    }
//!--------------------------
    //* Radio button
    if (antibioticsUseRadioController.charcter ==
        CowAntibioticsUseRadio.protection) {
      sendDataCtrl.addAnswer(id: 216, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        CowAntibioticsUseRadio.treatment) {
      sendDataCtrl.addAnswer(id: 217, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        CowAntibioticsUseRadio.noAnswer) {
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
        CowAntibioticsSenstivityRadio.yes) {
      sendDataCtrl.addAnswer(id: 298, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        CowAntibioticsSenstivityRadio.no) {
      sendDataCtrl.addAnswer(id: 299, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        CowAntibioticsSenstivityRadio.noAnswer) {
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
    var res = await SendCowGeneralDataService.sendCowGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCowStatusValue(7);

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
        "there are problem ,can't send data.",
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
