import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/controller/internet_connectivity_controller.dart';
import '../../../utils/db/auth_shared_preferences.dart';
import '../../../utils/style.dart';
import '../../all_sections/services/section_date_service.dart';
import '../../all_sections/view/screen/all_sections_screen.dart';
import '../../auth/login_screen.dart';
import '../../camel_farm/general_management/service/camel_send_general_data_service.dart';
import '../../cow_farm/cow_general_management/service/cow_send_general_data_service.dart';
import '../../goat_farm/goat_general_management/service/goat_send_general_data_service.dart';
import '../../horse_farm/horse_general_management/service/horse_send_general_data_service.dart';
import '../../sheep_farm/sheep_general_management/service/sheep_send_general_data_service.dart';
import 'add_ainmal_date_controller.dart';
import 'add_animal_two_week_controller.dart';
import 'anatomical_symptoms_checkbox_controller.dart';
import 'anatomy_dead_cases_radio_controller.dart';
import 'control_measures_checkbox_controller.dart';
import 'control_measures_radio_controller.dart';
import 'disease_outbreak_send_data_controller.dart';
import 'disease_outbreak_textfield_controller.dart';
import 'exit_animal_date_controller.dart';
import 'exit_animal_last_week_radio_controller.dart';
import 'lab_result_checkbox_controller.dart';
import 'local_disease_checkbox_controller.dart';
import 'outbreak_animals_isolated_radio_controller.dart';
import 'outbreak_date_widget.dart';
import 'outbreak_disease_appear_radio_controller.dart';
import 'outbreak_immunization_date_controller.dart';
import 'outbreak_immunization_radio_controller.dart';
import 'reporting_date_controller.dart';
import 'result_date_controller.dart';
import 'similar_symptoms_region_raio_controller.dart';
import 'suspected_disease_checkbox_controller.dart';
import 'veterinary_department_radio_controller.dart';

class SendDiseaseOutbreakController extends GetxController {
  InternetController net = Get.put(InternetController());
  SendDiseasOutbreakDataController sendDataCtrl =
      Get.put(SendDiseasOutbreakDataController());
  DiseaseOutbreakTextfieldController textfieldCtrl =
      Get.put(DiseaseOutbreakTextfieldController());

  SuspectedDiseaseCheckBoxController suspectedDiseaseCtrl =
      Get.put(SuspectedDiseaseCheckBoxController(choices: [
    "Is the disease a known import, but it is not spread locally?",
    "Is the disease urgent but unknown?",
    "Is the disease known locally?",
  ]));
  LocalDiseaseCheckBoxController localDiseaseCtrl =
      Get.put(LocalDiseaseCheckBoxController(choices: [
    " foot-and-mouth disease",
    "rift valley fever",
    "blue tongue",
    "PPR",
    "Brucella",
    "tuberculosis",
    "Jones disease",
    "blood parasites",
    " scabies"
  ]));
  OutBreakDateController dateCtrl = Get.put(OutBreakDateController());
  AnatomicalSymptomsCheckBoxController anatomicalSymptomsCtrl =
      Get.put(AnatomicalSymptomsCheckBoxController(choices: [
    "nothing",
    "bleeding",
    "the heart",
    "liver",
    "lung",
    "the kidneys",
    "spleen",
    "Lymph nodes",
    "Digestive",
  ]));
  SimilarSymptomsRegionController similarSymptomsRegionCtrl =
      Get.put(SimilarSymptomsRegionController());

  AddAnimalDateController addAnimalDateCtrl =
      Get.put(AddAnimalDateController());
  OutBreakAnimalIsolatedController animalIsolatedCtrl =
      Get.put(OutBreakAnimalIsolatedController());
  OutBreakDiseaseAppearController diseaseAppearCtrl =
      Get.put(OutBreakDiseaseAppearController());
  ExitAnimalDateController exitAnimalDateController =
      Get.put(ExitAnimalDateController());
  OutBreakImmunizationDateController immunizationDateCtrl =
      Get.put(OutBreakImmunizationDateController());

