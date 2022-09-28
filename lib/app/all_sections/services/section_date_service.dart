import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../utils/constants.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
 
class StartSectioDateService {
  static Future startCowSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Herds/AddHerdSectionStartDate/${SharedPreferencesHelper.getCowHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in cow  : ${res.body}");
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
      log("exception error :$e");
    }
  }

  static Future startCamelSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Camels/AddCamelSectionStartDate/${SharedPreferencesHelper.getCamelHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in camel  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in camel  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future startSheepSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Sheeps/AddSheepSectionStartDate/${SharedPreferencesHelper.getSheepHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in sheep  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in sheep  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future startGoatSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Goats/AddGoatSectionStartDate/${SharedPreferencesHelper.getGoatHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in Goat  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in Goat  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future startHorseSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Hourses/AddHourseSectionStartDate/${SharedPreferencesHelper.getHorseHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in Horse  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in Horse  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }
}

class EndSectioDateService {
  static Future endCowSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Herds/AddHerdSectionEndDate/${SharedPreferencesHelper.getCowHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in cow  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in cow  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future endCamelSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Camels/AddCamelSectionEndDate/${SharedPreferencesHelper.getCamelHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in camel  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in camel  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future endSheepSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Sheeps/AddSheepSectionEndDate/${SharedPreferencesHelper.getSheepHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in sheep  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in sheep  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future endGoatSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Goats/AddGoatSectionEndDate/${SharedPreferencesHelper.getGoatHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in Goat  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in Goat  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }

  static Future endHorseSectioDateService({
    required int sectionId,
    required String date,
  }) async {
    var url =
        "${apiUrl}Hourses/AddHourseSectionEndDate/${SharedPreferencesHelper.getHorseHerdValue()}";

    try {
      var res = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'Authorization':
                'Bearer ${SharedPreferencesHelper.getTokenValue()}',
          },
          body: jsonEncode({
            'SectionId': sectionId,
            'Date': date,
          }));

      if (res.statusCode == 200 || res.statusCode == 201) {
        return 200;
      } else if (res.statusCode == 400) {
        log("error 400 in general in Horse  : ${res.body}");
        var data = jsonDecode(res.body);

        return data['errors'][0][0];
      } else if (res.statusCode == 401) {
        return 401;
      } else if (res.statusCode == 500 ||
          res.statusCode == 501 ||
          res.statusCode == 504) {
        log("error 500 in general in Horse  : ${res.body}");
        return 500;
      }
    } catch (e) {
       log("exception error :$e");
    }
  }
}
