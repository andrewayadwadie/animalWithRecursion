
import 'package:get/get.dart';

class SheepImmunizationTypesController extends GetxController {
  bool brucellosis = false; //?ok
  bool coronaMersForSheeps = false;
  bool smallpoxForSheeps = false;
  bool ppr = false;
  bool fmd = false;//*foot and mouth disease
  bool rvf = false; //*rift valley fever
  bool ipr = false;
  bool trypanosomiasisAndOtherBloodParasites = false;
  

  void brucellosisonChange(bool? value) {
    brucellosis = value ?? false;

    update();
  }
  void coronaMersForSheepsChange(bool? value) {
    coronaMersForSheeps = value ?? false;

    update();
  }
  void smallpoxForSheepsonChange(bool? value) {
    smallpoxForSheeps = value ?? false;

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
