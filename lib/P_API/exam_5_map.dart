import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:untitled1/exercise/exam_1_map.dart';

import 'login_function.dart';

class Questions5{
  int? id ;
  String? Text;
  Questions5({this.id,this.Text});
  Questions5.fromJson(Map<String,dynamic> json){
    id=json['id'];
    Text=json['text'];

  }
}
class GetExam5 {




  List<Questions5>questions = [];
  GetExam5({ required this.questions});
 // GetExam.fromJson(Map<String,dynamic> json){
   // id = json['id'];
   // questions=json['questions']!=null? Questions.fromJson(json['questions']):null;
  //}

  Map<String, dynamic> toJson() {
    return <String, dynamic>{

      'questions': questions,

    };
  }

  GetExam5.fromJson(Map<String,dynamic>json){

    json['questions'].forEach((element){
      questions.add(element);
    });
  }
}

Future<List<GetExam5?>?> getexam5api
() async {
  var accessToken = await storage.read(key: 'token');
  globalToken = accessToken;

  //Map<String, dynamic> params;


  Uri uri = Uri.parse('$baseurl/test-exams/5');
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
    return jsonResponse.map((data) => GetExam5.fromJson(data)).toList();
  } else {
    return null;
  }
}