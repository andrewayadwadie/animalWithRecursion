import 'dart:developer';

import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/controller/internet_connectivity_controller.dart';
import '../../../utils/db/auth_shared_preferences.dart';
import '../../../utils/style.dart';
import '../../auth/login_screen.dart';
import '../../camel_farm/add_camel_herd/view/screen/camel_herd_screen.dart';
import '../../camel_farm/camel_diseases/view/screen/camel_diseases_screen.dart';
import '../../camel_farm/camel_feeding/view/screen/camel_feeding_screen.dart';
import '../../camel_farm/camel_health_practices/view/screen/camel_health_practices_screen.dart';
import '../../camel_farm/camel_health_practices_operational_biosecurity/view/screen/camel_operational_biosecurity_screen.dart';
import '../../camel_farm/camel_housing/view/screen/camel_housing_scren.dart';
import '../../camel_farm/camel_immunization_new/view/screen/camel_immunization_new_screen.dart';
import '../../camel_farm/camel_lab_info/view/screen/camel_lab_info_screen.dart';
import '../../camel_farm/camel_milker/view/screen/camel_milker_screen.dart';
import '../../camel_farm/camel_reproduction/view/screen/camel_reproduction_screen.dart';
import '../../camel_farm/camel_symptoms/view/screen/camel_symptoms_screen.dart';
import '../../camel_farm/clinical_examination/view/screen/camel_clinical_examination_screen.dart';
import '../../camel_farm/general_management/view/screen/general_management_screen.dart';
import '../../chiken_farm/screen/chiken_screen.dart';
import '../../cow_farm/cow_clinical_examination/view/screen/cow_clinical_examination_screen.dart';
import '../../cow_farm/cow_diseases/view/screen/cow_diseases_screen.dart';
import '../../cow_farm/cow_feeding/view/screen/cow_feeding_screen.dart';
import '../../cow_farm/cow_general_management/view/screen/cow_general_management_screen.dart';
import '../../cow_farm/cow_health_practices/view/screen/cow_health_practices_screen.dart';
import '../../cow_farm/cow_health_practices_operational_biosecurity/view/screen/cow_operational_biosecurity_screen.dart';
import '../../cow_farm/cow_herd/view/screen/cow_herd_screen.dart';
import '../../cow_farm/cow_housing/view/screen/cow_housing_scren.dart';
import '../../cow_farm/cow_immunization_new/view/screen/cow_immunization_new_screen.dart';
import '../../cow_farm/cow_lab_info/view/screen/cow_lab_info_screen.dart';
import '../../cow_farm/cow_milker/view/screen/cow_milker_screen.dart';
import '../../cow_farm/cow_reproduction/view/screen/cow_reproduction_screen.dart';
import '../../cow_farm/cow_symptoms/view/screen/cow_symptoms_screen.dart';
import '../../disease_outbreak/view/screen/disease_outbreak_screen.dart';
import '../../goat_farm/goat_clinical_examination/view/screen/goat_clinical_examination_screen.dart';
import '../../goat_farm/goat_diseases/view/screen/goat_diseases_screen.dart';
import '../../goat_farm/goat_feeding/view/screen/goat_feeding_screen.dart';
import '../../goat_farm/goat_general_management/view/screen/goat_general_management_screen.dart';
import '../../goat_farm/goat_health_practices/view/screen/goat_health_practices_screen.dart';
import '../../goat_farm/goat_health_practices_operational_biosecurity/view/screen/goat_operational_biosecurity_screen.dart';
import '../../goat_farm/goat_herd/view/screen/goat_herd_screen.dart';
import '../../goat_farm/goat_housing/view/screen/goat_housing_scren.dart';
import '../../goat_farm/goat_immunization_new/view/screen/goat_immunization_new_screen.dart';
import '../../goat_farm/goat_lab_info/view/screen/goat_lab_info_screen.dart';
import '../../goat_farm/goat_milker/view/screen/goat_milker_screen.dart';
import '../../goat_farm/goat_reproduction/view/screen/goat_reproduction_screen.dart';
import '../../goat_farm/goat_symptoms/view/screen/goat_symptoms_screen.dart';
import '../../horse_farm/horse_clinical_examination/view/screen/horse_clinical_examination_screen.dart';
import '../../horse_farm/horse_diseases/view/screen/horse_diseases_screen.dart';
import '../../horse_farm/horse_feeding/view/screen/horse_feeding_screen.dart';
import '../../horse_farm/horse_general_management/view/screen/horse_general_management_screen.dart';
import '../../horse_farm/horse_health_practices/view/screen/horse_health_practices_screen.dart';
import '../../horse_farm/horse_health_practices_operational_biosecurity/view/screen/horse_operational_biosecurity_screen.dart';
import '../../horse_farm/horse_herd/view/screen/horse_herd_screen.dart';
import '../../horse_farm/horse_housing/view/screen/horse_housing_scren.dart';
import '../../horse_farm/horse_immunization_new/view/screen/horse_immunization_new_screen.dart';
import '../../horse_farm/horse_lab_info/view/screen/horse_lab_info_screen.dart';
import '../../horse_farm/horse_milker/view/screen/horse_milker_screen.dart';
import '../../horse_farm/horse_reproduction/view/screen/horse_reproduction_screen.dart';
import '../../horse_farm/horse_symptoms/view/screen/horse_symptoms_screen.dart';
import '../../sheep_farm/sheep_clinical_examination/view/screen/sheep_clinical_examination_screen.dart';
import '../../sheep_farm/sheep_diseases/view/screen/sheep_diseases_screen.dart';
import '../../sheep_farm/sheep_feeding/view/screen/sheep_feeding_screen.dart';
import '../../sheep_farm/sheep_general_management/view/screen/sheep_general_management_screen.dart';
import '../../sheep_farm/sheep_health_practices/view/screen/sheep_health_practices_screen.dart';
import '../../sheep_farm/sheep_health_practices_operational_biosecurity/view/screen/sheep_operational_biosecurity_screen.dart';
import '../../sheep_farm/sheep_herd/view/screen/sheep_herd_screen.dart';
import '../../sheep_farm/sheep_housing/view/screen/sheep_housing_scren.dart';
import '../../sheep_farm/sheep_immunization_new/view/screen/sheep_immunization_new_screen.dart';
import '../../sheep_farm/sheep_lab_info/view/screen/sheep_lab_info_screen.dart';
import '../../sheep_farm/sheep_milker/view/screen/sheep_milker_screen.dart';
import '../../sheep_farm/sheep_reproduction/view/screen/sheep_reproduction_screen.dart';
import '../../sheep_farm/sheep_symptoms/view/screen/sheep_symptoms_screen.dart';
 
