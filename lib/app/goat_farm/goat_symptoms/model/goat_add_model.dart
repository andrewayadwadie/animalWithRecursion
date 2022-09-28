import 'dart:io';

class GoatAddModel {
  final String syndromeId;
  final String count ;
  final String note ;
  final List<File> photos;

  GoatAddModel({
    required this.syndromeId,
   required this.photos,
    required this.count ,
     required this.note ,
  });

  factory GoatAddModel.fromJson(Map<String, dynamic> jsonData) {
    return GoatAddModel(
      syndromeId: jsonData['SyndromeId'],
      note: jsonData['Note'],
      count: jsonData['Count']??"0",
     photos: jsonData['Photos'],
    );
  }
}
