 import 'package:get/get.dart';

class SheepFeedingTextfieldController extends GetxController{

   String factoryName = "";
  
  void onChangefactoryNmae(String value) {
    factoryName = value;
    update();
  }
 

}