
import 'package:get/get.dart';
 
enum GoatWild { yes, no,noAnswer }

class GoatWildController extends GetxController{
  GoatWild charcter = GoatWild.noAnswer;

  void onChange(GoatWild value){
    charcter = value;
    update();
  }

}