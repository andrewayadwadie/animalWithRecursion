import 'package:get/get.dart';
 
enum GoatImmunizationExist { yes, no }

class GoatImmunizationExistController extends GetxController{
  GoatImmunizationExist charcter = GoatImmunizationExist.yes;

  void onChange(GoatImmunizationExist value){
    charcter = value;
    update();
  }

}