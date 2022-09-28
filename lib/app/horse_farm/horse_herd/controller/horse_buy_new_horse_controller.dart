
import 'package:get/get.dart';
 
enum HorseBuyNewHorse { yes, no }

class HorseBuyNewHorseController extends GetxController{
  HorseBuyNewHorse charcter = HorseBuyNewHorse.yes;

  void onChange(HorseBuyNewHorse value){
    charcter = value;
    update();
  }

}