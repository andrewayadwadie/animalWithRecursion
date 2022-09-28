import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';

class SendCamelHerdData {
  static Future sendCamelHerdData({
    required int numberOfAnimals,
    required int numberOfCases,
    required int numberOfAdults,
    required int numberOfVirginity,
    required int numberOfAged,
    required int numberOfInfant,
    required int numberOfAblaction,
    required int numberOfMales,
    required int numberOfFemales,
    required int numberOfDeaths,
    required int numberOfSuddenDeath,
    required int numberOfAblactionCases,
    required int numberOfAdultsCases,
    required int numberOfAgedCases,
    required int numberOfFemalesCases,
    required int numberOfInfantCases,
    required int numberOfMalesCases,
    required int numberOfVirginityCases,
    required int farmId,
    required int eductionSystemId,
    required int animalStrainId,
    required String note,
    required String size,
    required String activityType,
    required String lat,
    required String long,
    required String dateOfEpidemiologicalSurvey,
  }) async {
 
    var url = "${apiUrl}Camels/AddCamel";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'NumberOfAnimals': numberOfAnimals,
            'NumberOfCases': numberOfCases,
            'NumberOfAdults': numberOfAdults,
            'NumberOfVirginity': numberOfVirginity,
            'NumberOfAged': numberOfAged,
            'NumberOfInfant': numberOfInfant,
            'NumberOfAblaction': numberOfAblaction,
            'NumberOfMales': numberOfMales,
            'NumberOfFemales': numberOfFemales,
            'NumberOfDeaths': numberOfDeaths,
            'NumberOfSuddenDeath': numberOfSuddenDeath,
            "NumberOfAblactionCases": numberOfAblactionCases,
            "NumberOfAdultsCases": numberOfAdultsCases,
            "NumberOfAgedCases": numberOfAgedCases,
            "NumberOfFemalesCases": numberOfFemalesCases,
            "NumberOfInfantCases": numberOfInfantCases,
            "NumberOfMalesCases": numberOfMalesCases,
            "NumberOfVirginityCases": numberOfVirginityCases,
            'FarmId': farmId,
            'EductionSystemId': eductionSystemId,
            'AnimalStrainId': animalStrainId,
            'ActivityType': activityType,
            'Lat': lat,
            'Long': long,
            'Note': note,
            'Size': size,
            'DateOfEpidemiologicalSurvey': dateOfEpidemiologicalSurvey,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return double.parse(res.body);
      } else if (res.statusCode == 400) {
        var erroeMessage = jsonDecode(res.body);
        return erroeMessage['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        return 500;
      }else {
        log('error res : $res');
      }
    } catch (e) {
      throw "exception is : $e";
    }
  }
}
