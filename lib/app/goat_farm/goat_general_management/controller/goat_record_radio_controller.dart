

import 'package:get/get.dart';
 
enum GoatRecord { yes, no,noAnswer }

class GoatRecordController extends GetxController{
  GoatRecord charcter = GoatRecord.noAnswer;

  void onChange(GoatRecord value){
    charcter = value;
    update();
  }

}