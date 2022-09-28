import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import '../../../utils/db/auth_shared_preferences.dart';
import '../model/citiy_model.dart';

class CityService {
  static Future getCity(int id) async {
    String url = "${apiUrl}Cities/GetGovermoratesCities/$id";

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
      var jsonData = jsonDecode(res.body);

      List cities = jsonData.map((element) {
        return CityModel.fromJson(element);
      }).toList();

      return cities;
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
