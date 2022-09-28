import 'dart:io';

class SheepAddModel {
  final String syndromeId;
  final String count ;
  final String note ;
  final List<File> photos;

  SheepAddModel({
    required this.syndromeId,
   required this.photos,
    required this.count ,
     required this.note ,
  });

  factory SheepAddModel.fromJson(Map<String, dynamic> jsonData) {
    return SheepAddModel(
      syndromeId: jsonData['SyndromeId'],
      note: jsonData['Note'],
      count: jsonData['Count']??"0",
     photos: jsonData['Photos'],
    );
  }
}
