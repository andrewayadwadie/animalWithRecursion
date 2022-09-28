
import 'package:get/get.dart';

import '../../../utils/db/auth_shared_preferences.dart';
import '../../../utils/style.dart';
import '../../home/home_screen.dart';
import '../services/auth_services.dart';

class LoginController extends GetxController {
  bool vis = true;

  RxBool loading = true.obs;

  void sendLoginData({required String? email, required String? password}) {
    loading.value = false;
    AuthServices.login(email: email ?? "", password: password ?? "")
        .then((res) {
      //! success
      if (res.runtimeType == List) {
        loading.value = true;
        SharedPreferencesHelper.setTokenValue(res[0].toString());
        SharedPreferencesHelper.setExpireDateValue(res[1].toString());
         

        Get.offAll(()=> HomeScreen());
        //!Error
      } else if (res.runtimeType == String) {
        loading.value = true;
        Get.defaultDialog(
          title: "Error",
          middleText: res.toString(),
          onConfirm: () => Get.back(),
          confirmTextColor: whiteColor,
          buttonColor: redColor,
          backgroundColor: whiteColor,
        );
      }
    });
  }

  void eyetToggle() {
    vis = !vis;
    update();
  }
}
