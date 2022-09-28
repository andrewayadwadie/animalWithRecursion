import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../general_management/controller/camel_send_camel_herd_data_controller.dart';
import '../../general_management/service/camel_send_general_data_service.dart';
import 'camel_artificial_radio_controller.dart';
import 'camel_breed_type_controller.dart';
import 'camel_difficult_childbirth_controller.dart';
import 'camel_difficulty_pregnancy_radio_controller.dart';
import 'camel_obstructed_labor_radio_controller.dart';
import 'camel_reproduction_radio_controller.dart';
import 'camel_reproduction_textfeild_controller.dart';
import 'camel_reproduction_way_controller.dart';
import 'camel_semen_source_controller.dart';
import 'camel_unsatisfactory_abortion_radio_controller.dart';
import 'fertilization_method_controller.dart';

class CamelReproductionSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendCamelHerdDataController sendDataCtrl =
      Get.put(SendCamelHerdDataController());
  CamelReproductionRadioController camelReproductionRadioCtrl =
      Get.put(CamelReproductionRadioController());
  CamelReproductionWayController camelReproductionWayCtrl =
      Get.put(CamelReproductionWayController());
  CamelArtificialRadioController camelArtificialRadioCtrl =
      Get.put(CamelArtificialRadioController());
  CamelBreedTypeController camelBreedTypeCtrl =
      Get.put(CamelBreedTypeController());

  CamelSemenSourceRadioController camelSemenSourceRadioCtrl =
      Get.put(CamelSemenSourceRadioController());
  CamelFertilizationMethodController camelFertilizationMethodCtrl =
      Get.put(CamelFertilizationMethodController());
  CamelDifficultChildbirthController camelDifficultChildbirthCtrl =
      Get.put(CamelDifficultChildbirthController());
  CamelDifficultyPregnancyRadioController camelDifficultyPregnancyCtrl =
      Get.put(CamelDifficultyPregnancyRadioController());
  CamelUnsatisfactoryAbortionRadioController camelUnsatisfactoryAbortionCtrl =
      Get.put(CamelUnsatisfactoryAbortionRadioController());
  CamelobstructedLaborRadioController camelobstructedLaborCtrl =
      Get.put(CamelobstructedLaborRadioController());
  CamelReproductionTextFieldController reproductionTextFieldCtrl =
      Get.put(CamelReproductionTextFieldController());
  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField

    sendDataCtrl.addAnswer(
        id: 286, answer: reproductionTextFieldCtrl.importingCounrty);

    sendDataCtrl.addAnswer(
        id: 115, answer: reproductionTextFieldCtrl.caseNoDifficulty);

    sendDataCtrl.addAnswer(
        id: 118, answer: reproductionTextFieldCtrl.caseNoAboration);
    //!=*=**=**=**=**
