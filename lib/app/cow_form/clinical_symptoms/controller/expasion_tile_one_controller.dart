import 'package:get/get.dart';

class ExpasionOneController extends GetxController {
    String title = 'Milking type';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}

