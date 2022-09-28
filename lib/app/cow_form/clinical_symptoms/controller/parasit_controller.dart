 
import 'package:get/get.dart';

class ParasitController extends GetxController {
    String title = 'Parasite medicines';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
} 