  ReportingDateController reportingDateCtrl =
      Get.put(ReportingDateController());

  ControlMeasuresCheckBoxController measuresCheckCtrl =
      Get.put(ControlMeasuresCheckBoxController(choices: [
    "animal movement control",
    "Isolation inside the farm",
    "Quarantine on the farm",
    "treatment",
    "slaughter",
    "execution",
    "other",
  ]));

  ResultDateController resultDateCtrl = Get.put(ResultDateController());

  LabResultCheckBoxController labResultCtrl =
      Get.put(LabResultCheckBoxController(choices: [
    "positive",
    "negative",
    "Uncertain",
  ]));
  AddAnimalTwoWeekController addAnimalTwoWeekCtrl =
      Get.put(AddAnimalTwoWeekController());
  AnatomyDeadCasesController anatomyCtrl =
      Get.put(AnatomyDeadCasesController());
  ExitAnimalLastWeekController exitAnimalCtrl =
      Get.put(ExitAnimalLastWeekController());
  OutBreakImmunizationController outBreakImmunizationCtrl =
      Get.put(OutBreakImmunizationController());
  ControlMeasuresRadioController controlMeasuresCtrl =
      Get.put(ControlMeasuresRadioController());
  VeterinaryDepartmentRadioController veterinaryDepartmentCtrl =
      Get.put(VeterinaryDepartmentRadioController());
  void fillAnswerListWithData() {
    //!--------------------------
    //* TextField
    sendDataCtrl.addAnswer(
        id: 465, answer: textfieldCtrl.otherLocalDisease.text);
    sendDataCtrl.addAnswer(id: 467, answer: textfieldCtrl.noOfInfected.text);
    sendDataCtrl.addAnswer(id: 468, answer: textfieldCtrl.noOfDeath.text);
    sendDataCtrl.addAnswer(id: 479, answer: textfieldCtrl.autopsy.text);
    sendDataCtrl.addAnswer(id: 484, answer: textfieldCtrl.animalSource.text);
    sendDataCtrl.addAnswer(id: 485, answer: textfieldCtrl.noOfAnimal.text);
    sendDataCtrl.addAnswer(
        id: 493, answer: textfieldCtrl.noOfAnimalTwoWeek.text);
    sendDataCtrl.addAnswer(id: 494, answer: textfieldCtrl.exitPurpose.text);
    sendDataCtrl.addAnswer(id: 495, answer: textfieldCtrl.exitAddress.text);
    sendDataCtrl.addAnswer(id: 496, answer: textfieldCtrl.numberOfDoses.text);
    sendDataCtrl.addAnswer(
        id: 503, answer: textfieldCtrl.noAnimalMeasures4.text);
    sendDataCtrl.addAnswer(
        id: 505, answer: textfieldCtrl.noAnimalMeasures5.text);
    sendDataCtrl.addAnswer(
        id: 507, answer: textfieldCtrl.noAnimalMeasures6.text);
    sendDataCtrl.addAnswer(id: 508, answer: textfieldCtrl.selectAction.text);
    sendDataCtrl.addAnswer(id: 512, answer: textfieldCtrl.nameOfDisease.text);
    sendDataCtrl.addAnswer(id: 513, answer: textfieldCtrl.nameOfDisease2.text);
    //!--------------------------
    //*check box
    if (suspectedDiseaseCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 453, answer: "");
    }
    if (suspectedDiseaseCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 454, answer: "");
    }
    if (suspectedDiseaseCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 455, answer: "");
    } if (suspectedDiseaseCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 547, answer: "");
    }

    //!--------------------------
    //*check box
    if (labResultCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 510, answer: "");
    }
    if (labResultCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 511, answer: "");
    }

    //!--------------------------
    //*check box
    if (localDiseaseCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 456, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 457, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 458, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 459, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 460, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 461, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[6] == true) {
      sendDataCtrl.addAnswer(id: 462, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[7] == true) {
      sendDataCtrl.addAnswer(id: 463, answer: "");
    }
    if (localDiseaseCtrl.choicesBoolList[8] == true) {
      sendDataCtrl.addAnswer(id: 464, answer: "");
    }
    //!--------------------------
    //*check box
    if (anatomicalSymptomsCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 469, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 470, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 472, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[3] == true) {
      sendDataCtrl.addAnswer(id: 473, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[4] == true) {
      sendDataCtrl.addAnswer(id: 474, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[5] == true) {
      sendDataCtrl.addAnswer(id: 475, answer: "");
    }

    if (anatomicalSymptomsCtrl.choicesBoolList[6] == true) {
      sendDataCtrl.addAnswer(id: 476, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[7] == true) {
      sendDataCtrl.addAnswer(id: 477, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList[8] == true) {
      sendDataCtrl.addAnswer(id: 478, answer: "");
    }
    if (anatomicalSymptomsCtrl.choicesBoolList
        .where((e) => e == true)
        .isEmpty) {
      sendDataCtrl.addAnswer(id: 471, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (similarSymptomsRegionCtrl.charcter == SimilarSymptomsRegion.yes) {
      sendDataCtrl.addAnswer(id: 480, answer: "");
    } else if (similarSymptomsRegionCtrl.charcter == SimilarSymptomsRegion.no) {
      sendDataCtrl.addAnswer(id: 481, answer: "");
    } else if (similarSymptomsRegionCtrl.charcter ==
        SimilarSymptomsRegion.noAnswer) {
      sendDataCtrl.addAnswer(id: 482, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (anatomyCtrl.charcter == AnatomyDeadCases.yes) {
      sendDataCtrl.addAnswer(id: 529, answer: "");
    } else if (anatomyCtrl.charcter == AnatomyDeadCases.no) {
      sendDataCtrl.addAnswer(id: 530, answer: "");
    } else if (anatomyCtrl.charcter == AnatomyDeadCases.noAnswer) {
      sendDataCtrl.addAnswer(id: 531, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (animalIsolatedCtrl.charcter == OutBreakAnimalIsolated.yes) {
      sendDataCtrl.addAnswer(id: 486, answer: "");
    } else if (animalIsolatedCtrl.charcter == OutBreakAnimalIsolated.no) {
      sendDataCtrl.addAnswer(id: 487, answer: "");
    } else if (animalIsolatedCtrl.charcter == OutBreakAnimalIsolated.noAnswer) {
      sendDataCtrl.addAnswer(id: 488, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (diseaseAppearCtrl.charcter == OutBreakDiseaseAppear.yes) {
      sendDataCtrl.addAnswer(id: 489, answer: "");
    } else if (diseaseAppearCtrl.charcter == OutBreakDiseaseAppear.no) {
      sendDataCtrl.addAnswer(id: 490, answer: "");
    } else if (diseaseAppearCtrl.charcter == OutBreakDiseaseAppear.noAnswer) {
      sendDataCtrl.addAnswer(id: 491, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (addAnimalTwoWeekCtrl.charcter == AddAnimalTwoWeek.yes) {
      sendDataCtrl.addAnswer(id: 532, answer: "");
    } else if (addAnimalTwoWeekCtrl.charcter == AddAnimalTwoWeek.no) {
      sendDataCtrl.addAnswer(id: 533, answer: "");
    } else if (addAnimalTwoWeekCtrl.charcter == AddAnimalTwoWeek.noAnswer) {
      sendDataCtrl.addAnswer(id: 534, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (exitAnimalCtrl.charcter == ExitAnimalLastWeek.yes) {
      sendDataCtrl.addAnswer(id: 535, answer: "");
    } else if (exitAnimalCtrl.charcter == ExitAnimalLastWeek.no) {
      sendDataCtrl.addAnswer(id: 536, answer: "");
    } else if (exitAnimalCtrl.charcter == ExitAnimalLastWeek.noAnswer) {
      sendDataCtrl.addAnswer(id: 537, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (outBreakImmunizationCtrl.charcter == OutBreakImmunization.yes) {
      sendDataCtrl.addAnswer(id: 538, answer: "");
    } else if (outBreakImmunizationCtrl.charcter == OutBreakImmunization.no) {
      sendDataCtrl.addAnswer(id: 539, answer: "");
    } else if (outBreakImmunizationCtrl.charcter ==
        OutBreakImmunization.noAnswer) {
      sendDataCtrl.addAnswer(id: 540, answer: "");
    }
    //!--------------------------
    //* Radio button

    if (controlMeasuresCtrl.charcter == ControlMeasuresRadio.yes) {
      sendDataCtrl.addAnswer(id: 541, answer: "");
    } else if (controlMeasuresCtrl.charcter == ControlMeasuresRadio.no) {
      sendDataCtrl.addAnswer(id: 542, answer: "");
    } else if (controlMeasuresCtrl.charcter == ControlMeasuresRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 543, answer: "");
    }
    //!--------------------------
    //* Radio button
    if (veterinaryDepartmentCtrl.charcter == VeterinaryDepartmentRadio.yes) {
      sendDataCtrl.addAnswer(id: 544, answer: "");
    } else if (veterinaryDepartmentCtrl.charcter ==
        VeterinaryDepartmentRadio.no) {
      sendDataCtrl.addAnswer(id: 545, answer: "");
    } else if (veterinaryDepartmentCtrl.charcter ==
        VeterinaryDepartmentRadio.noAnswer) {
      sendDataCtrl.addAnswer(id: 546, answer: "");
    }

    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 483,
        answer:
            "${addAnimalDateCtrl.date.year}-${addAnimalDateCtrl.date.month}-${addAnimalDateCtrl.date.day} ");
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 466,
        answer:
            "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ");

    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 492,
        answer:
            "${exitAnimalDateController.date.year}-${exitAnimalDateController.date.month}-${exitAnimalDateController.date.day} ");

    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 497,
        answer:
            "${immunizationDateCtrl.date.year}-${immunizationDateCtrl.date.month}-${immunizationDateCtrl.date.day} ");

    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 498,
        answer:
            "${reportingDateCtrl.date.year}-${reportingDateCtrl.date.month}-${reportingDateCtrl.date.day} ");
    //!--------------------------
    //* Date
    sendDataCtrl.addAnswer(
        id: 509,
        answer:
            "${resultDateCtrl.date.year}-${resultDateCtrl.date.month}-${resultDateCtrl.date.day} ");

    //!--------------------------
    //*check box
    if (measuresCheckCtrl.choicesBoolList[0] == true) {
      sendDataCtrl.addAnswer(id: 499, answer: "");
    }
    if (measuresCheckCtrl.choicesBoolList[1] == true) {
      sendDataCtrl.addAnswer(id: 500, answer: "");
    }
    if (measuresCheckCtrl.choicesBoolList[2] == true) {
      sendDataCtrl.addAnswer(id: 501, answer: "");
    }
  }

  void sendDiseaeOubreakData(int animalId) async {
    switch (animalId) {
      case 1:
        SendCowGeneralDataService.sendCowGeneralDataService(
                data: sendDataCtrl.answers)
            .then((res) {
          if (res == 200) {
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
              'Server Error',
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
        });
        break;
      case 2:
        SendCamelGeneralDataService.sendCamelGeneralDataService(
                data: sendDataCtrl.answers)
            .then((res) {
          if (res == 200) {
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
              'Server Error',
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
        });
        break;
      case 3:
        SendSheepGeneralDataService.sendSheepGeneralDataService(
                data: sendDataCtrl.answers)
            .then((res) {
          if (res == 200) {
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
              'Server Error',
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
        });
        break;
      case 4:
        SendGoatGeneralDataService.sendGoatGeneralDataService(
                data: sendDataCtrl.answers)
            .then((res) {
          if (res == 200) {
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
              'Server Error',
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
        });
        break;
      case 5:
        SendHorseGeneralDataService.sendHorseGeneralDataService(
                data: sendDataCtrl.answers)
            .then((res) {
          if (res == 200) {
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
              'Server Error',
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
        });
        break;
    }
  }

  void diseaseOutbreakEndDate(int animalId) {
    switch (animalId) {
      case 1: //! cow type
        net.checkInternet().then((value) {
          if (value) {
            net.checkInternet().then((value) {
              if (value) {
                EndSectioDateService.endCowSectioDateService(
                        sectionId: 9, date: "${DateTime.now()}")
                    .then((res) {
                  if (res == 200) {
                    fillAnswerListWithData();
                    sendDiseaeOubreakData(animalId);
                  } else if (res == 401) {
                    Get.offAll(() => const LoginScreen());
                  } else if (res == 400) {
                    Get.snackbar("you should add herd first".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else if (res == 500) {
                    Get.snackbar("server error".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else {
                    Get.snackbar("something went wrong".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  }
                });
              }
            });
          }
        });
        break;
      case 2: //! camel type
        net.checkInternet().then((value) {
          if (value) {
            net.checkInternet().then((value) {
              if (value) {
                EndSectioDateService.endCamelSectioDateService(
                        sectionId: 9, date: "${DateTime.now()}")
                    .then((res) {
                  if (res == 200) {
                    fillAnswerListWithData();
                    sendDiseaeOubreakData(animalId);
                  } else if (res == 401) {
                    Get.offAll(() => const LoginScreen());
                  } else if (res == 400) {
                    Get.snackbar("you should add herd first".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else if (res == 500) {
                    Get.snackbar("server error".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else {
                    Get.snackbar("something went wrong".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  }
                });
              }
            });
          }
        });
        break;

      case 3: //! sheep type
        net.checkInternet().then((value) {
          if (value) {
            net.checkInternet().then((value) {
              if (value) {
                EndSectioDateService.endSheepSectioDateService(
                        sectionId: 9, date: "${DateTime.now()}")
                    .then((res) {
                  if (res == 200) {
                    fillAnswerListWithData();
                    sendDiseaeOubreakData(animalId);
                  } else if (res == 401) {
                    Get.offAll(() => const LoginScreen());
                  } else if (res == 400) {
                    Get.snackbar("you should add herd first".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else if (res == 500) {
                    Get.snackbar("server error".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else {
                    Get.snackbar("something went wrong".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  }
                });
              }
            });
          }
        });
        break;
      case 4: //! goat type
        net.checkInternet().then((value) {
          if (value) {
            net.checkInternet().then((value) {
              if (value) {
                EndSectioDateService.endGoatSectioDateService(
                        sectionId: 9, date: "${DateTime.now()}")
                    .then((res) {
                  if (res == 200) {
                    fillAnswerListWithData();
                    sendDiseaeOubreakData(animalId);
                  } else if (res == 401) {
                    Get.offAll(() => const LoginScreen());
                  } else if (res == 400) {
                    Get.snackbar("you should add herd first".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else if (res == 500) {
                    Get.snackbar("server error".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else {
                    Get.snackbar("something went wrong".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  }
                });
              }
            });
          }
        });
        break;
      case 5: //! horse type
        net.checkInternet().then((value) {
          if (value) {
            net.checkInternet().then((value) {
              if (value) {
                EndSectioDateService.endHorseSectioDateService(
                        sectionId: 9, date: "${DateTime.now()}")
                    .then((res) {
                  if (res == 200) {
                    fillAnswerListWithData();
                    sendDiseaeOubreakData(animalId);
                  } else if (res == 401) {
                    Get.offAll(() => const LoginScreen());
                  } else if (res == 400) {
                    Get.snackbar("you should add herd first".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else if (res == 500) {
                    Get.snackbar("server error".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  } else {
                    Get.snackbar("something went wrong".tr, "",
                        backgroundColor: secondaryColor, colorText: whiteColor);
                  }
                });
              }
            });
          }
        });
        break;
    }
  }
}
