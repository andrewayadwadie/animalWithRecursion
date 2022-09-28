import 'package:get/get.dart';
 
enum AnatomicalExist { yes, no }

class AnatomicalRadioController extends GetxController{
  AnatomicalExist charcter = AnatomicalExist.yes;

  void onChange(AnatomicalExist value){
    charcter = value;
    update();
  }

}