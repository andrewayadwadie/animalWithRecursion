import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../model/horse_herd_dynasty_model.dart';
 
class HorseDynastyService {
  static Future getHorseDynasty(int horseId) async {
    String url =
        "${apiUrl}AnimalsStrains/GetAnimalTypeStrains/$horseId";

    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token',
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      },
    );
    log("status code from Horse dynasty is : ${res.statusCode}");
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      List dynasty = jsonData.map((element) {
        return HorseDynastyModel.fromJson(element);
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
