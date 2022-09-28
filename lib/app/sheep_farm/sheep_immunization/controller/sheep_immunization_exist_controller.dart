import 'package:get/get.dart';
 
enum SheepImmunizationExist { yes, no }

class SheepImmunizationExistController extends GetxController{
  SheepImmunizationExist charcter = SheepImmunizationExist.yes;

  void onChange(SheepImmunizationExist value){
    charcter = value;
    update();
  }

}