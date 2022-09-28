import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../clinical_symptoms/view/screen/clinical_symptoms_screen.dart';
import '../../controller/checkbox_controller.dart';
import '../../controller/radio_button_controller.dart';
import '../../controller/side_effect_radio_controller.dart';

class ImmunizationFormWidget extends StatelessWidget {
  const ImmunizationFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RadioController>(
        init: RadioController(),
        builder: (radio) {
          return GetBuilder<SideEffectRadioController>(
              init: SideEffectRadioController(),
              builder: (sideEffectCtrl) {
                return Stack(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.2,
                    child: ListView(
                      children: [
                        const Text(
                          "Was Immunization done in the previous year?",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ListTile(
                          title: const Text('Yes'),
                          leading: Radio<ImmunizationExist>(
                            value: ImmunizationExist.yes,
                            groupValue: radio.charcter,
                            onChanged: (val) =>
                                radio.onChange(val ?? ImmunizationExist.yes),
                          ),
                        ),
                        ListTile(
                          title: const Text('No'),
                          leading: Radio<ImmunizationExist>(
                            value: ImmunizationExist.no,
                            groupValue: radio.charcter,
                            onChanged: (val) =>
                                radio.onChange(val ?? ImmunizationExist.no),
                          ),
                        ),
                        radio.charcter == ImmunizationExist.yes
                            ? GetBuilder<CheckBoxController>(
                                init: CheckBoxController(),
                                builder: (check) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Immunizations Types :",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Brucellosis'),
                                        leading: Checkbox(
                                          value: check.brucellosis,
                                          onChanged: (val) =>
                                              check.brucellosisonChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text(
                                            'Bovine Ephemoral fever'),
                                        leading: Checkbox(
                                          value: check.bef,
                                          onChanged: (val) =>
                                              check.befChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title:
                                            const Text('clostridial diseases'),
                                        leading: Checkbox(
                                          value: check.cd,
                                          onChanged: (val) =>
                                              check.cdonChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Paseurlosis'),
                                        leading: Checkbox(
                                          value: check.pasteurllosis,
                                          onChanged: (val) =>
                                              check.pasteurllosisonChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('FMD'),
                                        leading: Checkbox(
                                          value: check.fmd,
                                          onChanged: (val) =>
                                              check.fmdChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Rvf'),
                                        leading: Checkbox(
                                          value: check.rvf,
                                          onChanged: (val) =>
                                              check.rvfChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Bvd'),
                                        leading: Checkbox(
                                          value: check.bvd,
                                          onChanged: (val) =>
                                              check.bvdChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title:
                                            const Text('Rota Corona Vaccine'),
                                        leading: Checkbox(
                                          value: check.rcv,
                                          onChanged: (val) =>
                                              check.rcvChange(val),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Lumpy skin disease'),
                                        leading: Checkbox(
                                          value: check.lsd,
                                          onChanged: (val) =>
                                              check.lsdChange(val),
                                        ),
                                      ),

                                      //! others
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, right: 40, top: 30),
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          cursorColor: primaryColor,
                                          maxLines: 2,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 10.0),
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    width: 2,
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 2, color: greyColor),
                                                borderRadius:
                                                    BorderRadius.circular(8),
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

                                      //!Immunization way
                                      const LabelWidget(
                                          label: "Immunization Way ?  "),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          cursorColor: primaryColor,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 10.0),
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    width: 2,
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 2, color: greyColor),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              labelText: 'Immunization way'.tr,
                                              hintText: 'Immunization way'.tr,
                                              labelStyle: const TextStyle(
                                                  height: 1.1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)
                                              //enabledBorder: InputBorder.none
                                              ),
                                          textInputAction: TextInputAction.next,
                                          onSaved: (val) {},
                                          validator: (value) {
                                            return null;
                                          }, // enabledBorder: InputBorder.none,
                                        ),
                                      ),
                                      //!Frequency of vaccination
                                      const LabelWidget(
                                          label:
                                              "Frequency of vaccination ?  "),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10, top: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          cursorColor: primaryColor,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 10.0),
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    width: 2,
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 2, color: greyColor),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              labelText:
                                                  'Frequency of vaccination'.tr,
                                              hintText:
                                                  'Frequency of vaccination'.tr,
                                              labelStyle: const TextStyle(
                                                  height: 1.1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)
                                              //enabledBorder: InputBorder.none
                                              ),
                                          textInputAction: TextInputAction.next,
                                          onSaved: (val) {},
                                          validator: (value) {
                                            return null;
                                          }, // enabledBorder: InputBorder.none,
                                        ),
                                      ),

                                      //!are there any side effects of immunization ?
                                      const Text(
                                        "are there any side effects of immunization ?",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('Yes'),
                                        leading: Radio<ImmunizationSideEffect>(
                                          value: ImmunizationSideEffect.yes,
                                          groupValue: sideEffectCtrl.charcter,
                                          onChanged: (val) =>
                                              sideEffectCtrl.onChange(val ??
                                                  ImmunizationSideEffect.yes),
                                        ),
                                      ),
                                      ListTile(
                                        title: const Text('No'),
                                        leading: Radio<ImmunizationSideEffect>(
                                          value: ImmunizationSideEffect.no,
                                          groupValue: sideEffectCtrl.charcter,
                                          onChanged: (val) =>
                                              sideEffectCtrl.onChange(val ??
                                                  ImmunizationSideEffect.no),
                                        ),
                                      ),
                                      if (sideEffectCtrl.charcter ==
                                          ImmunizationSideEffect.yes)

                                        //!How many animals have symptoms?
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const LabelWidget(
                                                label:
                                                    "How many animals have symptoms?  "),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10, top: 5),
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                cursorColor: primaryColor,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets.symmetric(
                                                            vertical: 8.0,
                                                            horizontal: 10.0),
                                                    border: OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                              width: 2,
                                                              color:
                                                                  Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color: greyColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    labelText:
                                                        'Animal Number'.tr,
                                                    hintText:
                                                        'Animal Number'.tr,
                                                    labelStyle: const TextStyle(
                                                        height: 1.1,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)
                                                    //enabledBorder: InputBorder.none
                                                    ),
                                                textInputAction:
                                                    TextInputAction.next,
                                                onSaved: (val) {},
                                                validator: (value) {
                                                  return null;
                                                }, // enabledBorder: InputBorder.none,
                                              ),
                                            ),
                                          ],
                                        )
                                    ],
                                  );
                                })
                            : const SizedBox(),
                        //!Submit (Next Buttom)
                      ],
                    ),
                  ),
                  Align(
                     alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(const ClinicalSymptomScreen());
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
                ]);
              });
        });
  }
}
