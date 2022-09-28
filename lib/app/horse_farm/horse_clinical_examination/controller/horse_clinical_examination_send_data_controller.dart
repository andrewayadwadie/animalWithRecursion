import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../horse_general_management/service/horse_send_general_data_service.dart';
import 'horse_animals_show_symptoms_radio_controller.dart';
import 'horse_clinical_changes_checkbox_controller.dart';
import 'horse_clinical_textfield_controller.dart';
import 'horse_diagnoses_disease_controller.dart';
import 'horse_disease_among_workers_radio_widget.dart';
import 'horse_disease_outbreak_radio_controller.dart';
import 'horse_health_issues_checkbox_controller.dart';
import 'horse_inflammation_site_radio_controller.dart';
import 'horse_miscarriage_time_controller.dart';
import 'horse_sick_animals_treated_controller.dart';
import 'horse_sick_case_radio_controller.dart';
import 'horse_sores_radio_controller.dart';
import 'horse_symptoms_before_abortion_radio_controller.dart';
import 'horse_udder_gangrene_radio_controller.dart';
import 'horse_wounds_radio_controller.dart';

class HorseclinicalExaminationSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());

  HorsehealthIssuesCheckboxController healthIssuesCheckboxCtrl =
      Get.put(HorsehealthIssuesCheckboxController(choices: [
    "Gastrointestinal diseases",
    "respiratory system diseases",
    "nervous system diseases",
    "diseases of the circulatory system",
    "skin desies",
    "venereal disease",
    "Muscle and joint diseases",
    "malnutrition diseases",
    "Global Warming",
    "Wounds and fractures",
  ]));
  HorseSickCaseRadioController sickCaseRadioClr =
      Get.put(HorseSickCaseRadioController());

  HorseAnimalsShowSymptomsRadioController showSymptomsCtrl =
      Get.put(HorseAnimalsShowSymptomsRadioController());
  HorseDiseaseAmongWorkersRadioController diseaseAmongWorkers =
      Get.put(HorseDiseaseAmongWorkersRadioController());
  HorseDiagnosesDiseaseController diagnosesDiseaseCtrl =
      Get.put(HorseDiagnosesDiseaseController());
  HorseSickAnimalsTreatedController sickAnimalsTreatedCtrl =
      Get.put(HorseSickAnimalsTreatedController());
  HorseDiseaseOutbreakRadioController diseaseOutbreakCtrl =
      Get.put(HorseDiseaseOutbreakRadioController());
//!===========================*=======================*=======================================
  HorseInflammationSiteRadioController inflammationSiteRadioCtrl =
      Get.put(HorseInflammationSiteRadioController());
  HorseUdderGangreneController udderGangreneCtrl =
      Get.put(HorseUdderGangreneController());
  HorseSoresRadioControllerController soresCtrl =
      Get.put(HorseSoresRadioControllerController());
  HorseWoundsRadioControllerController woundsCtrl =
      Get.put(HorseWoundsRadioControllerController());
