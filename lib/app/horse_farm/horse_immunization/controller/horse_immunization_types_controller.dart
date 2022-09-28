
import 'package:get/get.dart';

class HorseImmunizationTypesController extends GetxController {
  bool brucellosis = false; //?ok
  bool coronaMersForHorses = false;
  bool smallpoxForHorses = false;
  bool ppr = false;
  bool fmd = false;//*foot and mouth disease
  bool rvf = false; //*rift valley fever
  bool ipr = false;
  bool trypanosomiasisAndOtherBloodParasites = false;
  

  void brucellosisonChange(bool? value) {
    brucellosis = value ?? false;

    update();
  }
  void coronaMersForHorsesChange(bool? value) {
    coronaMersForHorses = value ?? false;

    update();
  }
  void smallpoxForHorsesonChange(bool? value) {
    smallpoxForHorses = value ?? false;

    update();
  }
  void ppronChange(bool? value) {
    ppr = value ?? false;

    update();
  }
  void fmdChange(bool? value) {
    fmd = value ?? false;

    update();
  }
  void rvfChange(bool? value) {
    rvf = value ?? false;

    update();
  }
  void iprChange(bool? value) {
    ipr = value ?? false;

    update();
  }
  void trypanosomiasisAndOtherBloodParasitesChange(bool? value) {
    trypanosomiasisAndOtherBloodParasites = value ?? false;

    update();
  }
  
}
