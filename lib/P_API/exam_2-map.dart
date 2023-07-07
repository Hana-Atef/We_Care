import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled1/P_API/exam_1_map.dart';

import 'login_function.dart';

class Questions2{
  int? id ;
  String? Text;
  Questions2({this.id,this.Text});
  Questions2.fromJson(Map<String,dynamic> json){
    id=json['id'];
    Text=json['text'];

  }
}
class GetExam2 {
 // int? id;

  //String? name;
  //String? medicalSpecialization;
  //String? image_src;

  // Questions2?questions;
  List<Questions2>questions = [];

  GetExam2({ required this.questions});
// GetExam.fromJson(Map<String,dynamic> json){
// id = json['id'];
// questions=json['questions']!=null? Questions.fromJson(json['questions']):null;
//}

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
    //  'id': id,
      'questions': questions,

    };
  }
  /*
  factory GetExam2.fromJson(Map<String, dynamic> json) {
    return GetExam2(
        id: json['id'],
        json['questions'].forEach((element){
      questions.add(element);
    }),
}*/
  GetExam2.fromJson(Map<String,dynamic>json){

    json['questions'].forEach((element){
      questions.add(element);
    });
  }

}
Future<List<GetExam2?>?> getexam2api
    () async {
  var accessToken = await storage.read(key: 'token');
  globalToken = accessToken;

  //Map<String, dynamic> params;


  Uri uri = Uri.parse('$baseurl/test-exams/2');
  final finalUri = uri;

  final response = await http.get(
    finalUri,
    headers: <String, String>{
      'Authorization': 'Bearer $accessToken',
    },
  );
  print('API ' + response.statusCode.toString());
  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => GetExam2.fromJson(data)).toList();
  } else {
    return null;
  }
}