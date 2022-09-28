import 'package:get/get.dart';

class FarmInfoFormController extends GetxController{
  String farmName="";

  void changeFarmName(String val){
    farmName=val;
    update();
  }
}