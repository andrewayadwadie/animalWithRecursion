
import 'package:get/get.dart';
 
enum HorsesAndAnotherHorses { yes, no }

class HorsesAndAnotherHorsesController extends GetxController{
  HorsesAndAnotherHorses charcter = HorsesAndAnotherHorses.yes;

  void onChange(HorsesAndAnotherHorses value){
    charcter = value;
    update();
  }

}