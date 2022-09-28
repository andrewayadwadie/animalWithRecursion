import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import '../../../utils/db/auth_shared_preferences.dart';

class SendOwnerData {
  static Future sendOwnerData({
    required String name,
    required int phone,
    required String email,
    required String address,
    required int id,
  }) async {
    var url = "${apiUrl}FarmsOwners/AddFarmOwner";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            "Name": name,
            "Email": email,
            "Address": address,
            "SSN": '$id',
            "Phone": '$phone',
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return double.parse(res.body);
      } else if (res.statusCode == 400) {
        var ownerData = jsonDecode(res.body);
        return ownerData['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        return 500;
      }
    } catch (e) {
      throw "exception is : $e";
    }
  }
}
