
import 'dart:developer';
import 'dart:io';

// ignore: implementation_imports
import 'package:animal_wealth/utils/constants.dart';
import 'package:animal_wealth/utils/db/auth_shared_preferences.dart';
// ignore: implementation_imports
import 'package:async/src/delegate/stream.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class SendFarmData {
  static Future sendNewFarmData({
    required name,
    required File photo,
    required size,
    required activityType,
    required lat,
    required long,
    required areaId,
    required farmOwnerId,
    required location,
  }) async {
    final Uri url = Uri.parse('${apiUrl}Farms/AddFarm');

    // ignore: deprecated_member_use
    try {
    var headers = <String, String>{
      "Content-type": "multipart/form-data",
      
      'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
    };

    var request = http.MultipartRequest("POST", url);
    request.headers.addAll(headers);
    if (photo.path != "") {

      // ignore: deprecated_member_use
      var stream = http.ByteStream(DelegatingStream.typed(photo.openRead()));
      // ignore: deprecated_member_use

      var length = await photo.length();

      var multipartFile1 = http.MultipartFile('Photo', stream, length,
          filename: basename(photo.path));

      request.files.add(multipartFile1);
    }

    request.fields["Name"] = "$name";
    request.fields["Size"] = "$size";
    request.fields["ActivityType"] = "$activityType";
    request.fields["Lat"] = "$lat";
    request.fields["Long"] = "$long";
    request.fields["AreaId"] = "$areaId";
    request.fields["FarmOwnerId"] = "$farmOwnerId";
    request.fields["Location"] = "$location";

    var res = await request.send();
    var sucessRes = await res.stream.bytesToString();
    //log(" success : $sucessRes");
    if (res.statusCode == 200 || res.statusCode == 201) {
        return double.parse(sucessRes);
      } else if (res.statusCode == 400) {
        log("error 400 $res");
         return 400;
      } else if (res.statusCode == 401) {
        log("error 401 $res");
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
            log("error  500 $res");
        return 500;
      }
  }catch (e) {
      log("errrror : $e"); 
      
    }
  }
}
