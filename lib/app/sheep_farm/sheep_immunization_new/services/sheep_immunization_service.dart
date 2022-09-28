import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../model/sheep_immunizations_model.dart';
 
class SheepImmunizationService {
  static Future getImmunization(int id) async {
    String url = "${apiUrl}Immunzations/GetAnimalTypeImmunzations/$id";

    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      },
    );

    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);

      List immunizations = jsonData.map((element) {
        return SheepImmunizationsModel.fromJson(element);
      }).toList();

      return immunizations;
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
