
import 'package:get/get.dart';

class CamelImmunizationTypesController extends GetxController {
  bool brucellosis = false; //?ok
  bool coronaMersForCamels = false;
  bool smallpoxForCamels = false;
  bool ppr = false;
  bool fmd = false;//*foot and mouth disease
  bool rvf = false; //*rift valley fever
  bool ipr = false;
  bool trypanosomiasisAndOtherBloodParasites = false;
  

  void brucellosisonChange(bool? value) {
    brucellosis = value ?? false;

    update();
  }
  void coronaMersForCamelsChange(bool? value) {
    coronaMersForCamels = value ?? false;

    update();
  }
  void smallpoxForCamelsonChange(bool? value) {
    smallpoxForCamels = value ?? false;

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
