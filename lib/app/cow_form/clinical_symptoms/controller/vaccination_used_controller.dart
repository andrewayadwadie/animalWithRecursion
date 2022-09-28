import 'package:get/get.dart';

class VaccinationUsedController extends GetxController {
    String title = 'Vaccination Used';

    void changeTitle( String newTitle) {
        title = newTitle;
        update();
    }
 
}