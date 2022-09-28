import 'package:get/get.dart';

class TreatmentsUsedController extends GetxController {
    String title = 'Treatments used';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}
