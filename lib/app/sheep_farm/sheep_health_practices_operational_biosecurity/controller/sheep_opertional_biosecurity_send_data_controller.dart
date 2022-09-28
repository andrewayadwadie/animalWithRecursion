import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../cow_form/clinical_symptoms/controller/insect_type_controller.dart';
import '../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../sheep_general_management/service/sheep_send_general_data_service.dart';
import 'sheep_animal_bathed_radio_controller.dart';
import 'sheep_animal_isolate_radio_controller.dart';
import 'sheep_animal_pest_control_radio_controller.dart';
import 'sheep_animal_quarantine_radio_controller.dart';
import 'sheep_antibiotics_date_controller.dart';
import 'sheep_antibiotics_description_controller.dart';
import 'sheep_antibiotics_having_controller.dart';
import 'sheep_antibiotics_senstivity_radio_controller.dart';
import 'sheep_antibiotics_type_controller.dart';
import 'sheep_antibiotics_use_radio_controller.dart';
import 'sheep_antibiotics_used_radio_controller.dart';
import 'sheep_blood_parasites_controller.dart';
import 'sheep_chemicals_farm_used_controller.dart';
import 'sheep_chemicals_used_controller.dart';
import 'sheep_dippers_radio_controller.dart';
import 'sheep_farm_pest_control_radio_controller.dart';
import 'sheep_feeder_cleaned_radio_controller.dart';
import 'sheep_floor_cleaned_radio_controller.dart';
import 'sheep_if_udder_washed_controller.dart';
import 'sheep_insect_exist_radio_controller.dart';
import 'sheep_mastitis_milked_controller.dart';
import 'sheep_milk_sample_radio_controller.dart';
import 'sheep_milker_cleaned_radio_controller.dart';
import 'sheep_milker_exist_radio_controller.dart';
import 'sheep_milker_tool_cleaned_radio_controller.dart';
import 'sheep_nipple_skin_used_radio_controller.dart';
import 'sheep_operational_isolate_place_radio_controller.dart';
import 'sheep_operational_sick_isolate_radio_controller.dart';
import 'sheep_opertional_textfield_controller.dart';
import 'sheep_sanitizers_milker_tool_radio_controller.dart';
import 'sheep_sanitizers_used_controller.dart';
import 'sheep_sanitizers_used_radio_controller.dart';
import 'sheep_sanitiziers_milker_tools_controller.dart';
import 'sheep_slaughter_place_radio_controller.dart';
import 'sheep_slaughter_radio_controller.dart';
import 'sheep_udder_washed_radio_controller.dart';

