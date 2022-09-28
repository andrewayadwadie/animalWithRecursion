
import 'package:get/get.dart';
 
enum SheepWild { yes, no,noAnswer }

class SheepWildController extends GetxController{
  SheepWild charcter = SheepWild.noAnswer;

  void onChange(SheepWild value){
    charcter = value;
    update();
  }

}