
import 'package:get/get.dart';
 
enum CowWithAnimals { yes, no,noAnswer }

class CowWithAnimalsController extends GetxController{
  CowWithAnimals charcter = CowWithAnimals.noAnswer;

  void onChange(CowWithAnimals value){
    charcter = value;
    update();
  }

}