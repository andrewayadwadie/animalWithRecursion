

import 'package:get/get.dart';
 
enum CamelRecord { yes, no,noAnswer }

class CamelRecordController extends GetxController{
  CamelRecord charcter = CamelRecord.noAnswer;

  void onChange(CamelRecord value){
    charcter = value;
    update();
  }

}