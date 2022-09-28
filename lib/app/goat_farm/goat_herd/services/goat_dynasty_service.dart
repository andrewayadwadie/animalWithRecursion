import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../model/goat_herd_dynasty_model.dart';
 
class GoatDynastyService {
  static Future getGoatDynasty(int goatId) async {
    String url =
        "${apiUrl}AnimalsStrains/GetAnimalTypeStrains/$goatId";

    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token',
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      },
    );
    log("status code from goat dynasty is : ${res.statusCode}");
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      List dynasty = jsonData.map((element) {
        return GoatDynastyModel.fromJson(element);
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
