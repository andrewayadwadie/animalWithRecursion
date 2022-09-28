

import 'package:get/get.dart';
 
enum SheepRecord { yes, no,noAnswer }

class SheepRecordController extends GetxController{
  SheepRecord charcter = SheepRecord.noAnswer;

  void onChange(SheepRecord value){
    charcter = value;
    update();
  }

}