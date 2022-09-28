// ignore: file_names
import 'package:get/get.dart';

class CowImmunizationWayTextController extends GetxController{
List<String> immunizaionWay= [];


void changeWay(String way){
  immunizaionWay.add(way);
  update();
}


}