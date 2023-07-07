import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:untitled1/exercise/exam_1_map.dart';

import 'login_function.dart';

class Questions6{
  int? id ;
  String? Text;
  Questions6({this.id,this.Text});
  Questions6.fromJson(Map<String,dynamic> json){
    id=json['id'];
    Text=json['text'];

  }
}
class GetExam6 {


  //String? name;
  //String? medicalSpecialization;
  //String? image_src;

  List<Questions6>questions = [];
  GetExam6({ required this.questions});
 // GetExam.fromJson(Map<String,dynamic> json){
   // id = json['id'];
   // questions=json['questions']!=null? Questions.fromJson(json['questions']):null;
  //}

  Map<String, dynamic> toJson() {
    return <String, dynamic>{

      'questions': questions,

    };
  }

  GetExam6.fromJson(Map<String,dynamic>json){

    json['questions'].forEach((element){
      questions.add(element);
    });
  }
}

Future<List<GetExam6?>?> getexam6api
() async {
  var accessToken = await storage.read(key: 'token');
  globalToken = accessToken;

  //Map<String, dynamic> params;


  Uri uri = Uri.parse('$baseurl/test-exams/6');
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
    return jsonResponse.map((data) => GetExam6.fromJson(data)).toList();
  } else {
    return null;
  }
}