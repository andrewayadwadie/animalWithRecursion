
import 'package:get/get.dart';
 
enum HorseDiarrhea { yes,no }

class HorseDiarrheaController extends GetxController{
  HorseDiarrhea charcter = HorseDiarrhea.yes;

  void onChange(HorseDiarrhea value){
    charcter = value;
    update();
  }

}