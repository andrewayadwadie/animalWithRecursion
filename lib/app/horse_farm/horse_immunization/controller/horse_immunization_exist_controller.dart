import 'package:get/get.dart';
 
enum HorseImmunizationExist { yes, no }

class HorseImmunizationExistController extends GetxController{
  HorseImmunizationExist charcter = HorseImmunizationExist.yes;

  void onChange(HorseImmunizationExist value){
    charcter = value;
    update();
  }

}