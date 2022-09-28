import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../suspected_disease/view/screen/suspected_disease_screen.dart';
import '../../controller/abscess_controller.dart';
import '../../controller/anorexia_controller.dart';
import '../../controller/bloody_urine_controller.dart';
import '../../controller/breathing_times_controller.dart';
import '../../controller/cough_controller.dart';
import '../../controller/diarrhea_controller.dart';
import '../../controller/drooling_controller.dart';
import '../../controller/eye_redness_controller.dart';
import '../../controller/female_vaginal_secretions_controller.dart';
import '../../controller/females_milk_production_controller.dart';
import '../../controller/limp_controller.dart';
import '../../controller/nasal_secretions_controller.dart';
import '../../controller/pulse_controller.dart';
import '../../controller/rumination_controller.dart';
import '../../controller/tempreture_controller.dart';
import '../../controller/ulcer_controller.dart';
import 'abscess_widget.dart';
import 'anorexia_widget.dart';
import 'bloody_urine_widget.dart';
import 'breathing_times_widget.dart';
import 'cough_widget.dart';
import 'diarrhea_widget.dart';
import 'drooling_widget.dart';
import 'eye_redness_widget.dart';
import 'female_vaginal_secretions_widget.dart';
import 'females_milk_production_widget.dart';
import 'limp_widget.dart';
import 'nasal_secretions_widget.dart';
import 'pulse_widget.dart';
import 'rumination_widget.dart';
import 'temperature_widget.dart';
import 'ulcer_widget.dart';

