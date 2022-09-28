

import 'package:get/get.dart';
 
enum CowMiscarriageExist { yes, no }

class CowMiscarriageExistController extends GetxController{
  CowMiscarriageExist charcter = CowMiscarriageExist.yes;

  void onChange(CowMiscarriageExist value){
    charcter = value;
    update();
  }

}