

import 'package:get/get.dart';
 
enum SheepMoveOutside { yes, no,noAnswer }

class SheepMoveOutsideController extends GetxController{
  SheepMoveOutside charcter = SheepMoveOutside.noAnswer;

  void onChange(SheepMoveOutside value){
    charcter = value;
    update();
  }

}