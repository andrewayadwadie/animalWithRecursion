import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../utils/constants.dart';
import '../../../utils/db/auth_shared_preferences.dart';
import '../model/tools_type_model.dart';

class ToolsTypeService {
  static Future getToolsType(int id) async {
    log("district id is : $id");
    String url = "${apiUrl}ToolsTypes/GetToolTypes/$id";
    http.Response res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        "Content-type": "application/json",
        'Accept': 'application/json',
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      },
    );
    log("district status code is : ${res.statusCode}");
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      List typs = jsonData.map((element) {
        return ToolsTypeModel.fromJson(element);
      }).toList();
      return typs;
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
