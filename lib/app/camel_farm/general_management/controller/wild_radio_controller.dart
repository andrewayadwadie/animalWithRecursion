
import 'package:get/get.dart';
 
enum CamelWild { yes, no,noAnswer }

class CamelWildController extends GetxController{
  CamelWild charcter = CamelWild.noAnswer;

  void onChange(CamelWild value){
    charcter = value;
    update();
  }

}