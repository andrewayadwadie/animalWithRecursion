import 'dart:io';

class HorseAddModel {
  final String syndromeId;
  final String count ;
  final String note ;
  final List<File> photos;

  HorseAddModel({
    required this.syndromeId,
   required this.photos,
    required this.count ,
     required this.note ,
  });

  factory HorseAddModel.fromJson(Map<String, dynamic> jsonData) {
    return HorseAddModel(
      syndromeId: jsonData['SyndromeId'],
      note: jsonData['Note'],
      count: jsonData['Count']??"0",
     photos: jsonData['Photos'],
    );
  }
}
