import 'package:get/get.dart';

class HoofController extends GetxController {
    String title = 'Hoof';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}

