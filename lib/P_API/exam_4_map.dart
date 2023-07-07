import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:untitled1/exercise/exam_1_map.dart';

import 'login_function.dart';

class Questions4{
  int? id ;
  String? Text;
  Questions4({this.id,this.Text});
  Questions4.fromJson(Map<String,dynamic> json){
    id=json['id'];
    Text=json['text'];

  }
}
class GetExam4 {


  //String? name;
  //String? medicalSpecialization;
  //String? image_src;

  List<Questions4>questions=[];
  GetExam4({ required this.questions});
 // GetExam.fromJson(Map<String,dynamic> json){
   // id = json['id'];
   // questions=json['questions']!=null? Questions.fromJson(json['questions']):null;
  //}

  Map<String, dynamic> toJson() {
    return <String, dynamic>{

      'questions': questions,

    };
  }

  GetExam4.fromJson(Map<String,dynamic>json){

    json['questions'].forEach((element){
      questions.add(element);
    });
  }
}

Future<List<GetExam4?>?> getexam4api
() async {
  var accessToken = await storage.read(key: 'token');
  globalToken = accessToken;

  //Map<String, dynamic> params;


  Uri uri = Uri.parse('$baseurl/test-exams/4');
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
    return jsonResponse.map((data) => GetExam4.fromJson(data)).toList();
  } else {
    return null;
  }
}