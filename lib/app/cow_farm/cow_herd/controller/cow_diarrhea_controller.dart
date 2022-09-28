
import 'package:get/get.dart';
 
enum CowDiarrhea { yes,no }

class CowDiarrheaController extends GetxController{
  CowDiarrhea charcter = CowDiarrhea.yes;

  void onChange(CowDiarrhea value){
    charcter = value;
    update();
  }

}