import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesHelper {
   static SharedPreferences? _sharedPref;
  static const _token = 'usertoken';
  static const _expireDate = 'expireDate';
  static const _owner = 'owner';
   static const _ownerName = 'OwnerName';
  static const _farmkey = 'farm';
  static const _animalType = 'animalType';
  static const _camelHerd = 'camelHerd';
  static const _cowHerd = 'CowHerd';
  static const _sheepHerd = 'SheepHerd';
  static const _goatHerd = 'GoatHerd';
  static const _horseHerd = 'HorseHerd';
  static const _camelstatus = 'CamelStatus';
  static const _cowstatus = 'CowStatus';
  static const _sheepstatus = 'SheepStatus';
  static const _goatstatus = 'GoatStatus';
  static const _horsestatus = 'HorseStatus';


  static Future init() async {
     _sharedPref = await SharedPreferences.getInstance();
  }
//!------------------------------- Token---------------------------- */
  static Future setTokenValue(String value) async {
    await _sharedPref!.setString(_token, value);
  }

  static String getTokenValue() {
    return _sharedPref!.getString(_token) ?? '';
  }

  static Future clearToken() async {
    await _sharedPref!.remove(_token);
  }
//!-------------------------------  Expire Date  ---------------------------- */
  static Future setExpireDateValue(String value) async {
    await _sharedPref!.setString(_expireDate, value);
  }

  static String getExpireDateValue() {
    return _sharedPref!.getString(_expireDate) ?? '';
  }

  static Future clearExpireDateValue() async {
    await _sharedPref!.remove(_expireDate);
  }
//!------------------------------- Owner---------------------------- */
  static Future setOwnerValue(int value) async {
    await _sharedPref!.setInt(_owner, value);
  }

  static int getOwnerValue() {
    return _sharedPref!.getInt(_owner) ?? 0;
  }

  static Future clearOwner( ) async {
 
    await _sharedPref!.remove(_owner);
  }

//!------------------------------- OwnerName---------------------------- */
  static Future setOwnerNameValue(String value) async {
    await _sharedPref!.setString(_ownerName, value);
  }

  static String getOwnerNameValue() {
    return _sharedPref!.getString(_ownerName) ?? "";
  }

  static Future clearOwnerName() async {
    await _sharedPref!.remove(_ownerName);
  }


//!------------------------------- Farm General---------------------------- */
  static Future setValue(int value) async {
    await _sharedPref!.setInt(_farmkey, value);
  }

  static int getValue() {
    return _sharedPref!.getInt(_farmkey) ?? 0;
  }

  static Future clear() async {
    await _sharedPref!.remove(_farmkey);
  }


//!------------------------------- AnimalType---------------------------- */
  static Future setAnimalTypeValue(int value) async {
    await _sharedPref!.setInt(_animalType, value);
  }

  static int getAnimalTypeValue() {
    return _sharedPref!.getInt(_animalType) ?? 0;
  }

  static Future clearAnimalType() async {
    await _sharedPref!.remove(_animalType);
  }

//!------------------------------- camelHerd---------------------------- */
  static Future setCamelHerdValue(int value) async {
    await _sharedPref!.setInt(_camelHerd, value);
  }

  static int getCamelHerdValue() {
    return _sharedPref!.getInt(_camelHerd) ?? 0;
  }

  static Future clearCamelHerd() async {
    await _sharedPref!.remove(_camelHerd);
  }

//!------------------------------- CowHerd---------------------------- */
  static Future setCowHerdValue(int value) async {
    await _sharedPref!.setInt(_cowHerd, value);
  }

  static int getCowHerdValue() {
    return _sharedPref!.getInt(_cowHerd) ?? 0;
  }

  static Future clearCowHerd() async {
    await _sharedPref!.remove(_cowHerd);
  }

//!------------------------------- SheepHerd---------------------------- */
  static Future setSheepHerdValue(int value) async {
    await _sharedPref!.setInt(_sheepHerd, value);
  }

  static int getSheepHerdValue() {
    return _sharedPref!.getInt(_sheepHerd) ?? 0;
  }

  static Future clearSheepHerd() async {
    await _sharedPref!.remove(_sheepHerd);
  }


//!------------------------------- GoatHerd---------------------------- */
  static Future setGoatHerdValue(int value) async {
    await _sharedPref!.setInt(_goatHerd, value);
  }

  static int getGoatHerdValue() {
    return _sharedPref!.getInt(_goatHerd) ?? 0;
  }

  static Future clearGoatHerd() async {
    await _sharedPref!.remove(_goatHerd);
  }


//!------------------------------- HorseHerd---------------------------- */
  static Future setHorseHerdValue(int value) async {
    await _sharedPref!.setInt(_horseHerd, value);
  }

  static int getHorseHerdValue() {
    return _sharedPref!.getInt(_horseHerd) ?? 0;
  }

  static Future clearHorseHerd() async {
    await _sharedPref!.remove(_horseHerd);
  }


//!------------------------------- CamelStatus---------------------------- */
  static Future setCamelStatusValue(int value) async {
    await _sharedPref!.setInt(_camelstatus, value);
  }

  static int getCamelStatusValue() {
    return _sharedPref!.getInt(_camelstatus) ?? 0;
  }

  static Future clearCamelStatus() async {
    await _sharedPref!.remove(_camelstatus );
  }

//!------------------------------- CowStatus---------------------------- */
  static Future setCowStatusValue(int value) async {
    await _sharedPref!.setInt(_cowstatus, value);
  }

  static int getCowStatusValue() {
    return _sharedPref!.getInt(_cowstatus) ?? 0;
  }

  static Future clearCowStatus() async {
    await _sharedPref!.remove(_cowstatus);
  }


//!------------------------------- SheepStatus---------------------------- */
  static Future setSheepStatusValue(int value) async {
    await _sharedPref!.setInt(_sheepstatus, value);
  }

  static int getSheepStatusValue() {
    return _sharedPref!.getInt(_sheepstatus) ?? 0;
  }

  static Future clearSheepStatus() async {
    await _sharedPref!.remove(_sheepstatus);
  }



//!------------------------------- GoatStatus---------------------------- */
  static Future setGoatStatusValue(int value) async {
    await _sharedPref!.setInt(_goatstatus, value);
  }

  static int getGoatStatusValue() {
    return _sharedPref!.getInt(_goatstatus) ?? 0;
  }

  static Future clearGoatStatus() async {
    await _sharedPref!.remove(_goatstatus);
  }


/*------------------------------- HorseStatus---------------------------- */
  static Future setHorseStatusValue(int value) async {
    await _sharedPref!.setInt(_horsestatus, value);
  }

  static int getHorseStatusValue() {
    return _sharedPref!.getInt(_horsestatus) ?? 0;
  }

  static Future clearHorseStatus() async {
    await _sharedPref!.remove(_horsestatus);
  }
}


