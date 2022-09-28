

import 'package:get/get.dart';
 
enum SheepDefenation { yes, no ,noAnswer }

class SheepDefenationController extends GetxController{
  SheepDefenation charcter = SheepDefenation.noAnswer;

  void onChange(SheepDefenation value){
    charcter = value;
    update();
  }

}