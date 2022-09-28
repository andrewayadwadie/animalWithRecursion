import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../auth/login_screen.dart';
import '../model/camel_another_animal_type_model.dart';

class CamelAnotherAnimalService {
  static Future getAnimalType() async {
    String url = "${apiUrl}Questions/GetQuestion/167";

    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token',
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      },
    );

    if (res.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(res.body)['questionAnimalTypes'];
log("jsonData $jsonData");
      List<AnimalTypeModel> animalType = jsonData.map((element) {
        return AnimalTypeModel.fromJson(element);
      }).toList();
log("animalType $animalType");
      return animalType;
    } else if (res.statusCode == 401) {
     Get.offAll(()=>const LoginScreen());
    } else if (res.statusCode == 500 ||
        res.statusCode == 501 ||
        res.statusCode == 504 ||
        res.statusCode == 502) {
     Get.snackbar("Error", "sorry, there is problem in server try again later");
    }
    return "error";
  }
}
