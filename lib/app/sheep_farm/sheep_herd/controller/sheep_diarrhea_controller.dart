
import 'package:get/get.dart';
 
enum SheepDiarrhea { yes,no }

class SheepDiarrheaController extends GetxController{
  SheepDiarrhea charcter = SheepDiarrhea.yes;

  void onChange(SheepDiarrhea value){
    charcter = value;
    update();
  }

}