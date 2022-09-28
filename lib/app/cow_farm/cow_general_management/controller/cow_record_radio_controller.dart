

import 'package:get/get.dart';
 
enum CowRecord { yes, no,noAnswer }

class CowRecordController extends GetxController{
  CowRecord charcter = CowRecord.noAnswer;

  void onChange(CowRecord value){
    charcter = value;
    update();
  }

}