
import 'package:get/get.dart';
 
enum CowsAndAnotherCows { yes, no }

class CowsAndAnotherCowsController extends GetxController{
  CowsAndAnotherCows charcter = CowsAndAnotherCows.yes;

  void onChange(CowsAndAnotherCows value){
    charcter = value;
    update();
  }

}