class IntialDiagnosisFormWidget extends StatelessWidget {
  const IntialDiagnosisFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 1.35,
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  //! Temperature
                  GetBuilder<TemperatureController>(
                      init: TemperatureController(),
                      builder: (temp) {
                        log(temp.note);
                        return TemperatureWidget(
                          groupValue: temp.charcter,
                          onChangeNormal: (val) =>
                              temp.onChange(val ?? Temperature.normal),
                          onChangeOne: (val) =>
                              temp.onChange(val ?? Temperature.normal),
                          onChangeTwo: (val) =>
                              temp.onChange(val ?? Temperature.normal),
                          onChangeThree: (val) =>
                              temp.onChange(val ?? Temperature.normal),
                          onNoteChange: (val) => temp.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Pulse
                  GetBuilder<PulseController>(
                      init: PulseController(),
                      builder: (pluse) {
                        log(pluse.note);
                        return PulseWidget(
                          groupValue: pluse.charcter,
                          onChangeNormal: (val) =>
                              pluse.onChange(val ?? Pulse.normal),
                          onChangeOne: (val) =>
                              pluse.onChange(val ?? Pulse.normal),
                          onChangeTwo: (val) =>
                              pluse.onChange(val ?? Pulse.normal),
                          onChangeThree: (val) =>
                              pluse.onChange(val ?? Pulse.normal),
                          onNoteChange: (val) => pluse.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! BreathingTimes
                  GetBuilder<BreathingTimesController>(
                      init: BreathingTimesController(),
                      builder: (breath) {
                        return BreathingTimesWidget(
                          groupValue: breath.charcter,
                          onChangeNormal: (val) =>
                              breath.onChange(val ?? BreathingTimes.normal),
                          onChangeOne: (val) =>
                              breath.onChange(val ?? BreathingTimes.normal),
                          onChangeTwo: (val) =>
                              breath.onChange(val ?? BreathingTimes.normal),
                          onChangeThree: (val) =>
                              breath.onChange(val ?? BreathingTimes.normal),
                          onNoteChange: (val) => breath.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! limp
                  GetBuilder<LimpController>(
                      init: LimpController(),
                      builder: (limp) {
                        return LimpWidget(
                          groupValue: limp.charcter,
                          onChangeNormal: (val) =>
                              limp.onChange(val ?? Limp.normal),
                          onChangeOne: (val) =>
                              limp.onChange(val ?? Limp.normal),
                          onChangeTwo: (val) =>
                              limp.onChange(val ?? Limp.normal),
                          onChangeThree: (val) =>
                              limp.onChange(val ?? Limp.normal),
                          onNoteChange: (val) => limp.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Abscess
                  GetBuilder<AbscessController>(
                      init: AbscessController(),
                      builder: (abscess) {
                        return AbscessWidget(
                          groupValue: abscess.charcter,
                          onChangeNormal: (val) =>
                              abscess.onChange(val ?? Abscess.normal),
                          onChangeOne: (val) =>
                              abscess.onChange(val ?? Abscess.normal),
                          onChangeTwo: (val) =>
                              abscess.onChange(val ?? Abscess.normal),
                          onChangeThree: (val) =>
                              abscess.onChange(val ?? Abscess.normal),
                          onNoteChange: (val) =>
                              abscess.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Rumination
                  GetBuilder<RuminationController>(
                      init: RuminationController(),
                      builder: (rumination) {
                        return RuminationWidget(
                          groupValue: rumination.charcter,
                          onChangeNormal: (val) =>
                              rumination.onChange(val ?? Rumination.normal),
                          onChangeOne: (val) =>
                              rumination.onChange(val ?? Rumination.normal),
                          onChangeTwo: (val) =>
                              rumination.onChange(val ?? Rumination.normal),
                          onChangeThree: (val) =>
                              rumination.onChange(val ?? Rumination.normal),
                          onNoteChange: (val) =>
                              rumination.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Ulcer
                  GetBuilder<UlcerController>(
                      init: UlcerController(),
                      builder: (ulcer) {
                        return UlcerWidget(
                          groupValue: ulcer.charcter,
                          onChangeNormal: (val) =>
                              ulcer.onChange(val ?? Ulcer.normal),
                          onChangeOne: (val) =>
                              ulcer.onChange(val ?? Ulcer.normal),
                          onChangeTwo: (val) =>
                              ulcer.onChange(val ?? Ulcer.normal),
                          onChangeThree: (val) =>
                              ulcer.onChange(val ?? Ulcer.normal),
                          onNoteChange: (val) => ulcer.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Cough
                  GetBuilder<CoughController>(
                      init: CoughController(),
                      builder: (cough) {
                        return CoughWidget(
                          groupValue: cough.charcter,
                          onChangeNormal: (val) =>
                              cough.onChange(val ?? Cough.normal),
                          onChangeOne: (val) =>
                              cough.onChange(val ?? Cough.normal),
                          onChangeTwo: (val) =>
                              cough.onChange(val ?? Cough.normal),
                          onChangeThree: (val) =>
                              cough.onChange(val ?? Cough.normal),
                          onNoteChange: (val) => cough.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! <Diarrhea
                  GetBuilder<DiarrheaController>(
                      init: DiarrheaController(),
                      builder: (diarrhea) {
                        return DiarrheaWidget(
                          groupValue: diarrhea.charcter,
                          onChangeNormal: (val) =>
                              diarrhea.onChange(val ?? Diarrhea.normal),
                          onChangeOne: (val) =>
                              diarrhea.onChange(val ?? Diarrhea.normal),
                          onChangeTwo: (val) =>
                              diarrhea.onChange(val ?? Diarrhea.normal),
                          onChangeThree: (val) =>
                              diarrhea.onChange(val ?? Diarrhea.normal),
                          onNoteChange: (val) =>
                              diarrhea.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! nasal secretions
                  GetBuilder<NasalController>(
                      init: NasalController(),
                      builder: (nasal) {
                        return NasalWidget(
                          groupValue: nasal.charcter,
                          onChangeNormal: (val) =>
                              nasal.onChange(val ?? Nasal.normal),
                          onChangeOne: (val) =>
                              nasal.onChange(val ?? Nasal.normal),
                          onChangeTwo: (val) =>
                              nasal.onChange(val ?? Nasal.normal),
                          onChangeThree: (val) =>
                              nasal.onChange(val ?? Nasal.normal),
                          onNoteChange: (val) => nasal.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! female vaginal secretions
                  GetBuilder<FemaleVaginalController>(
                      init: FemaleVaginalController(),
                      builder: (vaginal) {
                        return FemaleVaginalWidget(
                          groupValue: vaginal.charcter,
                          onChangeNormal: (val) =>
                              vaginal.onChange(val ?? FemaleVaginal.normal),
                          onChangeOne: (val) =>
                              vaginal.onChange(val ?? FemaleVaginal.normal),
                          onChangeTwo: (val) =>
                              vaginal.onChange(val ?? FemaleVaginal.normal),
                          onChangeThree: (val) =>
                              vaginal.onChange(val ?? FemaleVaginal.normal),
                          onNoteChange: (val) =>
                              vaginal.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! drooling
                  GetBuilder<DroolingController>(
                      init: DroolingController(),
                      builder: (drooling) {
                        return DroolingWidget(
                          groupValue: drooling.charcter,
                          onChangeNormal: (val) =>
                              drooling.onChange(val ?? Drooling.normal),
                          onChangeOne: (val) =>
                              drooling.onChange(val ?? Drooling.normal),
                          onChangeTwo: (val) =>
                              drooling.onChange(val ?? Drooling.normal),
                          onChangeThree: (val) =>
                              drooling.onChange(val ?? Drooling.normal),
                          onNoteChange: (val) =>
                              drooling.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Anorexia
                  GetBuilder<AnorexiaController>(
                      init: AnorexiaController(),
                      builder: (anorexia) {
                        return AnorexiaWidget(
                          groupValue: anorexia.charcter,
                          onChangeNormal: (val) =>
                              anorexia.onChange(val ?? Anorexia.normal),
                          onChangeOne: (val) =>
                              anorexia.onChange(val ?? Anorexia.normal),
                          onChangeTwo: (val) =>
                              anorexia.onChange(val ?? Anorexia.normal),
                          onChangeThree: (val) =>
                              anorexia.onChange(val ?? Anorexia.normal),
                          onNoteChange: (val) =>
                              anorexia.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! eye redness
                  GetBuilder<EyeRednessController>(
                      init: EyeRednessController(),
                      builder: (eye) {
                        return EyeRednessWidget(
                          groupValue: eye.charcter,
                          onChangeNormal: (val) =>
                              eye.onChange(val ?? EyeRedness.normal),
                          onChangeOne: (val) =>
                              eye.onChange(val ?? EyeRedness.normal),
                          onChangeTwo: (val) =>
                              eye.onChange(val ?? EyeRedness.normal),
                          onChangeThree: (val) =>
                              eye.onChange(val ?? EyeRedness.normal),
                          onNoteChange: (val) => eye.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! bloody urine
                  GetBuilder<BloodyUrineController>(
                      init: BloodyUrineController(),
                      builder: (bloody) {
                        return BloodyUrineWidget(
                          groupValue: bloody.charcter,
                          onChangeNormal: (val) =>
                              bloody.onChange(val ?? BloodyUrine.normal),
                          onChangeOne: (val) =>
                              bloody.onChange(val ?? BloodyUrine.normal),
                          onChangeTwo: (val) =>
                              bloody.onChange(val ?? BloodyUrine.normal),
                          onChangeThree: (val) =>
                              bloody.onChange(val ?? BloodyUrine.normal),
                          onNoteChange: (val) => bloody.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                  //! Female milk production
                  GetBuilder<MilkProductionController>(
                      init: MilkProductionController(),
                      builder: (milk) {
                        return MilkProductionWidget(
                          groupValue: milk.charcter,
                          onChangeNormal: (val) =>
                              milk.onChange(val ?? MilkProduction.normal),
                          onChangeOne: (val) =>
                              milk.onChange(val ?? MilkProduction.normal),
                          onChangeTwo: (val) =>
                              milk.onChange(val ?? MilkProduction.normal),
                          onChangeThree: (val) =>
                              milk.onChange(val ?? MilkProduction.normal),
                          onNoteChange: (val) => milk.onChangeNote(val ?? ""),
                        );
                      }),
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              )),

          //!Submit (Next Buttom)
          Align(
 alignment: Get.locale == const Locale('ar')
                              ? Alignment.bottomLeft
                              : Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Get.to(const SuspectedDiseaseScreen());
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
          ),
        ],
      ),
    );
  }
}
