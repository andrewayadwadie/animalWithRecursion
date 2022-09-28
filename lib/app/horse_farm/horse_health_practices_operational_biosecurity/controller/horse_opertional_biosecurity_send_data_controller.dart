import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../camel_farm/camel_health_practices_operational_biosecurity/controller/camel_antibiotics_date_controller.dart';
import '../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../horse_general_management/service/horse_send_general_data_service.dart';
import 'horse_animal_bathed_radio_controller.dart';
import 'horse_animal_isolate_radio_controller.dart';
import 'horse_animal_pest_control_radio_controller.dart';
import 'horse_animal_quarantine_radio_controller.dart';
import 'horse_antibiotics_description_controller.dart';
import 'horse_antibiotics_having_controller.dart';
import 'horse_antibiotics_senstivity_radio_controller.dart';
import 'horse_antibiotics_type_controller.dart';
import 'horse_antibiotics_use_radio_controller.dart';
import 'horse_antibiotics_used_radio_controller.dart';
import 'horse_blood_parasites_controller.dart';
import 'horse_chemicals_farm_used_controller.dart';
import 'horse_chemicals_used_controller.dart';
import 'horse_dippers_radio_controller.dart';
import 'horse_farm_pest_control_radio_controller.dart';
import 'horse_feeder_cleaned_radio_controller.dart';
import 'horse_floor_cleaned_radio_controller.dart';
import 'horse_if_udder_washed_controller.dart';
import 'horse_insect_exist_radio_controller.dart';
import 'horse_mastitis_milked_controller.dart';
import 'horse_milk_sample_radio_controller.dart';
import 'horse_milker_cleaned_radio_controller.dart';
import 'horse_milker_exist_radio_controller.dart';
import 'horse_milker_tool_cleaned_radio_controller.dart';
import 'horse_nipple_skin_used_radio_controller.dart';
import 'horse_operational_isolate_place_radio_controller.dart';
import 'horse_operational_sick_isolate_radio_controller.dart';
import 'horse_opertional_textfield_controller.dart';
import 'horse_sanitizers_milker_tool_radio_controller.dart';
import 'horse_sanitizers_used_controller.dart';
import 'horse_sanitizers_used_radio_controller.dart';
import 'horse_sanitiziers_milker_tools_controller.dart';
import 'horse_slaughter_place_radio_controller.dart';
import 'horse_slaughter_radio_controller.dart';
import 'horse_udder_washed_radio_controller.dart';

