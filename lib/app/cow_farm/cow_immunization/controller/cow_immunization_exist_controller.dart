import 'package:get/get.dart';
 
enum CowImmunizationExist { yes, no }

class CowImmunizationExistController extends GetxController{
  CowImmunizationExist charcter = CowImmunizationExist.yes;

  void onChange(CowImmunizationExist value){
    charcter = value;
    update();
  }

}