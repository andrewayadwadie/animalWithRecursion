import 'dart:io';

class CowAddModel {
  final String syndromeId;
  final String count ;
  final String note ;
  final List<File> photos;

  CowAddModel({
    required this.syndromeId,
   required this.photos,
    required this.count ,
     required this.note ,
  });

  factory CowAddModel.fromJson(Map<String, dynamic> jsonData) {
    return CowAddModel(
      syndromeId: jsonData['SyndromeId'],
      note: jsonData['Note'],
      count: jsonData['Count']??"0",
     photos: jsonData['Photos'],
    );
  }
}