class HorseHealthOpertionalBiosecuritySendDataController
    extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());

  HorsesickIsolateRadioController sickIsolateRadioController =
      Get.put(HorsesickIsolateRadioController());
  HorseIsolatePlaceRadioController isolatePlaceRadioController =
      Get.put(HorseIsolatePlaceRadioController());
  HorsesickAnimalIsolateRadioController sickAnimalIsolateRadioController =
      Get.put(HorsesickAnimalIsolateRadioController());
  HorseAnimalIsolateQuarantineRadioController
      animalIsolateQuarantineRadioController =
      Get.put(HorseAnimalIsolateQuarantineRadioController());
  HorseAnimalBathedRadioController animalBathedRadioController =
      Get.put(HorseAnimalBathedRadioController());

  HorseFloorCleanedRadioController floorCleanedRadioController =
      Get.put(HorseFloorCleanedRadioController());
  HorseFeederrCleanedRadioController feederrCleanedRadioController =
      Get.put(HorseFeederrCleanedRadioController());
  HorseSlaughterRadioController slaughterRadioController =
      Get.put(HorseSlaughterRadioController());
  HorseSlaughterPlacerRadioController slaughterPlacerRadioController =
      Get.put(HorseSlaughterPlacerRadioController());

  HorseMilkerExistRadioController milkerExistRadioController =
      Get.put(HorseMilkerExistRadioController());
  HorseMilkerCleanedRadioController milkerCleanedRadioController =
      Get.put(HorseMilkerCleanedRadioController());
  HorseMilkerToolsCleanedRadioController milkerToolsCleanedRadioController =
      Get.put(HorseMilkerToolsCleanedRadioController());

  HorseSanitizersUsedRadioController sanitizersUsedRadioController =
      Get.put(HorseSanitizersUsedRadioController());
  HorseSanitizersMilkerToolsController sanitizersMilkerToolsController =
      Get.put(HorseSanitizersMilkerToolsController());
  HorseSanitizersUsedController sanitizersUsedController =
      Get.put(HorseSanitizersUsedController());
  HorseMIlkSampleRadioController milkSampleRadioController =
      Get.put(HorseMIlkSampleRadioController());
  HorseDipperRadioController dipperRadioController =
      Get.put(HorseDipperRadioController());

  HorseUdderWashedRadioController udderWashedRadioController =
      Get.put(HorseUdderWashedRadioController());

  HorseMastitisMilkedController mastitisMilkedController =
      Get.put(HorseMastitisMilkedController());
  HorseInsectExistRadioController insectExistRadioController =
      Get.put(HorseInsectExistRadioController());
  InsectTypeController insectTypeController = Get.put(InsectTypeController());

  HorseChemicalsUsedController chemicalsUsedController =
      Get.put(HorseChemicalsUsedController());
  HorseChemicalsFarmUsedController chemicalsFarmUsedController =
      Get.put(HorseChemicalsFarmUsedController());
  HorseBloodParasitesController bloodParasitesController =
      Get.put(HorseBloodParasitesController());
  HorseAntibioticsUsedRadioController antibioticsUsedRadioController =
      Get.put(HorseAntibioticsUsedRadioController());

  HorseAntibioticsUseRadioController antibioticsUseRadioController =
      Get.put(HorseAntibioticsUseRadioController());

  HorseAntibioticsTypeController antibioticsTypeController =
      Get.put(HorseAntibioticsTypeController());

  HorseAntibioticsSenstivityRadioController
      antibioticsSenstivityRadioController =
      Get.put(HorseAntibioticsSenstivityRadioController());
  HorseAntibioticsDescriptionController antibioticsDescriptionController =
      Get.put(HorseAntibioticsDescriptionController());
  HorseWhoWillGiveAntibioticsHavingController antibioticsHavingController =
      Get.put(HorseWhoWillGiveAntibioticsHavingController());

  AntibioticsDateController antibioticsDateController =
      Get.put(AntibioticsDateController());

  HorseOertionalTextFieldController opertionalTextFieldController =
      Get.put(HorseOertionalTextFieldController());
  HorseSanitizersMilkerToolsRadioController
      sanitizersMilkerToolsRadioController =
      Get.put(HorseSanitizersMilkerToolsRadioController());
  HorseNipplesSkinUsedRadioController nipplesSkinUsedRadioCtrl =
      Get.put(HorseNipplesSkinUsedRadioController());
  HorseIfUdderWashedController ifUdderWashedCtrl =
      Get.put(HorseIfUdderWashedController());
  HorseInsectAnimalPestControlRadioController insectAnimalPestControlRadioCtrl =
      Get.put(HorseInsectAnimalPestControlRadioController());
  HorseInsectFarmPestControlRadioController insectFarmPestControlRadioCtrl =
      Get.put(HorseInsectFarmPestControlRadioController());
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
    if (sickIsolateRadioController.charcter == HorsesickIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 150, answer: "");
    } else if (sickIsolateRadioController.charcter ==
        HorsesickIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 151, answer: "");
    } else if (sickIsolateRadioController.charcter ==
        HorsesickIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 358, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sanitizersMilkerToolsRadioController.charcter ==
        HorseSanitizersMilkerToolsRadio.yes) {
      sendDataCtrl.addAnswer(id: 426, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        HorseSanitizersMilkerToolsRadio.no) {
      sendDataCtrl.addAnswer(id: 427, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        HorseSanitizersMilkerToolsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 428, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (isolatePlaceRadioController.charcter == HorseIsolatePlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 152, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        HorseIsolatePlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 153, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        HorseIsolatePlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 359, answer: "");
    }
    //* Radio button
    if (nipplesSkinUsedRadioCtrl.charcter == HorseNipplesSkinUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 429, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        HorseNipplesSkinUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 430, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        HorseNipplesSkinUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 431, answer: "");
    }
    //* Radio button
    if (insectAnimalPestControlRadioCtrl.charcter ==
        HorseInsectAnimalPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 435, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        HorseInsectAnimalPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 436, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        HorseInsectAnimalPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 437, answer: "");
    }

    //* Radio button
    if (ifUdderWashedCtrl.charcter == HorseIfUdderWashed.yes) {
      sendDataCtrl.addAnswer(id: 432, answer: "");
    } else if (ifUdderWashedCtrl.charcter == HorseIfUdderWashed.no) {
      sendDataCtrl.addAnswer(id: 433, answer: "");
    } else if (ifUdderWashedCtrl.charcter == HorseIfUdderWashed.noAnswer) {
      sendDataCtrl.addAnswer(id: 434, answer: "");
    }
    //* Radio button
    if (insectFarmPestControlRadioCtrl.charcter ==
        HorseInsectFarmPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 444, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        HorseInsectFarmPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 445, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        HorseInsectFarmPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 446, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sickAnimalIsolateRadioController.charcter ==
        HorsesickAnimalIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 154, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        HorsesickAnimalIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 155, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        HorsesickAnimalIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 360, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalIsolateQuarantineRadioController.charcter ==
        HorseAnimalIsolateQuarantineRadio.yes) {
      sendDataCtrl.addAnswer(id: 156, answer: "");
    } else if (animalIsolateQuarantineRadioController.charcter ==
        HorseAnimalIsolateQuarantineRadio.no) {
      sendDataCtrl.addAnswer(id: 157, answer: "");
    }
    if (animalIsolateQuarantineRadioController.charcter ==
        HorseAnimalIsolateQuarantineRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 361, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalBathedRadioController.charcter == HorseAnimalBathedRadio.yes) {
      sendDataCtrl.addAnswer(id: 158, answer: "");
    } else if (animalBathedRadioController.charcter ==
        HorseAnimalBathedRadio.no) {
      sendDataCtrl.addAnswer(id: 159, answer: "");
    } else if (animalBathedRadioController.charcter ==
        HorseAnimalBathedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 362, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (floorCleanedRadioController.charcter == HorseFloorCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 161, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        HorseFloorCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 162, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        HorseFloorCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 363, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feederrCleanedRadioController.charcter ==
        HorseFeederrCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 164, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        HorseFeederrCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 165, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        HorseFeederrCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 364, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterRadioController.charcter == HorseSlaughterRadio.yes) {
      sendDataCtrl.addAnswer(id: 169, answer: "");
    } else if (slaughterRadioController.charcter == HorseSlaughterRadio.no) {
      sendDataCtrl.addAnswer(id: 170, answer: "");
    } else if (slaughterRadioController.charcter ==
        HorseSlaughterRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 366, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterPlacerRadioController.charcter ==
        HorseSlaughterPlacerRadio.yes) {
      sendDataCtrl.addAnswer(id: 171, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        HorseSlaughterPlacerRadio.no) {
      sendDataCtrl.addAnswer(id: 172, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        HorseSlaughterPlacerRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 367, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerExistRadioController.charcter == HorseMilkerExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 173, answer: "");
    } else if (milkerExistRadioController.charcter ==
        HorseMilkerExistRadio.no) {
      sendDataCtrl.addAnswer(id: 174, answer: "");
    } else if (milkerExistRadioController.charcter ==
        HorseMilkerExistRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 368, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerCleanedRadioController.charcter == HorseMilkerCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 175, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        HorseMilkerCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 176, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        HorseMilkerCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 369, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerToolsCleanedRadioController.charcter ==
        HorseMilkerToolsCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 178, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        HorseMilkerToolsCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 179, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        HorseMilkerToolsCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 370, answer: "");
    }
    //!!!*******************************************************
    //!!!*******************************************************
    //* Radio button

    if (sanitizersUsedRadioController.charcter ==
        HorseSanitizersUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 423, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        HorseSanitizersUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 424, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        HorseSanitizersUsedRadio.noAnswer) {
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
    if (milkSampleRadioController.charcter == HorseMIlkSampleRadio.yes) {
      sendDataCtrl.addAnswer(id: 189, answer: "");
    } else if (milkSampleRadioController.charcter == HorseMIlkSampleRadio.no) {
      sendDataCtrl.addAnswer(id: 190, answer: "");
    } else if (milkSampleRadioController.charcter ==
        HorseMIlkSampleRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 373, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (dipperRadioController.charcter == HorseDipperRadio.after) {
      sendDataCtrl.addAnswer(id: 191, answer: "");
    } else if (dipperRadioController.charcter == HorseDipperRadio.before) {
      sendDataCtrl.addAnswer(id: 192, answer: "");
    } else if (dipperRadioController.charcter == HorseDipperRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 374, answer: "");
    }
//!--------------------------
    //* Radio button
    if (udderWashedRadioController.charcter == HorseUdderWashedRadio.after) {
      sendDataCtrl.addAnswer(id: 193, answer: "");
    } else if (udderWashedRadioController.charcter ==
        HorseUdderWashedRadio.before) {
      sendDataCtrl.addAnswer(id: 194, answer: "");
    } else if (udderWashedRadioController.charcter ==
        HorseUdderWashedRadio.noAnswer) {
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
    if (insectExistRadioController.charcter == HorseInsectExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 198, answer: "");
    } else if (insectExistRadioController.charcter ==
        HorseInsectExistRadio.no) {
      sendDataCtrl.addAnswer(id: 199, answer: "");
    } else if (insectExistRadioController.charcter ==
        HorseInsectExistRadio.noAnswer) {
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
        HorseAntibioticsUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 214, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        HorseAntibioticsUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 215, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        HorseAntibioticsUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 382, answer: "");
    }
//!--------------------------
    //* Radio button
    if (antibioticsUseRadioController.charcter ==
        HorseAntibioticsUseRadio.protection) {
      sendDataCtrl.addAnswer(id: 216, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        HorseAntibioticsUseRadio.treatment) {
      sendDataCtrl.addAnswer(id: 217, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        HorseAntibioticsUseRadio.noAnswer) {
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
        HorseAntibioticsSenstivityRadio.yes) {
      sendDataCtrl.addAnswer(id: 298, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        HorseAntibioticsSenstivityRadio.no) {
      sendDataCtrl.addAnswer(id: 299, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        HorseAntibioticsSenstivityRadio.noAnswer) {
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

  void sendData(context) async {
    var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setHorseStatusValue(7);

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
