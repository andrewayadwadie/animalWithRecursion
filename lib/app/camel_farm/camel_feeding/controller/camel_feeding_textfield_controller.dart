 import 'package:get/get.dart';

class CamelFeedingTextfieldController extends GetxController{

   String factoryName = "";
  
  void onChangefactoryNmae(String value) {
    factoryName = value;
    update();
  }
 

}