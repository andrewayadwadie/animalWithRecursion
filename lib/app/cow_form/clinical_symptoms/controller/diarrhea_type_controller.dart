 
import 'package:get/get.dart';

class DiarrheaTypeController extends GetxController {
    String title = 'Diarrhea type';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}