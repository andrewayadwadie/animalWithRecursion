import 'package:get/get.dart';
 
enum CamelImmunizationExist { yes, no }

class CamelImmunizationExistController extends GetxController{
  CamelImmunizationExist charcter = CamelImmunizationExist.yes;

  void onChange(CamelImmunizationExist value){
    charcter = value;
    update();
  }

}