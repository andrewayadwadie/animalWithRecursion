import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';

class GoatSendDiseaseService {
  static Future goatSendDiseaseService({
    required List data,
  }) async {
    var url =
        "${apiUrl}Goats/AddGoatDiseases/${SharedPreferencesHelper.getGoatHerdValue()}";
    try {
      log("url : $url");
      log("data : $data");

      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode(data));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        var data = jsonDecode(res.body);
        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        return 500;
      }
    } catch (e) {
      //  throw "exception is : $e";
      log("$e");
    }
  }
}
