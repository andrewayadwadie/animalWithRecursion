 import 'package:get/get.dart';

class HorseFeedingTextfieldController extends GetxController{

   String factoryName = "";
  
  void onChangefactoryNmae(String value) {
    factoryName = value;
    update();
  }
 

}