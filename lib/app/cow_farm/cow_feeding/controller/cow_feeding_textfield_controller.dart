 import 'package:get/get.dart';

class CowFeedingTextfieldController extends GetxController{

   String factoryName = "";
  
  void onChangefactoryNmae(String value) {
    factoryName = value;
    update();
  }
 

}