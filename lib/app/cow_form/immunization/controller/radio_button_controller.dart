import 'package:get/get.dart';
 
enum ImmunizationExist { yes, no }

class RadioController extends GetxController{
  ImmunizationExist charcter = ImmunizationExist.yes;

  void onChange(ImmunizationExist value){
    charcter = value;
    update();
  }

}