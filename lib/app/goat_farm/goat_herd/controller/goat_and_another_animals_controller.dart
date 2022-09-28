
import 'package:get/get.dart';
 
enum GoatsAndAnotherGoats { yes, no }

class GoatsAndAnotherGoatsController extends GetxController{
  GoatsAndAnotherGoats charcter = GoatsAndAnotherGoats.yes;

  void onChange(GoatsAndAnotherGoats value){
    charcter = value;
    update();
  }

}