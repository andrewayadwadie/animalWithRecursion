

import 'package:get/get.dart';
 
enum SheepMiscarriageExist { yes, no }

class SheepMiscarriageExistController extends GetxController{
  SheepMiscarriageExist charcter = SheepMiscarriageExist.yes;

  void onChange(SheepMiscarriageExist value){
    charcter = value;
    update();
  }

}