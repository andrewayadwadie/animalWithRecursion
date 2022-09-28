import 'dart:io';

class CamelAddModel {
  final String syndromeId;
  final String count ;
  final String note ;
  final List<File> photos;

  CamelAddModel({
    required this.syndromeId,
   required this.photos,
    required this.count ,
     required this.note ,
  });

  factory CamelAddModel.fromJson(Map<String, dynamic> jsonData) {
    return CamelAddModel(
      syndromeId: jsonData['SyndromeId'],
      note: jsonData['Note'],
      count: jsonData['Count']??"0",
     photos: jsonData['Photos'],
    );
  }
}
