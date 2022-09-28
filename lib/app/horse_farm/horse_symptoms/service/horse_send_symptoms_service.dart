import 'dart:developer';

// ignore: implementation_imports
import 'package:async/src/delegate/stream.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../model/horse_add_model.dart';
 
class HorseSendSymptomsService {
  static Future horseSendSymptomsService({
    required List<HorseAddModel> allData,
  }) async {
    int photoIncrement = 0;
    int idIncrement = 0;
    int countIncrement = 0;
    int noteIncrement = 0;
    final Uri url = Uri.parse(
        "${apiUrl}Hourses/AddHourseSyndromes/${SharedPreferencesHelper.getCamelHerdValue()}");

    // ignore: deprecated_member_use
    try {
      var headers = <String, String>{
        "Content-type": "multipart/form-data",
        'Authorization': 'Bearer ${SharedPreferencesHelper.getTokenValue()}',
      };

      var request = http.MultipartRequest("POST", url);
      request.headers.addAll(headers);
      //!=================================================================
      //! add all images to request
      for (int i = 0; i < allData.length; i++) {
        if (allData[i].photos.isNotEmpty) {
          for (var photo in allData[i].photos) {
            if (photo.path != "") {
              // ignore: deprecated_member_use
              var stream =
                  // ignore: deprecated_member_use
                  http.ByteStream(DelegatingStream.typed(photo.openRead()));
              // ignore: deprecated_member_use

              var length = await photo.length();

              var multipartFile1 = http.MultipartFile(
                  'model[$photoIncrement].Photos', stream, length,
                  filename: basename(photo.path));

              request.files.add(multipartFile1);
            }
          }
          photoIncrement++;
        }
      }
      //! add all SyndromeId to request
      for (var x = 0; x < allData.length; x++) {
        if (allData[x].count.isNotEmpty) {
          request.fields["model[$idIncrement].SyndromeId"] =
              allData[x].syndromeId;
          idIncrement++;
        }
      }
      //! add all Count to request
      for (var y = 0; y < allData.length; y++) {
        if (allData[y].count.isNotEmpty) { //! i checked on list of count because when i call list of symptoms of api i equal count list with symptoms list that coming from api response 
          request.fields["model[$countIncrement].Count"] = allData[y].count;
          countIncrement++;
        }
      }
      //! add all Note to request
      for (var z = 0; z < allData.length; z++) {
        if (allData[z].count.isNotEmpty) {
          request.fields["model[$noteIncrement].Note"] = allData[z].note;
          noteIncrement++;
        }
      }


      
      //!=================================================================
      var res = await request.send();
      var responseStream = await res.stream.bytesToString();

      if (res.statusCode == 200 || res.statusCode == 201) {
        return responseStream;
      } else if (res.statusCode == 400) {
      
        return 400;
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        return 500;
      }

 
    } catch (e) {
      log("errrror : $e");
    
      throw Exception("exception $e");
    }
  }
}
