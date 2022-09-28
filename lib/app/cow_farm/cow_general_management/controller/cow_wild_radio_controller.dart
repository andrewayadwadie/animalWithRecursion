
import 'package:get/get.dart';
 
enum CowWild { yes, no,noAnswer }

class CowWildController extends GetxController{
  CowWild charcter = CowWild.noAnswer;

  void onChange(CowWild value){
    charcter = value;
    update();
  }

}