import '../services/section_date_service.dart';

class AllSectionController extends GetxController {
  //! internet check for all sections
  InternetController internetController = Get.put(InternetController());
  //! list of images of sections
  List<String> sectionImageList = [
    "$sectionImagePath/livestock.png", //? add herd
    "$sectionImagePath/time.png", //? general management
    "$sectionImagePath/pet-bowl.png", //? feeding
    "$sectionImagePath/animals.png", //? health practices
    "$sectionImagePath/smart-farm.png", //? health practices opertional
    "$sectionImagePath/barn.png", //? housing
    "$sectionImagePath/milking (2).png", //? milker
    "$sectionImagePath/stork.png", //? reproduction
    "$sectionImagePath/veterinary.png", //?clinical
    "$sectionImagePath/distribution.png", //? Disease Outbreak
    "$sectionImagePath/vaccinated.png", //?immunization
    "$sectionImagePath/microscope.png", //?lab
    "$sectionImagePath/coronavirus.png", //? symptoms
    "$sectionImagePath/cow.png", //? disease
  ];
  //! list of names of sections
  List<String> sectionTitles = [
    'Add Herd Information'.tr,
    'Farm General Management '.tr,
    'Feeding'.tr,
    'Health Practices'.tr,
    'Health Practices Opertional'.tr,
    'Housing'.tr,
    'Milker'.tr,
    'Reproduction'.tr,
    'Clinical Examination'.tr,
    'Disease Outbreak'.tr,
    'Immunizations'.tr,
    'Lab Information'.tr,
    'Farm Symptoms'.tr,
    'Farm Diseases'.tr,
  ];
  //! Navigator Logics for all sections
  void choiceSection(int animalId, int index /*section number  */) async {
    switch (animalId) {
      //! cow type case
      case 1:
        switch (index) {
          case 0: //! add herd
            Get.to(() => CowHerdScreen());
            break;
          case 1: //! general management
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 1,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowGeneralManagementScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 2: //! feeding
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 2,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowFeedingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 3: //! health practices
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 3,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowHealthPracticesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 4: //! health practices opertional
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 4,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() =>
                          CowHealthPracticesOpertionalBiosecurityScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 5: //! housing
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 5,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowHousingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 6: //! Milker
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 6,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowMilkerScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 7: //! Reproduction
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 7,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowReproductionScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 8: //! clinical examination
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 8,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowclinicalExaminationScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 9: //! Disease Outbreak
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 9,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => DiseaseOutbreak(
                            animalId: animalId,
                          ));
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 10: //! Immunization
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 10,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowImmunizationNewScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 11: //! Lab
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 11,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowLabInfoScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 12: //! Symptoms
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 12,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowSymptomsScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
          case 13: //! Disease
            if (SharedPreferencesHelper.getCowHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCowSectioDateService(
                    sectionId: 13,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CowDiseasesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }
            break;
        }
        break;
      //! camel type case
      case 2:
        switch (index) {
          case 0:
            Get.to(() => CamelHerdScreen());

            break;
          case 1:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 1,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GeneralManagementScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 2:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 2,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelFeedingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 3:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 3,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelHealthPracticesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 4:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 4,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() =>
                          CamelHealthPracticesOpertionalBiosecurityScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 5:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 5,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelHousingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 6:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 6,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelMilkerScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 7:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 7,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelReproductionScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 8:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 8,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelclinicalExaminationScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 9:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 9,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => DiseaseOutbreak(animalId: animalId));
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 10:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 10,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelImmunizationNewScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 11:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 11,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelLabInfoScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 12:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 12,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelSymptomsScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 13:
            if (SharedPreferencesHelper.getCamelHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startCamelSectioDateService(
                    sectionId: 13,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => CamelDiseasesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
        }
        break;
      //! Sheep type case
      case 3:
        switch (index) {
          case 0:
            Get.to(() => SheepHerdScreen());

            break;
          case 1:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 1,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepGeneralManagementScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 2:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 2,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepFeedingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 3:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 3,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepHealthPracticesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 4:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 4,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() =>
                          SheepHealthPracticesOpertionalBiosecurityScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 5:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 5,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepHousingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 6:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 6,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepMilkerScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 7:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 7,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepReproductionScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 8:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 8,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepclinicalExaminationScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 9:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 9,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => DiseaseOutbreak(animalId: animalId));
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 10:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 10,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepImmunizationNewScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 11:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 11,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepLabInfoScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 12:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 12,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepSymptomsScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 13:
            if (SharedPreferencesHelper.getSheepHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startSheepSectioDateService(
                    sectionId: 13,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => SheepDiseasesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
        }
        break;
      //! Goat type case
      case 4:
        switch (index) {
          case 0:
            Get.to(() => GoatHerdScreen());

            break;
          case 1:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 1,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatGeneralManagementScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 2:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 2,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatFeedingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 3:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 3,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatHealthPracticesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 4:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 4,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() =>
                          GoatHealthPracticesOpertionalBiosecurityScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 5:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 5,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatHousingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 6:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 6,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatMilkerScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 7:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 7,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatReproductionScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 8:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 8,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatclinicalExaminationScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 9:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 9,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => DiseaseOutbreak(animalId: animalId));
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 10:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 10,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatImmunizationNewScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 11:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 11,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatLabInfoScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 12:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 12,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatSymptomsScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 13:
            if (SharedPreferencesHelper.getGoatHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startGoatSectioDateService(
                    sectionId: 13,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => GoatlDiseasesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
        }

        break;
      //! horse type case
      case 5:
        switch (index) {
          case 0:
            Get.to(() => HorseHerdScreen());
            log("Horse_herd_screen");
            break;
          case 1:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 1,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseGeneralManagementScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 2:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 2,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseFeedingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 3:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 3,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseHealthPracticesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 4:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 4,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() =>
                          HorseHealthPracticesOpertionalBiosecurityScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 5:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 5,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseHousingScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 6:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 6,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseMilkerScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 7:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 7,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseReproductionScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 8:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 8,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseclinicalExaminationScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 9:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 9,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => DiseaseOutbreak(animalId: animalId));
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 10:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 10,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseImmunizationNewScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 11:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 11,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseLabInfoScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 12:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 12,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseSymptomsScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
          case 13:
            if (SharedPreferencesHelper.getHorseHerdValue() != 0) {
              internetController.checkInternet().then((value) {
                if (value) {
                  StartSectioDateService.startHorseSectioDateService(
                    sectionId: 1,
                    date: "${DateTime.now()}",
                  ).then((res) {
                    if (res == 200) {
                      Get.to(() => HorseDiseasesScreen());
                    } else if (res == 401) {
                      Get.offAll(() => const LoginScreen());
                    } else if (res == 400) {
                      Get.snackbar("you should add herd first".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else if (res == 500) {
                      Get.snackbar("server error".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    } else {
                      Get.snackbar("something went wrong".tr, "",
                          backgroundColor: secondaryColor,
                          colorText: whiteColor);
                    }
                  });
                }
              });
            } else {
              Get.snackbar("you should add herd first".tr, "",
                  backgroundColor: secondaryColor, colorText: whiteColor);
            }

            break;
        }
        break;
      //! chicken type case
      case 6:
        Get.to(() => const ChickenComingSoonScreen());
        break;
    }
  }
}
