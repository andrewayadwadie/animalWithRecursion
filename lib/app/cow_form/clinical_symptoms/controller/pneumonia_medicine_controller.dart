
 
import 'package:get/get.dart';

class PneumoniaMedicineController extends GetxController {
    String title = 'Pneumonia medicines';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}