//? error her we can not find id for this

    sendDataCtrl.addAnswer(
        id: 287, answer: reproductionTextFieldCtrl.caseNoLabor);

    //!--------------------------
    //* Radio button
    if (camelReproductionRadioCtrl.charcter == CamelReproductionRadio.yes) {
      sendDataCtrl.addAnswer(id: 94, answer: "");
    } else if (camelReproductionRadioCtrl.charcter ==
        CamelReproductionRadio.no) {
      sendDataCtrl.addAnswer(id: 95, answer: "");
    } else if (camelReproductionRadioCtrl.charcter ==
        CamelReproductionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 339, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (camelReproductionWayCtrl.reproductionWayId.value == 1) {
      sendDataCtrl.addAnswer(id: 96, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 2) {
      sendDataCtrl.addAnswer(id: 97, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 3) {
      sendDataCtrl.addAnswer(id: 98, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 4) {
      sendDataCtrl.addAnswer(id: 99, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayId.value == 5) {
      sendDataCtrl.addAnswer(id: 100, answer: "");
    }
    if (camelReproductionWayCtrl.reproductionWayText.value ==
        'How is pregnancy diagnosed?') {
      sendDataCtrl.addAnswer(id: 340, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (camelArtificialRadioCtrl.charcter == CamelArtificialRadio.yes) {
      sendDataCtrl.addAnswer(id: 101, answer: "");
    } else if (camelArtificialRadioCtrl.charcter == CamelArtificialRadio.no) {
      sendDataCtrl.addAnswer(id: 102, answer: "");
    } else if (camelArtificialRadioCtrl.charcter ==
        CamelArtificialRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 341, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (camelBreedTypeCtrl.breedTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 103, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 104, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 105, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeId.value == 4) {
      sendDataCtrl.addAnswer(id: 106, answer: "");
    }
    if (camelBreedTypeCtrl.breedTypeText.value == 'What type of breed?') {
      sendDataCtrl.addAnswer(id: 342, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelSemenSourceRadioCtrl.charcter == CamelSemenSourceRadio.local) {
      sendDataCtrl.addAnswer(id: 107, answer: "");
    } else if (camelSemenSourceRadioCtrl.charcter ==
        CamelSemenSourceRadio.importation) {
      sendDataCtrl.addAnswer(id: 108, answer: "");
    } else if (camelSemenSourceRadioCtrl.charcter ==
        CamelSemenSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 343, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 1) {
      sendDataCtrl.addAnswer(id: 109, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 2) {
      sendDataCtrl.addAnswer(id: 110, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 3) {
      sendDataCtrl.addAnswer(id: 111, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodId.value == 4) {
      sendDataCtrl.addAnswer(id: 112, answer: "");
    }
    if (camelFertilizationMethodCtrl.fertilizationMethodText.value ==
        'Who does artificial insemination?') {
      sendDataCtrl.addAnswer(id: 344, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelDifficultyPregnancyCtrl.charcter ==
        CamelDifficultyPregnancyRadio.yes) {
      sendDataCtrl.addAnswer(id: 113, answer: "");
    } else if (camelDifficultyPregnancyCtrl.charcter ==
        CamelDifficultyPregnancyRadio.no) {
      sendDataCtrl.addAnswer(id: 114, answer: "");
    } else if (camelDifficultyPregnancyCtrl.charcter ==
        CamelDifficultyPregnancyRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 345, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelUnsatisfactoryAbortionCtrl.charcter ==
        CamelUnsatisfactoryAbortionRadio.yes) {
      sendDataCtrl.addAnswer(id: 116, answer: "");
    } else if (camelUnsatisfactoryAbortionCtrl.charcter ==
        CamelUnsatisfactoryAbortionRadio.no) {
      sendDataCtrl.addAnswer(id: 117, answer: "");
    } else if (camelUnsatisfactoryAbortionCtrl.charcter ==
        CamelUnsatisfactoryAbortionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 346, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (camelobstructedLaborCtrl.charcter == CamelobstructedLaborRadio.yes) {
      sendDataCtrl.addAnswer(id: 119, answer: "");
    } else if (camelobstructedLaborCtrl.charcter ==
        CamelobstructedLaborRadio.no) {
      sendDataCtrl.addAnswer(id: 120, answer: "");
    } else if (camelobstructedLaborCtrl.charcter ==
        CamelobstructedLaborRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 347, answer: "");
    }
    //* dropdown
    if (camelDifficultChildbirthCtrl.difficultChildbirthId.value == 1) {
      sendDataCtrl.addAnswer(id: 288, answer: "");
    }
    if (camelDifficultChildbirthCtrl.difficultChildbirthId.value == 2) {
      sendDataCtrl.addAnswer(id: 289, answer: "");
    }
    if (camelDifficultChildbirthCtrl.difficultChildbirthId.value == 3) {
      sendDataCtrl.addAnswer(id: 290, answer: "");
    }
    if (camelDifficultChildbirthCtrl.difficultChildbirthId.value == 4) {
      sendDataCtrl.addAnswer(id: 291, answer: "");
    }
    if (camelDifficultChildbirthCtrl.difficultChildbirthText.value ==
        'who is giving birth?') {
      sendDataCtrl.addAnswer(id: 400, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    log("reproduction  : ${sendDataCtrl.answers}");

    var res = await SendCamelGeneralDataService.sendCamelGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setCamelStatusValue(4);

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
