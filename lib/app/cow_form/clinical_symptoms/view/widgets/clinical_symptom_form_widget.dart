import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../initial_diagnosis/view/screen/initial_diagnosis_screen.dart';
import '../../controller/cow_disease_controller.dart';
import 'artificial_form_widget.dart';
import 'cowa_mastitis_form_widget.dart';
import 'diarrhea_form_widget.dart';
import 'insect_form_widget.dart';
import 'lamp_form_widget.dart';
import 'miscarriage_form_widget.dart';

class ClinicalSymptomFormWidget extends StatelessWidget {
  const ClinicalSymptomFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Stack(
        children: [
          GetBuilder<DiseaseCheckBoxController>(
              init: DiseaseCheckBoxController(),
              builder: (check) {
                return ListView(
                  children: [
                    ListTile(
                      title: const Text('Cows mastitis'),
                      leading: Checkbox(
                        value: check.mastitis,
                        onChanged: (val) {
                          check.mastitisonChange(val);
                          if (val == true) {
                            showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                enableDrag: false,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.05,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  1.97,
                                              child:
                                                  const CowsMastitisFormWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: ElevatedButton(
                                              child: const Text(
                                                'data confirmation',
                                                style: TextStyle(
                                                  color: whiteColor,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('limp in cows'),
                      leading: Checkbox(
                        value: check.limp,
                        onChanged: (val) {
                          check.limpOnChange(val);
                          if (val == true) {
                            showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                enableDrag: false,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.05,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  1.97,
                                              child: const LampFormWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: ElevatedButton(
                                              child: const Text(
                                                'data confirmation',
                                                style: TextStyle(
                                                  color: whiteColor,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Miscarriage in Farms'),
                      leading: Checkbox(
                        value: check.miscarriage,
                        onChanged: (val) {
                          check.miscarriageonChange(val);
                          if (val == true) {
                            showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                enableDrag: false,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.05,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  1.97,
                                              child:
                                                  const MiscarriageFormWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: ElevatedButton(
                                              child: const Text(
                                                'data confirmation',
                                                style: TextStyle(
                                                  color: whiteColor,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Diarrhea and pneumonia in calves'),
                      leading: Checkbox(
                        value: check.diarrhea,
                        onChanged: (val) {
                          check.diarrheaonChange(val);
                          if (val == true) {
                            showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                enableDrag: false,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.05,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  1.97,
                                              child: const DiarrheaFormWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: ElevatedButton(
                                              child: const Text(
                                                'data confirmation',
                                                style: TextStyle(
                                                  color: whiteColor,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Artificial Insemination'),
                      leading: Checkbox(
                        value: check.artificialInsemination,
                        onChanged: (val) {
                          check.artificialInseminationonChange(val);
                          if (val == true) {
                            showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                enableDrag: false,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.05,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  1.97,
                                              child:
                                                  const ArtificialFormWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: ElevatedButton(
                                              child: const Text(
                                                'data confirmation',
                                                style: TextStyle(
                                                  color: whiteColor,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('insects'),
                      leading: Checkbox(
                        value: check.insects,
                        onChanged: (val) {
                          check.insectsonChange(val);
                          if (val == true) {
                            showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                enableDrag: false,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height /
                                        1.05,
                                    color: Colors.white,
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  1.97,
                                              child: const InsectFormWidget(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: ElevatedButton(
                                              child: const Text(
                                                'data confirmation',
                                                style: TextStyle(
                                                  color: whiteColor,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          }
                        },
                      ),
                    ),

                    //! others
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 40, top: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: primaryColor,
                        maxLines: 2,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: greyColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelText: "Others",
                            hintText: "Others",
                            labelStyle: const TextStyle(
                                height: 1.1,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)
                            //enabledBorder: InputBorder.none
                            ),
                        textInputAction: TextInputAction.done,
                        onSaved: (val) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'error';
                          }
                          return null;
                        }, // enabledBorder: InputBorder.none,
                      ),
                    ),
                  ],
                );
              }),
          //!Submit (Next Buttom)
          Align(
           alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Get.to(const InitialdiagnosisScreen());
              },
              child: Get.locale == const Locale('ar')
                  ? SvgPicture.asset(
                      "assets/icons/add-ar.svg",
                      width: MediaQuery.of(context).size.width / 10,
                      height: MediaQuery.of(context).size.height / 10,
                    )
                  : SvgPicture.asset(
                      "assets/icons/add-en.svg",
                      width: MediaQuery.of(context).size.width / 10,
                      height: MediaQuery.of(context).size.height / 10,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
