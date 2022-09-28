
import 'package:get/get.dart';
 
enum CamelWithAnimals { yes, no,noAnswer }

class CamelWithAnimalsController extends GetxController{
  CamelWithAnimals charcter = CamelWithAnimals.noAnswer;

  void onChange(CamelWithAnimals value){
    charcter = value;
    update();
  }

}