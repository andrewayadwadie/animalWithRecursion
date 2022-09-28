
import 'package:get/get.dart';

class GoatImmunizationTypesController extends GetxController {
  bool brucellosis = false; //?ok
  bool coronaMersForGoats = false;
  bool smallpoxForGoats = false;
  bool ppr = false;
  bool fmd = false;//*foot and mouth disease
  bool rvf = false; //*rift valley fever
  bool ipr = false;
  bool trypanosomiasisAndOtherBloodParasites = false;
  

  void brucellosisonChange(bool? value) {
    brucellosis = value ?? false;

    update();
  }
  void coronaMersForGoatsChange(bool? value) {
    coronaMersForGoats = value ?? false;

    update();
  }
  void smallpoxForGoatsonChange(bool? value) {
    smallpoxForGoats = value ?? false;

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
