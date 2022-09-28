
import 'package:get/get.dart';
 
enum HorseWild { yes, no,noAnswer }

class HorseWildController extends GetxController{
  HorseWild charcter = HorseWild.noAnswer;

  void onChange(HorseWild value){
    charcter = value;
    update();
  }

}