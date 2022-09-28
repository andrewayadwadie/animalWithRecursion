 

import 'package:get/get.dart';

enum ImmunizationSideEffect { yes, no }
class SideEffectRadioController extends GetxController {
   ImmunizationSideEffect charcter = ImmunizationSideEffect.yes;

  void onChange(ImmunizationSideEffect value){
    charcter = value;
 
    update();
  }
}