 
import 'package:get/get.dart';

class CuresController extends GetxController {
    String title = 'Remedies used for diarrhea';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}