

import 'package:get/get.dart';
 
enum HorseRecord { yes, no,noAnswer }

class HorseRecordController extends GetxController{
  HorseRecord charcter = HorseRecord.noAnswer;

  void onChange(HorseRecord value){
    charcter = value;
    update();
  }

}