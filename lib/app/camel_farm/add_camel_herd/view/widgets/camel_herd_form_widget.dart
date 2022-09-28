import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../add_new_farm/view/widgets/activity_type_field_widget.dart';
import '../../../../add_new_farm/view/widgets/education_system_widget.dart';
import '../../../../add_new_farm/view/widgets/farm_size_field_widget.dart';
import '../../../../cow_form/general_info/controller/date_picker_controller.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/camel_herd_form_controller.dart';
import 'camel_dynasty_widget.dart';
import 'camel_herd_textfield_widget.dart';

class CamelHerdFormWidget extends StatelessWidget {
  const CamelHerdFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamelHerdFormController>(
        init: CamelHerdFormController(),
        builder: (ctrl) {
          return ListView(
            children: [
              //! Number of Animals in Farm
              LabelWidget(label: "Number of animals in farm : ".tr),
              CamelHerdTextFieldWidget(
                title: "Number of animals in farm : ".tr,
                onChange: (val) {
                  ctrl.changenumberOfAnimals(val ?? "");
                },
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
              LabelWidget(label: "Number of cases : ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of cases : ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of cases in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfCasesCtrl),
              //! Number of Adults
              LabelWidget(
                  label: "Number of Adults (from 6 years to 15 year) ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of adults".tr,
                  onChange: (val) {
                    ctrl.changenumberOfAdults(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of Adults in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAdultsCtrl),

              //! Number of Adults of Cases
              LabelWidget(label: "Number of Adults Of Cases".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of Adults Of Cases".tr,
                  onChange: (val) {
                    ctrl.changenumberOfAdultsOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of Adults in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAdultsCtrlOfCases),
              //! Number of virginity
              LabelWidget(label: "Number of virginity (From 4 to 6 years) ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of virginity".tr,
                  onChange: (val) {
                    ctrl.changenumberOfVirginity(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of virginity in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfVirginityCtrl),
              //! Number of virginity Of Cases
              LabelWidget(label: "Number of virginity Of Cases".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of virginity Of Cases".tr,
                  onChange: (val) {
                    ctrl.changenumberOfVirginityOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of virginity in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfVirginityCtrlOfCases),

              //! Number of Aged
              LabelWidget(label: "Number of Aged (Over 15 years old) ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of Aged".tr,
                  onChange: (val) {
                    ctrl.changenumberOfAged(
                        val ?? ""); // enabledBorder: InputBorder.none,
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of Aged in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAgedCtrl),
              //! Number of Aged of Cases
              LabelWidget(label: "Number of Aged of Cases ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of Aged of Cases ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfAgedOfCases(
                        val ?? ""); // enabledBorder: InputBorder.none,
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of Aged in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAgedCtrlOfCases),

              //! Number of  infant
              LabelWidget(label: "Number of Calves (From 0 to  8 months) ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of Calves".tr,
                  onChange: (val) {
                    ctrl.changenumberOfInfant(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of infant in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfInfantCtrl),
              //! Number of  infant of Cases
              LabelWidget(label: "Number of infacted Cases of Claves ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of infacted Cases of Claves ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfInfantOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of infant in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfInfantCtrlOfCases),

              //! Number of ablactation
              LabelWidget(
                  label: "Number of Weaners  - from 8 months to one year ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of Weaners".tr,
                  onChange: (val) {
                    ctrl.changenumberOfAblaction(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of ablactation in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAblactionCtrl),
              //! Number of ablactation of Cases
              LabelWidget(label: "Number of infacted cases of Weaners".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of infacted cases of Weaners".tr,
                  onChange: (val) {
                    ctrl.changenumberOfAblactionOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of ablactation in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfAblactionCtrlOfCases),

              //! Number of deaths
              LabelWidget(label: "Number of deaths : ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of deaths : ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfDeaths(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of deaths in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfDeathsCtrl),
              //! Number of sudden death
              LabelWidget(label: "Number of sudden death : ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of sudden death : ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfSuddenDeath(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of sudden death in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfSuddenDeathCtrl),
              //!number of males
              LabelWidget(label: "Number of males: ".tr),

              CamelHerdTextFieldWidget(
                  title: "Number of males: ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfMales(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of males  in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfMalesCtrl),
              //!number of males of Cases
              LabelWidget(label: "Number of males Of Cases ".tr),

              CamelHerdTextFieldWidget(
                  title: "Number of males Of Cases ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfMalesOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of males  in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfMalesCtrlOfCases),

              //!number of females
              LabelWidget(label: "Number of females".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of females".tr,
                  onChange: (val) {
                    ctrl.changenumberOfFemales(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of females  in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfFemalesCtrl),
              //!number of females of Cases
              LabelWidget(label: "Number of females Of Cases ".tr),
              CamelHerdTextFieldWidget(
                  title: "Number of females Of Cases ".tr,
                  onChange: (val) {
                    ctrl.changenumberOfFemalesOfCases(val ?? "");
                  },
                  validator: (value) {
                    if (int.parse(value ?? "") >
                        int.parse(ctrl.numberOfAnimals)) {
                      return "Number of females  in Farm can't be more than total number of animals";
                    } else if (value!.length > 7) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  controller: ctrl.numberOfFemalesCtrlOfCases),

              //!<<<<<< Farm Size>>>
              LabelWidget(label: "Farm Size : ".tr),
              const FarmSizeFieldWidget(),
              //!<<<<<< Farm activity type>>>
              LabelWidget(label: "Farm activity type : ".tr),
              const ActivityTypeFieldWidget(),

              //!dynasty
              LabelWidget(label: "Camel Dynasty : ".tr),
              const CamelDynastyWidget(),

              //! Education system
              LabelWidget(label: "Education System: ".tr),
              const EduSysWidget(),

              //!Date

              GetBuilder<DateController>(
                  init: DateController(),
                  builder: (dateCtrl) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            label: "date of epidemiological survey : ".tr),
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
              LabelWidget(label: "Notes : ".tr),
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

                    hintText: "Notes : ".tr,

                    //enabledBorder: InputBorder.none
                  ),
                  textInputAction: TextInputAction.done,
                  onChanged: (val) {
                    ctrl.changenote(val);
                  },
                  // enabledBorder: InputBorder.none,
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
