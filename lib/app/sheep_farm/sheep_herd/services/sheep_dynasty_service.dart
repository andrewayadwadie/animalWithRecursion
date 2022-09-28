import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../model/sheep_herd_dynasty_model.dart';

 
class SheepDynastyService {
  static Future getSheepDynasty(int sheepId) async {
    String url =
        "${apiUrl}AnimalsStrains/GetAnimalTypeStrains/$sheepId";

    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token',
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      },
    );
    log("status code from Sheep dynasty is : ${res.statusCode}");
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      List dynasty = jsonData.map((element) {
        return SheepDynastyModel.fromJson(element);
      }).toList();

      return dynasty;
    } else if (res.statusCode == 401) {
      return 401;
    } else if (res.statusCode == 500 ||
        res.statusCode == 501 ||
        res.statusCode == 504 ||
        res.statusCode == 502) {
      return 500;
    }
    return 400;
  }
}
