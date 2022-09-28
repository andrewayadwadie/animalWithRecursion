
import 'package:get/get.dart';
 
enum GoatDiarrhea { yes,no }

class GoatDiarrheaController extends GetxController{
  GoatDiarrhea charcter = GoatDiarrhea.yes;

  void onChange(GoatDiarrhea value){
    charcter = value;
    update();
  }

}