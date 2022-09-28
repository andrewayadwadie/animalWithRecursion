import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import '../../../utils/db/auth_shared_preferences.dart';
import '../model/government_model.dart';

class GovernmentService {
  static Future getGovernment() async {
    String url = "${apiUrl}Govermorates/GetAllGovermorates";

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

      List governmets = jsonData.map((element) {
        return GovernmentModel.fromJson(element);
      }).toList();

      return governmets;
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
