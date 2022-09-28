
import 'package:get/get.dart';
 
enum CamelDiarrhea { yes,no }

class CamelDiarrheaController extends GetxController{
  CamelDiarrhea charcter = CamelDiarrhea.yes;

  void onChange(CamelDiarrhea value){
    charcter = value;
    update();
  }

}