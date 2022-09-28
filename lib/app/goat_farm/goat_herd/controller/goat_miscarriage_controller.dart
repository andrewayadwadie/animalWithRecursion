

import 'package:get/get.dart';
 
enum GoatMiscarriageExist { yes, no }

class GoatMiscarriageExistController extends GetxController{
  GoatMiscarriageExist charcter = GoatMiscarriageExist.yes;

  void onChange(GoatMiscarriageExist value){
    charcter = value;
    update();
  }

}