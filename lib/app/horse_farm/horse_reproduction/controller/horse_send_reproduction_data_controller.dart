import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/current_location_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../all_sections/view/screen/all_sections_screen.dart';
import '../../../auth/login_screen.dart';
import '../../horse_general_management/controller/horse_send_horse_herd_data_controller.dart';
import '../../horse_general_management/service/horse_send_general_data_service.dart';
import 'horse_artificial_radio_controller.dart';
import 'horse_breed_type_controller.dart';
import 'horse_difficult_childbirth_controller.dart';
import 'horse_difficulty_pregnancy_radio_controller.dart';
import 'horse_fertilization_method_controller.dart';
import 'horse_obstructed_labor_radio_controller.dart';
import 'horse_reproduction_radio_controller.dart';
import 'horse_reproduction_textfeild_controller.dart';
import 'horse_reproduction_way_controller.dart';
import 'horse_semen_source_controller.dart';
import 'horse_unsatisfactory_abortion_radio_controller.dart';

class HorseReproductionSendDataController extends GetxController {
  CurrentLocationController location = Get.put(CurrentLocationController());
  SendHorseHerdDataController sendDataCtrl =
      Get.put(SendHorseHerdDataController());
  HorseReproductionRadioController reproductionRadioCtrl =
      Get.put(HorseReproductionRadioController());
  HorseReproductionWayController reproductionWayCtrl =
      Get.put(HorseReproductionWayController());
  HorseArtificialRadioController artificialRadioCtrl =
      Get.put(HorseArtificialRadioController());
  HorseBreedTypeController breedTypeCtrl = Get.put(HorseBreedTypeController());

  HorseSemenSourceRadioController semenSourceRadioCtrl =
      Get.put(HorseSemenSourceRadioController());
  HorseFertilizationMethodController fertilizationMethodCtrl =
      Get.put(HorseFertilizationMethodController());
  HorseDifficultChildbirthController difficultChildbirthCtrl =
      Get.put(HorseDifficultChildbirthController());
  HorseDifficultyPregnancyRadioController difficultyPregnancyCtrl =
      Get.put(HorseDifficultyPregnancyRadioController());
  HorseUnsatisfactoryAbortionRadioController unsatisfactoryAbortionCtrl =
      Get.put(HorseUnsatisfactoryAbortionRadioController());
  HorseobstructedLaborRadioController obstructedLaborCtrl =
      Get.put(HorseobstructedLaborRadioController());
  HorseReproductionTextFieldController reproductionTextFieldCtrl =
      Get.put(HorseReproductionTextFieldController());
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
    if (reproductionRadioCtrl.charcter == HorseReproductionRadio.yes) {
      sendDataCtrl.addAnswer(id: 94, answer: "");
    } else if (reproductionRadioCtrl.charcter == HorseReproductionRadio.no) {
      sendDataCtrl.addAnswer(id: 95, answer: "");
    } else if (reproductionRadioCtrl.charcter ==
        HorseReproductionRadio.noAnswer) {
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
    if (artificialRadioCtrl.charcter == HorseArtificialRadio.yes) {
      sendDataCtrl.addAnswer(id: 101, answer: "");
    } else if (artificialRadioCtrl.charcter == HorseArtificialRadio.no) {
      sendDataCtrl.addAnswer(id: 102, answer: "");
    } else if (artificialRadioCtrl.charcter == HorseArtificialRadio.noAnswer) {
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
    if (semenSourceRadioCtrl.charcter == HorseSemenSourceRadio.local) {
      sendDataCtrl.addAnswer(id: 107, answer: "");
    } else if (semenSourceRadioCtrl.charcter ==
        HorseSemenSourceRadio.importation) {
      sendDataCtrl.addAnswer(id: 108, answer: "");
    } else if (semenSourceRadioCtrl.charcter ==
        HorseSemenSourceRadio.noAnswer) {
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
    if (difficultyPregnancyCtrl.charcter == HorseDifficultyPregnancyRadio.yes) {
      sendDataCtrl.addAnswer(id: 113, answer: "");
    } else if (difficultyPregnancyCtrl.charcter ==
        HorseDifficultyPregnancyRadio.no) {
      sendDataCtrl.addAnswer(id: 114, answer: "");
    } else if (difficultyPregnancyCtrl.charcter ==
        HorseDifficultyPregnancyRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 345, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (unsatisfactoryAbortionCtrl.charcter ==
        HorseUnsatisfactoryAbortionRadio.yes) {
      sendDataCtrl.addAnswer(id: 116, answer: "");
    } else if (unsatisfactoryAbortionCtrl.charcter ==
        HorseUnsatisfactoryAbortionRadio.no) {
      sendDataCtrl.addAnswer(id: 117, answer: "");
    } else if (unsatisfactoryAbortionCtrl.charcter ==
        HorseUnsatisfactoryAbortionRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 346, answer: "");
    }

    //!--------------------------
    //* Radio button
    if (obstructedLaborCtrl.charcter == HorseobstructedLaborRadio.yes) {
      sendDataCtrl.addAnswer(id: 119, answer: "");
    } else if (obstructedLaborCtrl.charcter == HorseobstructedLaborRadio.no) {
      sendDataCtrl.addAnswer(id: 120, answer: "");
    } else if (obstructedLaborCtrl.charcter ==
        HorseobstructedLaborRadio.noAnswer) {
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
    var res = await SendHorseGeneralDataService.sendHorseGeneralDataService(
        data: sendDataCtrl.answers);
    if (res == 200) {
      SharedPreferencesHelper.setHorseStatusValue(4);

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
