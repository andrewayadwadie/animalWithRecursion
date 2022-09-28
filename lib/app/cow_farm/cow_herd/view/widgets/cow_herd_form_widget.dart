import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../add_new_farm/view/widgets/activity_type_field_widget.dart';
import '../../../../add_new_farm/view/widgets/education_system_widget.dart';
import '../../../../add_new_farm/view/widgets/farm_size_field_widget.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_herd_form_controller.dart';
import 'cow_dynasty_widget.dart';
import 'cow_herd_textfield_widget.dart';

class CowHerdFormWidget extends StatelessWidget {
  const CowHerdFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CowHerdFormController>(
        init: CowHerdFormController(),
        builder: (ctrl) {
          return ListView(
            children: [
              //! Number of Animals in Farm
              LabelWidget(label: "The total number of animals on the farm".tr),
              CowHerdTextFieldWidget(
                title: "The total number of animals on the farm".tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter number of animals in farm";
                  } else if (value.length > 7) {
                    return "Please enter a valid number";
                  }
                  return null;
                },
                controller: ctrl.numberOfAnimalsCtrl,
              ),
              //! Number of cases
              LabelWidget(label: "The number of infected cases on the farm".tr),
              CowHerdTextFieldWidget(
                  title: "The number of infected cases on the farm".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfCasesCtrl),
              //! Number of Adults
              LabelWidget(
                  label: "Number of Adults Bull and Cow(from 2 to 8 year) ".tr),
              CowHerdTextFieldWidget(
                  title: "Number of adults".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAdultsCtrl),

              //! Number of Adults of Cases
              LabelWidget(label: "Number of sick adults".tr),
              CowHerdTextFieldWidget(
                  title: "Number of sick adults".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAdultsCtrlOfCases),
              //! Number of virginity
              LabelWidget(
                  label:
                      "mature before breeding (heifer and bull) - from 1 to 2 years"
                          .tr),
              CowHerdTextFieldWidget(
                  title: "Number of mature before breeding".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfVirginityCtrl),
              //! Number of virginity Of Cases
              LabelWidget(
                  label:
                      "Number of infacted cases of mature before breeding ".tr),
              CowHerdTextFieldWidget(
                  title:
                      "Number of infacted cases of mature before breeding ".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfVirginityCtrlOfCases),

              //! Number of Aged
              LabelWidget(label: "Number of Old (Over 8 years old) ".tr),
              CowHerdTextFieldWidget(
                  title: "Number of Old".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAgedCtrl),
              //! Number of Aged of Cases
              LabelWidget(label: "Number of infacted cases of Old ".tr),
              CowHerdTextFieldWidget(
                  title: "Number of infacted cases of Old ".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAgedCtrlOfCases),

              //! Number of  infant
              LabelWidget(label: "Number of Calves (From 0 to  11 months) ".tr),
              CowHerdTextFieldWidget(
                  title: "Number of Calves".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfInfantCtrl),
              //! Number of  infant of Cases
              LabelWidget(label: "Number of infacted Cases of Claves ".tr),
              CowHerdTextFieldWidget(
                  title: "Number of infacted Cases of Claves ".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfInfantCtrlOfCases),

              //! Number of ablactation
              LabelWidget(
                  label:
                      "Number of Weaners (heifer and bull) - from 11 months to one year "
                          .tr),
              CowHerdTextFieldWidget(
                  title: "Number of Weaners".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAblactionCtrl),
              //! Number of ablactation of Cases
              LabelWidget(label: "Number of infacted cases of Weaners".tr),
              CowHerdTextFieldWidget(
                  title: "Number of infacted cases of Weaners".tr,
                  validator: (value) {
                    if (int.parse(value ?? "0") >
                        int.parse(ctrl.numberOfAnimalsCtrl.text)) {
                      return "Number of ablactation in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAblactionCtrlOfCases),

              //! Number of deaths
              LabelWidget(label: "Number of deaths".tr),
              CowHerdTextFieldWidget(
                  title: "Number of deaths".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfDeathsCtrl),
              //! Number of sudden death
              LabelWidget(label: "Number of sudden death".tr),
              CowHerdTextFieldWidget(
                  title: "Number of sudden death".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfSuddenDeathCtrl),
              //!number of males
              LabelWidget(label: "Number of males".tr),

              CowHerdTextFieldWidget(
                  title: "Number of males".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfMalesCtrl),
              //!number of males of Cases
              LabelWidget(label: "Number of males Of Cases ".tr),

              CowHerdTextFieldWidget(
                  title: "Number of males Of Cases ".tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfMalesCtrlOfCases),

              //!number of females
              LabelWidget(label: 'Number of females'.tr),
              CowHerdTextFieldWidget(
                  title: 'Number of females'.tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfFemalesCtrl),
              //!number of females of Cases
              LabelWidget(label: 'Number of females Of Cases '.tr),
              CowHerdTextFieldWidget(
                  title: 'Number of females Of Cases '.tr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of animals in farm";
                    } else if (value.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfFemalesCtrlOfCases),

              //!<<<<<< Farm Size>>>
              LabelWidget(label: 'Farm Size : '.tr),
              const FarmSizeFieldWidget(),
              //!<<<<<< Farm activity type>>>
              LabelWidget(label: 'Farm activity type : '.tr),
              const ActivityTypeFieldWidget(),

              //!dynasty
              LabelWidget(label: "Cow Dynasty".tr),
              const CowDynastyWidget(),

              //! Education system
              LabelWidget(label: 'Education System: '.tr),
              const EduSysWidget(),

              //!Date

              GetBuilder<DateController>(
                  init: DateController(),
                  builder: (dateCtrl) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: 'date of epidemiological survey : '.tr),
                        CupertinoButton(
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 1.8,
                                height: MediaQuery.of(context).size.height / 13,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: whiteColor, fontSize: 14),
                                )),
                            onPressed: () => dateCtrl.onDateChange(context)),
                      ],
                    );
                  }),

              //!  notes
              LabelWidget(label: 'Notes : '.tr),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
                child: TextFormField(
                  controller: ctrl.noteCtrl,
                  keyboardType: TextInputType.text,
                  cursorColor: primaryColor,
                  maxLines: 2,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: greyColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Notes : '.tr,
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),

              //?<<<<<<Space>>>>>>>
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
            ],
          );
        });
  }
}
