 
import 'package:get/get.dart';

class SuspectedDropDownController extends GetxController {
   List<int> caseList = [0,0,0,0,0,0,0,0,0,0] ;

   void increment(int index) {
    caseList[index]++;
    update();
    
    }
    void decrement(int index) {
    caseList[index]--;
    update();
    
    }
    
}


 
