class CowHerdModel {
  final int numberOfAnimals;
  final int numberOfCases;
  final int numberOfAdults;
  final int numberOfVirginity;
  final int numberOfAged;
  final int numberOfInfant;
  final int numberOfAblaction;
  final int numberOfMales;
  final int numberOfFemales;
  final int numberOfDeaths;
  final int numberOfSuddenDeath;
  final int farmId;
  final int eductionSystemId;
  final int animalStrainId;
  final String note;
  final String size;
  final String activityType;
  final String lat;
  final String long;
  final String dateOfEpidemiologicalSurvey;
  CowHerdModel({
    required this.numberOfAnimals,
    required this.numberOfCases,
    required this.numberOfAdults,
    required this.numberOfVirginity,
    required this.numberOfAged,
    required this.numberOfInfant,
    required this.numberOfAblaction,
    required this.numberOfMales,
    required this.numberOfFemales,
    required this.numberOfDeaths,
    required this.numberOfSuddenDeath,
    required this.farmId,
    required this.eductionSystemId,
    required this.animalStrainId,
    required this.note,
    required this.size,
    required this.activityType,
    required this.lat,
    required this.long,
    required this.dateOfEpidemiologicalSurvey,
  });

  factory CowHerdModel.fromJson(Map<String, dynamic> jsonData) {
    return CowHerdModel(
      numberOfAnimals: jsonData['NumberOfAnimals'],
      numberOfCases: jsonData['NumberOfCases'],
      numberOfAdults: jsonData['NumberOfAdults'],
      numberOfVirginity: jsonData['NumberOfVirginity'],
      numberOfAged: jsonData['NumberOfAged'],
      numberOfInfant: jsonData['NumberOfInfant'],
      numberOfAblaction: jsonData['NumberOfAblaction'],
      numberOfMales: jsonData['NumberOfMales'],
      numberOfFemales: jsonData['NumberOfFemales'],
      numberOfDeaths: jsonData['NumberOfDeaths'],
      numberOfSuddenDeath: jsonData['NumberOfSuddenDeath'],
      farmId: jsonData['FarmId'],
      eductionSystemId: jsonData['EductionSystemId'],
      animalStrainId: jsonData['AnimalStrainId'],
      activityType: jsonData['ActivityType'],
      lat: jsonData['Lat'],
      long: jsonData['Long'],
      note: jsonData['Note'],
      size: jsonData['Size'],
      dateOfEpidemiologicalSurvey: jsonData['DateOfEpidemiologicalSurvey'],
    );
  }
}
