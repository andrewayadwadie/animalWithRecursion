import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../sheep_general_management/controller/sheep_send_sheep_herd_data_controller.dart';
import '../../sheep_general_management/service/sheep_send_general_data_service.dart';
import 'sheep_artificial_radio_controller.dart';
import 'sheep_breed_type_controller.dart';
import 'sheep_difficult_childbirth_controller.dart';
import 'sheep_difficulty_pregnancy_radio_controller.dart';
import 'sheep_fertilization_method_controller.dart';
import 'sheep_obstructed_labor_radio_controller.dart';
import 'sheep_reproduction_radio_controller.dart';
import 'sheep_reproduction_textfeild_controller.dart';
import 'sheep_reproduction_way_controller.dart';
import 'sheep_semen_source_controller.dart';
import 'sheep_unsatisfactory_abortion_radio_controller.dart';

class SheepReproductionSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendSheepHerdDataController sendDataCtrl =
      Get.put(SendSheepHerdDataController());
  SheepReproductionRadioController reproductionRadioCtrl =
      Get.put(SheepReproductionRadioController());
  SheepReproductionWayController reproductionWayCtrl =
      Get.put(SheepReproductionWayController());
  SheepArtificialRadioController artificialRadioCtrl =
      Get.put(SheepArtificialRadioController());
  SheepBreedTypeController breedTypeCtrl = Get.put(SheepBreedTypeController());

  SheepSemenSourceRadioController semenSourceRadioCtrl =
      Get.put(SheepSemenSourceRadioController());
  SheepFertilizationMethodController fertilizationMethodCtrl =
      Get.put(SheepFertilizationMethodController());
  SheepDifficultChildbirthController difficultChildbirthCtrl =
      Get.put(SheepDifficultChildbirthController());
  SheepDifficultyPregnancyRadioController difficultyPregnancyCtrl =
      Get.put(SheepDifficultyPregnancyRadioController());
  SheepUnsatisfactoryAbortionRadioController unsatisfactoryAbortionCtrl =
      Get.put(SheepUnsatisfactoryAbortionRadioController());
  SheepobstructedLaborRadioController obstructedLaborCtrl =
      Get.put(SheepobstructedLaborRadioController());
  SheepReproductionTextFieldController reproductionTextFieldCtrl =
      Get.put(SheepReproductionTextFieldController());
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
    if (reproductionRadioCtrl.charcter == SheepReproductionRadio.yes) {
      sendDataCtrl.addAnswer(id: 94, answer: "");
    } else if (reproductionRadioCtrl.charcter == SheepReproductionRadio.no) {
      sendDataCtrl.addAnswer(id: 95, answer: "");
    } else if (reproductionRadioCtrl.charcter ==
        SheepReproductionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 339, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (reproductionWayCtrl.reproductionWayId.value == 1) {
      sendDataCtrl.addAnswer(id: 96, answer: "");
    }
    if (reproductionWayCtrl.reproductionWayId.value == 2) {
      sendDataCtrl.addAnswer(id: 97, answer: "");
    }
    if (reproductionWayCtrl.reproductionWayId.value == 3) {
      sendDataCtrl.addAnswer(id: 98, answer: "");
    }
    if (reproductionWayCtrl.reproductionWayId.value == 4) {
      sendDataCtrl.addAnswer(id: 99, answer: "");
    }
    if (reproductionWayCtrl.reproductionWayId.value == 5) {
      sendDataCtrl.addAnswer(id: 100, answer: "");
    }
    if (reproductionWayCtrl.reproductionWayText.value ==
        'How is pregnancy diagnosed?') {
      sendDataCtrl.addAnswer(id: 340, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (artificialRadioCtrl.charcter == SheepArtificialRadio.yes) {
      sendDataCtrl.addAnswer(id: 101, answer: "");
    } else if (artificialRadioCtrl.charcter == SheepArtificialRadio.no) {
      sendDataCtrl.addAnswer(id: 102, answer: "");
    } else if (artificialRadioCtrl.charcter == SheepArtificialRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 341, answer: "");
    }
    //!--------------------------
    //* dropdown
    if (breedTypeCtrl.breedTypeId.value == 1) {
      sendDataCtrl.addAnswer(id: 103, answer: "");
    }
    if (breedTypeCtrl.breedTypeId.value == 2) {
      sendDataCtrl.addAnswer(id: 104, answer: "");
    }
    if (breedTypeCtrl.breedTypeId.value == 3) {
      sendDataCtrl.addAnswer(id: 105, answer: "");
    }
    if (breedTypeCtrl.breedTypeId.value == 4) {
      sendDataCtrl.addAnswer(id: 106, answer: "");
    }
    if (breedTypeCtrl.breedTypeText.value == 'What type of breed?') {
      sendDataCtrl.addAnswer(id: 342, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (semenSourceRadioCtrl.charcter == SheepSemenSourceRadio.local) {
      sendDataCtrl.addAnswer(id: 107, answer: "");
    } else if (semenSourceRadioCtrl.charcter ==
        SheepSemenSourceRadio.importation) {
      sendDataCtrl.addAnswer(id: 108, answer: "");
    } else if (semenSourceRadioCtrl.charcter ==
        SheepSemenSourceRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 343, answer: "");
    }

    //!--------------------------
    //* dropdown
    if (fertilizationMethodCtrl.fertilizationMethodId.value == 1) {
      sendDataCtrl.addAnswer(id: 109, answer: "");
    }
    if (fertilizationMethodCtrl.fertilizationMethodId.value == 2) {
      sendDataCtrl.addAnswer(id: 110, answer: "");
    }
    if (fertilizationMethodCtrl.fertilizationMethodId.value == 3) {
      sendDataCtrl.addAnswer(id: 111, answer: "");
    }
    if (fertilizationMethodCtrl.fertilizationMethodId.value == 4) {
      sendDataCtrl.addAnswer(id: 112, answer: "");
    }
    if (fertilizationMethodCtrl.fertilizationMethodText.value ==
        'Who does artificial insemination?') {
      sendDataCtrl.addAnswer(id: 344, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (difficultyPregnancyCtrl.charcter == SheepDifficultyPregnancyRadio.yes) {
      sendDataCtrl.addAnswer(id: 113, answer: "");
    } else if (difficultyPregnancyCtrl.charcter ==
        SheepDifficultyPregnancyRadio.no) {
      sendDataCtrl.addAnswer(id: 114, answer: "");
    } else if (difficultyPregnancyCtrl.charcter ==
        SheepDifficultyPregnancyRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 345, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (unsatisfactoryAbortionCtrl.charcter ==
        SheepUnsatisfactoryAbortionRadio.yes) {
      sendDataCtrl.addAnswer(id: 116, answer: "");
    } else if (unsatisfactoryAbortionCtrl.charcter ==
        SheepUnsatisfactoryAbortionRadio.no) {
      sendDataCtrl.addAnswer(id: 117, answer: "");
    } else if (unsatisfactoryAbortionCtrl.charcter ==
        SheepUnsatisfactoryAbortionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 346, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (obstructedLaborCtrl.charcter == SheepobstructedLaborRadio.yes) {
      sendDataCtrl.addAnswer(id: 119, answer: "");
    } else if (obstructedLaborCtrl.charcter == SheepobstructedLaborRadio.no) {
      sendDataCtrl.addAnswer(id: 120, answer: "");
    } else if (obstructedLaborCtrl.charcter ==
        SheepobstructedLaborRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 347, answer: "");
    }
    //* dropdown
    if (difficultChildbirthCtrl.difficultChildbirthId.value == 1) {
      sendDataCtrl.addAnswer(id: 288, answer: "");
    }
    if (difficultChildbirthCtrl.difficultChildbirthId.value == 2) {
      sendDataCtrl.addAnswer(id: 289, answer: "");
    }
    if (difficultChildbirthCtrl.difficultChildbirthId.value == 3) {
      sendDataCtrl.addAnswer(id: 290, answer: "");
    }
    if (difficultChildbirthCtrl.difficultChildbirthId.value == 4) {
      sendDataCtrl.addAnswer(id: 291, answer: "");
    }
    if (difficultChildbirthCtrl.difficultChildbirthText.value ==
        'who is giving birth?') {
      sendDataCtrl.addAnswer(id: 400, answer: "");
    }
  }

  void sendData(BuildContext context) async {
    var res = await SendSheepGeneralDataService.sendSheepGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setSheepStatusValue(4);

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
