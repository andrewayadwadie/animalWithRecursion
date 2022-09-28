
import 'package:get/get.dart';
 
enum GoatWithAnimals { yes, no,noAnswer }

class GoatWithAnimalsController extends GetxController{
  GoatWithAnimals charcter = GoatWithAnimals.noAnswer;

  void onChange(GoatWithAnimals value){
    charcter = value;
    update();
  }

}