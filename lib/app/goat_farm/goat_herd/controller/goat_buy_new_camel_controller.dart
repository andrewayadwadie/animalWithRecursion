
import 'package:get/get.dart';
 
enum GoatBuyNewCaml { yes, no }

class GoatBuyNewCamlController extends GetxController{
  GoatBuyNewCaml charcter = GoatBuyNewCaml.yes;

  void onChange(GoatBuyNewCaml value){
    charcter = value;
    update();
  }

}