class SheepHealthOpertionalBiosecuritySendDataController
    extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendSheepHerdDataController sendDataCtrl =
      Get.put(SendSheepHerdDataController());

  SheepsickIsolateRadioController sickIsolateRadioController =
      Get.put(SheepsickIsolateRadioController());
  SheepIsolatePlaceRadioController isolatePlaceRadioController =
      Get.put(SheepIsolatePlaceRadioController());
  SheepsickAnimalIsolateRadioController sickAnimalIsolateRadioController =
      Get.put(SheepsickAnimalIsolateRadioController());
  SheepAnimalIsolateQuarantineRadioController
      animalIsolateQuarantineRadioController =
      Get.put(SheepAnimalIsolateQuarantineRadioController());
  SheepAnimalBathedRadioController animalBathedRadioController =
      Get.put(SheepAnimalBathedRadioController());

  SheepFloorCleanedRadioController floorCleanedRadioController =
      Get.put(SheepFloorCleanedRadioController());
  SheepFeederrCleanedRadioController feederrCleanedRadioController =
      Get.put(SheepFeederrCleanedRadioController());
  SheepSlaughterRadioController slaughterRadioController =
      Get.put(SheepSlaughterRadioController());
  SheepSlaughterPlacerRadioController slaughterPlacerRadioController =
      Get.put(SheepSlaughterPlacerRadioController());

  SheepMilkerExistRadioController milkerExistRadioController =
      Get.put(SheepMilkerExistRadioController());
  SheepMilkerCleanedRadioController milkerCleanedRadioController =
      Get.put(SheepMilkerCleanedRadioController());
  SheepMilkerToolsCleanedRadioController milkerToolsCleanedRadioController =
      Get.put(SheepMilkerToolsCleanedRadioController());

  SheepSanitizersUsedRadioController sanitizersUsedRadioController =
      Get.put(SheepSanitizersUsedRadioController());
  SheepSanitizersMilkerToolsController sanitizersMilkerToolsController =
      Get.put(SheepSanitizersMilkerToolsController());
  SheepSanitizersUsedController sanitizersUsedController =
      Get.put(SheepSanitizersUsedController());
  SheepMIlkSampleRadioController milkSampleRadioController =
      Get.put(SheepMIlkSampleRadioController());
  SheepDipperRadioController dipperRadioController =
      Get.put(SheepDipperRadioController());

  SheepUdderWashedRadioController udderWashedRadioController =
      Get.put(SheepUdderWashedRadioController());

  SheepMastitisMilkedController mastitisMilkedController =
      Get.put(SheepMastitisMilkedController());
  SheepInsectExistRadioController insectExistRadioController =
      Get.put(SheepInsectExistRadioController());
  InsectTypeController insectTypeController = Get.put(InsectTypeController());

  SheepChemicalsUsedController chemicalsUsedController =
      Get.put(SheepChemicalsUsedController());
  SheepChemicalsFarmUsedController chemicalsFarmUsedController =
      Get.put(SheepChemicalsFarmUsedController());
  SheepBloodParasitesController bloodParasitesController =
      Get.put(SheepBloodParasitesController());
  SheepAntibioticsUsedRadioController antibioticsUsedRadioController =
      Get.put(SheepAntibioticsUsedRadioController());

  SheepAntibioticsUseRadioController antibioticsUseRadioController =
      Get.put(SheepAntibioticsUseRadioController());

  SheepAntibioticsTypeController antibioticsTypeController =
      Get.put(SheepAntibioticsTypeController());

  SheepAntibioticsSenstivityRadioController
      antibioticsSenstivityRadioController =
      Get.put(SheepAntibioticsSenstivityRadioController());
  SheepAntibioticsDescriptionController antibioticsDescriptionController =
      Get.put(SheepAntibioticsDescriptionController());
  SheepWhoWillGiveAntibioticsHavingController antibioticsHavingController =
      Get.put(SheepWhoWillGiveAntibioticsHavingController());

  SheepAntibioticsDateController antibioticsDateController =
      Get.put(SheepAntibioticsDateController());

  SheepOPertionalTextFieldController opertionalTextFieldController =
      Get.put(SheepOPertionalTextFieldController());
  SheepSanitizersMilkerToolsRadioController
      sanitizersMilkerToolsRadioController =
      Get.put(SheepSanitizersMilkerToolsRadioController());
  SheepNipplesSkinUsedRadioController nipplesSkinUsedRadioCtrl =
      Get.put(SheepNipplesSkinUsedRadioController());

  SheepIfUdderWashedController ifUdderWashedCtrl =
      Get.put(SheepIfUdderWashedController());

  SheepInsectAnimalPestControlRadioController insectAnimalPestControlRadioCtrl =
      Get.put(SheepInsectAnimalPestControlRadioController());
  SheepInsectFarmPestControlRadioController insectFarmPestControlRadioCtrl =
      Get.put(SheepInsectFarmPestControlRadioController());

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
    if (sickIsolateRadioController.charcter == SheepsickIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 150, answer: "");
    } else if (sickIsolateRadioController.charcter ==
        SheepsickIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 151, answer: "");
    } else if (sickIsolateRadioController.charcter ==
        SheepsickIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 358, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sanitizersMilkerToolsRadioController.charcter ==
        SheepSanitizersMilkerToolsRadio.yes) {
      sendDataCtrl.addAnswer(id: 426, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        SheepSanitizersMilkerToolsRadio.no) {
      sendDataCtrl.addAnswer(id: 427, answer: "");
    } else if (sanitizersMilkerToolsRadioController.charcter ==
        SheepSanitizersMilkerToolsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 428, answer: "");
    }

    //* Radio button
    if (nipplesSkinUsedRadioCtrl.charcter == SheepNipplesSkinUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 429, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        SheepNipplesSkinUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 430, answer: "");
    } else if (nipplesSkinUsedRadioCtrl.charcter ==
        SheepNipplesSkinUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 431, answer: "");
    }
    //* Radio button
    if (ifUdderWashedCtrl.charcter == SheepIfUdderWashed.yes) {
      sendDataCtrl.addAnswer(id: 432, answer: "");
    } else if (ifUdderWashedCtrl.charcter == SheepIfUdderWashed.no) {
      sendDataCtrl.addAnswer(id: 433, answer: "");
    } else if (ifUdderWashedCtrl.charcter == SheepIfUdderWashed.noAnswer) {
      sendDataCtrl.addAnswer(id: 434, answer: "");
    }
    //* Radio button
    if (insectAnimalPestControlRadioCtrl.charcter ==
        SheepInsectAnimalPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 435, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        SheepInsectAnimalPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 436, answer: "");
    } else if (insectAnimalPestControlRadioCtrl.charcter ==
        SheepInsectAnimalPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 437, answer: "");
    }
    //* Radio button
    if (insectFarmPestControlRadioCtrl.charcter ==
        SheepInsectFarmPestControlRadio.yes) {
      sendDataCtrl.addAnswer(id: 444, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        SheepInsectFarmPestControlRadio.no) {
      sendDataCtrl.addAnswer(id: 445, answer: "");
    } else if (insectFarmPestControlRadioCtrl.charcter ==
        SheepInsectFarmPestControlRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 446, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (isolatePlaceRadioController.charcter == SheepIsolatePlaceRadio.yes) {
      sendDataCtrl.addAnswer(id: 152, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        SheepIsolatePlaceRadio.no) {
      sendDataCtrl.addAnswer(id: 153, answer: "");
    } else if (isolatePlaceRadioController.charcter ==
        SheepIsolatePlaceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 359, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (sickAnimalIsolateRadioController.charcter ==
        SheepsickAnimalIsolateRadio.yes) {
      sendDataCtrl.addAnswer(id: 154, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        SheepsickAnimalIsolateRadio.no) {
      sendDataCtrl.addAnswer(id: 155, answer: "");
    } else if (sickAnimalIsolateRadioController.charcter ==
        SheepsickAnimalIsolateRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 360, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalIsolateQuarantineRadioController.charcter ==
        SheepAnimalIsolateQuarantineRadio.yes) {
      sendDataCtrl.addAnswer(id: 156, answer: "");
    } else if (animalIsolateQuarantineRadioController.charcter ==
        SheepAnimalIsolateQuarantineRadio.no) {
      sendDataCtrl.addAnswer(id: 157, answer: "");
    }
    if (animalIsolateQuarantineRadioController.charcter ==
        SheepAnimalIsolateQuarantineRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 361, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalBathedRadioController.charcter == SheepAnimalBathedRadio.yes) {
      sendDataCtrl.addAnswer(id: 158, answer: "");
    } else if (animalBathedRadioController.charcter ==
        SheepAnimalBathedRadio.no) {
      sendDataCtrl.addAnswer(id: 159, answer: "");
    } else if (animalBathedRadioController.charcter ==
        SheepAnimalBathedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 362, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (floorCleanedRadioController.charcter == SheepFloorCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 161, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        SheepFloorCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 162, answer: "");
    } else if (floorCleanedRadioController.charcter ==
        SheepFloorCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 363, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (feederrCleanedRadioController.charcter ==
        SheepFeederrCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 164, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        SheepFeederrCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 165, answer: "");
    } else if (feederrCleanedRadioController.charcter ==
        SheepFeederrCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 364, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterRadioController.charcter == SheepSlaughterRadio.yes) {
      sendDataCtrl.addAnswer(id: 169, answer: "");
    } else if (slaughterRadioController.charcter == SheepSlaughterRadio.no) {
      sendDataCtrl.addAnswer(id: 170, answer: "");
    } else if (slaughterRadioController.charcter ==
        SheepSlaughterRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 366, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (slaughterPlacerRadioController.charcter ==
        SheepSlaughterPlacerRadio.yes) {
      sendDataCtrl.addAnswer(id: 171, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        SheepSlaughterPlacerRadio.no) {
      sendDataCtrl.addAnswer(id: 172, answer: "");
    } else if (slaughterPlacerRadioController.charcter ==
        SheepSlaughterPlacerRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 367, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerExistRadioController.charcter == SheepMilkerExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 173, answer: "");
    } else if (milkerExistRadioController.charcter ==
        SheepMilkerExistRadio.no) {
      sendDataCtrl.addAnswer(id: 174, answer: "");
    } else if (milkerExistRadioController.charcter ==
        SheepMilkerExistRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 368, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerCleanedRadioController.charcter == SheepMilkerCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 175, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        SheepMilkerCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 176, answer: "");
    } else if (milkerCleanedRadioController.charcter ==
        SheepMilkerCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 369, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (milkerToolsCleanedRadioController.charcter ==
        SheepMilkerToolsCleanedRadio.yes) {
      sendDataCtrl.addAnswer(id: 178, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        SheepMilkerToolsCleanedRadio.no) {
      sendDataCtrl.addAnswer(id: 179, answer: "");
    } else if (milkerToolsCleanedRadioController.charcter ==
        SheepMilkerToolsCleanedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 370, answer: "");
    }
    //!!!*******************************************************
    //!!!*******************************************************
    //* Radio button

    if (sanitizersUsedRadioController.charcter ==
        SheepSanitizersUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 423, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        SheepSanitizersUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 424, answer: "");
    } else if (sanitizersUsedRadioController.charcter ==
        SheepSanitizersUsedRadio.noAnswer) {
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
    if (milkSampleRadioController.charcter == SheepMIlkSampleRadio.yes) {
      sendDataCtrl.addAnswer(id: 189, answer: "");
    } else if (milkSampleRadioController.charcter == SheepMIlkSampleRadio.no) {
      sendDataCtrl.addAnswer(id: 190, answer: "");
    } else if (milkSampleRadioController.charcter ==
        SheepMIlkSampleRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 373, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (dipperRadioController.charcter == SheepDipperRadio.after) {
      sendDataCtrl.addAnswer(id: 191, answer: "");
    } else if (dipperRadioController.charcter == SheepDipperRadio.before) {
      sendDataCtrl.addAnswer(id: 192, answer: "");
    } else if (dipperRadioController.charcter == SheepDipperRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 374, answer: "");
    }
//!--------------------------
    //* Radio button
    if (udderWashedRadioController.charcter == SheepUdderWashedRadio.after) {
      sendDataCtrl.addAnswer(id: 193, answer: "");
    } else if (udderWashedRadioController.charcter ==
        SheepUdderWashedRadio.before) {
      sendDataCtrl.addAnswer(id: 194, answer: "");
    } else if (udderWashedRadioController.charcter ==
        SheepUdderWashedRadio.noAnswer) {
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
    if (insectExistRadioController.charcter == SheepInsectExistRadio.yes) {
      sendDataCtrl.addAnswer(id: 198, answer: "");
    } else if (insectExistRadioController.charcter ==
        SheepInsectExistRadio.no) {
      sendDataCtrl.addAnswer(id: 199, answer: "");
    } else if (insectExistRadioController.charcter ==
        SheepInsectExistRadio.noAnswer) {
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
        SheepAntibioticsUsedRadio.yes) {
      sendDataCtrl.addAnswer(id: 214, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        SheepAntibioticsUsedRadio.no) {
      sendDataCtrl.addAnswer(id: 215, answer: "");
    } else if (antibioticsUsedRadioController.charcter ==
        SheepAntibioticsUsedRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 382, answer: "");
    }
//!--------------------------
    //* Radio button
    if (antibioticsUseRadioController.charcter ==
        SheepAntibioticsUseRadio.protection) {
      sendDataCtrl.addAnswer(id: 216, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        SheepAntibioticsUseRadio.treatment) {
      sendDataCtrl.addAnswer(id: 217, answer: "");
    } else if (antibioticsUseRadioController.charcter ==
        SheepAntibioticsUseRadio.noAnswer) {
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
        SheepAntibioticsSenstivityRadio.yes) {
      sendDataCtrl.addAnswer(id: 298, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        SheepAntibioticsSenstivityRadio.no) {
      sendDataCtrl.addAnswer(id: 299, answer: "");
    } else if (antibioticsSenstivityRadioController.charcter ==
        SheepAntibioticsSenstivityRadio.noAnswer) {
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
    var res = await SendSheepGeneralDataService.sendSheepGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setSheepStatusValue(7);

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