//!===========================*=======================*=======================================

  HorseSymptomsBeforeAbortionRadioController symmptomsBeforeAbortionCtrl =
      Get.put(HorseSymptomsBeforeAbortionRadioController());

  HorseMiscarriageTimeController miscarriageTimeCtrl =
      Get.put(HorseMiscarriageTimeController());

  HorseClinicalChangesCheckboxController clinicalChangesCheckboxCtrl =
      Get.put(HorseClinicalChangesCheckboxController(choices: [
    "Clinical changes in vaginal secretions after childbirth .",
    "in the placenta .",
    "in fetuses .",
  ]));

  HorseClinicalTextFieldController clinicalTextFieldCtrl =
      Get.put(HorseClinicalTextFieldController());
  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(id: 231, answer: clinicalTextFieldCtrl.fever);

    sendDataCtrl.addAnswer(id: 232, answer: clinicalTextFieldCtrl.limp);

    sendDataCtrl.addAnswer(id: 233, answer: clinicalTextFieldCtrl.cough);

    sendDataCtrl.addAnswer(id: 234, answer: clinicalTextFieldCtrl.breathing);

    sendDataCtrl.addAnswer(id: 235, answer: clinicalTextFieldCtrl.diarrhea);

    sendDataCtrl.addAnswer(id: 236, answer: clinicalTextFieldCtrl.nasal);

    sendDataCtrl.addAnswer(id: 237, answer: clinicalTextFieldCtrl.vaginal);

    sendDataCtrl.addAnswer(id: 238, answer: clinicalTextFieldCtrl.secretions);

    sendDataCtrl.addAnswer(id: 239, answer: clinicalTextFieldCtrl.drooling);

    sendDataCtrl.addAnswer(id: 240, answer: clinicalTextFieldCtrl.inflammation);

    sendDataCtrl.addAnswer(id: 241, answer: clinicalTextFieldCtrl.anorexia);

    sendDataCtrl.addAnswer(id: 242, answer: clinicalTextFieldCtrl.nervous);

    sendDataCtrl.addAnswer(id: 243, answer: clinicalTextFieldCtrl.skinlesions);

    sendDataCtrl.addAnswer(id: 244, answer: clinicalTextFieldCtrl.wightLoss);

    sendDataCtrl.addAnswer(
        id: 245, answer: clinicalTextFieldCtrl.decreasedMilk);

    sendDataCtrl.addAnswer(id: 246, answer: clinicalTextFieldCtrl.lethargy);

    sendDataCtrl.addAnswer(id: 247, answer: clinicalTextFieldCtrl.mastitis);

    sendDataCtrl.addAnswer(id: 252, answer: clinicalTextFieldCtrl.gargrne);

    sendDataCtrl.addAnswer(id: 257, answer: clinicalTextFieldCtrl.miscarriage);

    sendDataCtrl.addAnswer(
        id: 260, answer: clinicalTextFieldCtrl.symptomsAbortion);

    sendDataCtrl.addAnswer(
        id: 269, answer: clinicalTextFieldCtrl.animalSymptoms);

    sendDataCtrl.addAnswer(id: 272, answer: clinicalTextFieldCtrl.diseaseNo);

    sendDataCtrl.addAnswer(
        id: 273, answer: clinicalTextFieldCtrl.diseaseSymptoms);

    //!--------------------------
    //* Radio button
    if (sickCaseRadioClr.charcter == HorseSickCaseRadio.yes) {
      sendDataCtrl.addAnswer(id: 229, answer: "");
    } else if (sickCaseRadioClr.charcter == HorseSickCaseRadio.no) {
      sendDataCtrl.addAnswer(id: 230, answer: "");
    } else if (sickCaseRadioClr.charcter == HorseSickCaseRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 386, answer: "");
    }
    //!--------------------------
    //*check box
    if (healthIssuesCheckboxCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 219, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 220, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 221, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 222, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 223, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 224, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[6] == true) {
      sendDataCtrl.addAnswer(id: 225, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[7] == true) {
      sendDataCtrl.addAnswer(id: 226, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[8] == true) {
      sendDataCtrl.addAnswer(id: 227, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList[9] == true) {
      sendDataCtrl.addAnswer(id: 228, answer: "");
    }
    if (healthIssuesCheckboxCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 385, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (showSymptomsCtrl.charcter == HorseAnimalsShowSymptomsRadio.yes) {
      sendDataCtrl.addAnswer(id: 267, answer: "");
    } else if (showSymptomsCtrl.charcter == HorseAnimalsShowSymptomsRadio.no) {
      sendDataCtrl.addAnswer(id: 268, answer: "");
    } else if (showSymptomsCtrl.charcter ==
        HorseAnimalsShowSymptomsRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 394, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (diseaseAmongWorkers.charcter == HorseDiseaseAmongWorkersRadio.yes) {
      sendDataCtrl.addAnswer(id: 270, answer: "");
    } else if (diseaseAmongWorkers.charcter ==
        HorseDiseaseAmongWorkersRadio.no) {
      sendDataCtrl.addAnswer(id: 271, answer: "");
    } else if (diseaseAmongWorkers.charcter ==
        HorseDiseaseAmongWorkersRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 395, answer: "");
    }

    //* dropdown
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 1) {
      sendDataCtrl.addAnswer(id: 274, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 2) {
      sendDataCtrl.addAnswer(id: 275, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 3) {
      sendDataCtrl.addAnswer(id: 276, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseId.value == 4) {
      sendDataCtrl.addAnswer(id: 277, answer: "");
    }
    if (diagnosesDiseaseCtrl.diagnosesDiseaseText.value ==
        'Who diagnoses disease states?') {
      sendDataCtrl.addAnswer(id: 396, answer: "");
    }

    //* dropdown
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 1) {
      sendDataCtrl.addAnswer(id: 278, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 2) {
      sendDataCtrl.addAnswer(id: 279, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 3) {
      sendDataCtrl.addAnswer(id: 280, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedId.value == 4) {
      sendDataCtrl.addAnswer(id: 281, answer: "");
    }
    if (sickAnimalsTreatedCtrl.sickAnimalsTreatedText.value ==
        'How are sick animals treated?') {
      sendDataCtrl.addAnswer(id: 397, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (diseaseOutbreakCtrl.charcter == HorseDiseaseOutbreakRadio.yes) {
      sendDataCtrl.addAnswer(id: 282, answer: "");
    } else if (diseaseOutbreakCtrl.charcter == HorseDiseaseOutbreakRadio.no) {
      sendDataCtrl.addAnswer(id: 283, answer: "");
    } else if (diseaseOutbreakCtrl.charcter ==
        HorseDiseaseOutbreakRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 398, answer: "");
    }
  }

  void fillMastitisAnswers() {
    //!--------------------------
    //* Radio button
    if (inflammationSiteRadioCtrl.charcter ==
        HorseInflammationSiteRadio.udder) {
      sendDataCtrl.addAnswer(id: 248, answer: "");
    } else if (inflammationSiteRadioCtrl.charcter ==
        HorseInflammationSiteRadio.nipples) {
      sendDataCtrl.addAnswer(id: 249, answer: "");
    } else if (inflammationSiteRadioCtrl.charcter ==
        HorseInflammationSiteRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 387, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (udderGangreneCtrl.charcter == HorseUdderGangrene.yes) {
      sendDataCtrl.addAnswer(id: 250, answer: "");
    } else if (udderGangreneCtrl.charcter == HorseUdderGangrene.no) {
      sendDataCtrl.addAnswer(id: 251, answer: "");
    } else if (udderGangreneCtrl.charcter == HorseUdderGangrene.noAnswer) {
      sendDataCtrl.addAnswer(id: 388, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (soresCtrl.charcter == HorseSoresRadioController.yes) {
      sendDataCtrl.addAnswer(id: 253, answer: "");
    } else if (soresCtrl.charcter == HorseSoresRadioController.no) {
      sendDataCtrl.addAnswer(id: 254, answer: "");
    } else if (soresCtrl.charcter == HorseSoresRadioController.noAnswer) {
      sendDataCtrl.addAnswer(id: 389, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (woundsCtrl.charcter == HorseWoundsRadioController.yes) {
      sendDataCtrl.addAnswer(id: 255, answer: "");
    } else if (woundsCtrl.charcter == HorseWoundsRadioController.no) {
      sendDataCtrl.addAnswer(id: 256, answer: "");
    } else if (woundsCtrl.charcter == HorseWoundsRadioController.noAnswer) {
      sendDataCtrl.addAnswer(id: 390, answer: "");
    }
  }

  void fillMiscarriageAnswers() {
    //!--------------------------
    //* Radio button
    if (symmptomsBeforeAbortionCtrl.charcter ==
        HorseSymptomsBeforeAbortionRadio.yes) {
      sendDataCtrl.addAnswer(id: 258, answer: "");
    } else if (symmptomsBeforeAbortionCtrl.charcter ==
        HorseSymptomsBeforeAbortionRadio.no) {
      sendDataCtrl.addAnswer(id: 259, answer: "");
    } else if (symmptomsBeforeAbortionCtrl.charcter ==
        HorseSymptomsBeforeAbortionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 391, answer: "");
    }

    //* dropdown
    if (miscarriageTimeCtrl.miscarriageTimeId.value == 1) {
      sendDataCtrl.addAnswer(id: 261, answer: "");
    }
    if (miscarriageTimeCtrl.miscarriageTimeId.value == 2) {
      sendDataCtrl.addAnswer(id: 262, answer: "");
    }
    if (miscarriageTimeCtrl.miscarriageTimeId.value == 3) {
      sendDataCtrl.addAnswer(id: 263, answer: "");
    }
    if (miscarriageTimeCtrl.miscarriageTimeText.value == 'Miscarriage Time ') {
      sendDataCtrl.addAnswer(id: 392, answer: "");
    }
    //!--------------------------
    //*check box
    if (clinicalChangesCheckboxCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 264, answer: "");
    }
    if (clinicalChangesCheckboxCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 265, answer: "");
    }
    if (clinicalChangesCheckboxCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 266, answer: "");
    }
    if (clinicalChangesCheckboxCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 393, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setHorseStatusValue(9);

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
