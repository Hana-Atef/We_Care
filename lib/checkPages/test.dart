// import 'package:flutter/material.dart';
//
// class RadioQuestion {
//   final String question;
//   final List<String> options;
//
//   RadioQuestion({required this.question, required this.options});
// }
//
// class RadioFormPage extends StatefulWidget {
//   @override
//   _RadioFormPageState createState() => _RadioFormPageState();
// }
//
// class _RadioFormPageState extends State<RadioFormPage> {
//   List<RadioQuestion> questions = [
//     RadioQuestion(
//       question: 'Question 1',
//       options: ['Option 1', 'Option 2', 'Option 3'],
//     ),
//     RadioQuestion(
//       question: 'Question 2',
//       options: ['Option 1', 'Option 2', 'Option 3'],
//     ),
//     RadioQuestion(
//       question: 'Question 3',
//       options: ['Option 1', 'Option 2', 'Option 3'],
//     ),
//     RadioQuestion(
//       question: 'Question 4',
//       options: ['Option 1', 'Option 2', 'Option 3'],
//     ),
//     RadioQuestion(
//       question: 'Question 5',
//       options: ['Option 1', 'Option 2', 'Option 3'],
//     ),
//   ];
//
//   List<String?> selectedAnswers = List<String?>.filled(5, null);
//
//   bool areAllQuestionsAnswered() {
//     return selectedAnswers.every((answer) => answer != null);
//   }
//
//   void submitForm() {
//     if (areAllQuestionsAnswered()) {
//       // Process the selected answers
//       print('Selected Answers: $selectedAnswers');
//       Navigator.pushNamed(context, 'form2');
//
//       // Proceed to the next page or perform further actions
//     } else {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('Incomplete Form'),
//             content: Text('Please answer all the questions.'),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Radio Form'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               for (int i = 0; i < questions.length; i++) ...[
//                 Text(questions[i].question),
//                 Column(
//                   children: [
//                     for (int j = 0; j < questions[i].options.length; j++) ...[
//                       RadioListTile<String>(
//                         value: questions[i].options[j],
//                         groupValue: selectedAnswers[i],
//                         onChanged: (value) {
//                           setState(() {
//                             selectedAnswers[i] = value;
//                           });
//                         },
//                         title: Text(questions[i].options[j]),
//                       ),
//                     ],
//                   ],
//                 ),
//                 SizedBox(height: 16.0),
//               ],
//               ElevatedButton(
//                 onPressed: submitForm,
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



//
// import 'package:flutter/material.dart';
//
// class CardPage extends StatefulWidget {
//   @override
//   _CardPageState createState() => _CardPageState();
// }
//
// class _CardPageState extends State<CardPage> {
//   String selectedAnswer = 'option2'; // The specific answer
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> cardData = ['Card 1', 'Card 2', 'Card 3', 'Card 4'];
//
//     List<Widget> cardsToShow = cardData
//         .where((card) => card.contains(selectedAnswer))
//         .map((card) => Card(
//       child: ListTile(
//         title: Text(card),
//       ),
//     ))
//         .toList();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cards Page'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 selectedAnswer = 'option2'; // Change the selected answer
//               });
//             },
//             child: Text('Change Answer'),
//           ),
//           SizedBox(height: 16.0),
//           ...cardsToShow,
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CardPage(),
//   ));
// }


// import 'package:flutter/material.dart';
//
// class CardPage extends StatefulWidget {
//   @override
//   _CardPageState createState() => _CardPageState();
// }
//
// class _CardPageState extends State<CardPage> {
//   String selectedAnswer = ''; // The specific radio button answer
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> cardData = [
//       {'answer': 'option1', 'text': 'Card 1'},
//       {'answer': 'option1', 'text': 'Card 2'},
//       {'answer': 'option1', 'text': 'Card 3'},
//       {'answer': 'option1', 'text': 'Card 4'},
//       {'answer': 'option1', 'text': 'Card 5'},
//       {'answer': 'option1', 'text': 'Card 6'},
//       {'answer': 'option2', 'text': 'Card 1'},
//       {'answer': 'option2', 'text': 'Card 2'},
//       {'answer': 'option2', 'text': 'Card 3'},
//       {'answer': 'option2', 'text': 'Card 4'},
//
//
//     ];
//
//     List<Widget> cardsToShow = cardData
//         .where((card) => card['answer'] == selectedAnswer)
//         .map((card) => Card(
//       child: ListTile(
//         title: Text(card['text']!),
//       ),
//     ))
//         .toList();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cards Page'),
//       ),
//       body: Column(
//         children: [
//           RadioListTile<String>(
//             title: Text('Option 1'),
//             value: 'option1',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           RadioListTile<String>(
//             title: Text('Option 2'),
//             value: 'option2',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           RadioListTile<String>(
//             title: Text('Option 3'),
//             value: 'option3',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           SizedBox(height: 16.0),
//           ...cardsToShow,
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CardPage(),
//   ));
// }


// import 'package:flutter/material.dart';
//
// class CardPage extends StatefulWidget {
//   @override
//   _CardPageState createState() => _CardPageState();
// }
//
// class _CardPageState extends State<CardPage> {
//   String selectedAnswer = ''; // The specific radio button answer
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> cardData = [
//       {'answer': 'option1', 'text': 'Card 1', 'key':'card1'},
//       {'answer': 'option2', 'text': 'Card 2','key':'card2'},
//       {'answer': 'option1', 'text': 'Card 3','key':'card3'},
//       {'answer': 'option3', 'text': 'Card 4','key':'card4'},
//     ];
//
//     List<Widget> cardsToShow = [];
//
//     for (int i = 0; i < cardData.length; i++) {
//       if (cardData[i]['answer'] == selectedAnswer) {
//         cardsToShow.add(
//           Card(
//             key: Key(i.toString()), // Assigning a unique key to each card
//             child: ListTile(
//               title: Text(cardData[i]['text']!),
//             ),
//           ),
//         );
//       }
//     }
//
//     var card4;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cards Page'),
//       ),
//       body: Column(
//         children: [
//           RadioListTile<String>(
//             title: Text('Option 1'),
//             value: 'option1',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           RadioListTile<String>(
//             title: Text('Option 2'),
//             value: 'option2',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           RadioListTile<String>(
//             title: Text('Option 3'),
//             value: 'option3',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//
//
//           InkWell(
//             child: Card(
//               key: card4,
//               shadowColor: Colors.black,
//               elevation: 7,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)),
//               clipBehavior: Clip.antiAlias,
//               margin: EdgeInsets.all(15),
//               child: Column(
//                 children: [
//                   Image.asset(
//                     'assets/images/img2.jpg',
//                     fit: BoxFit.cover,
//                   ),
//                   ListTile(
//                     title: Text(
//                       'اللغه اللاتكيفية',
//                       style: TextStyle(
//                           color: Color.fromARGB(204, 1, 94, 170),
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold),
//                     ),
//
//                   ),
//                 ],
//               ),
//             ),
//             onTap: () {
//               Navigator.pushNamed(context, 'form6');
//             },
//           ),
//           SizedBox(height: 16.0),
//           ...cardsToShow,
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CardPage(),
//   ));
// }

//
// import 'package:flutter/material.dart';
//
// class CardPage extends StatefulWidget {
//   @override
//   _CardPageState createState() => _CardPageState();
// }
//
// class _CardPageState extends State<CardPage> {
//   String selectedAnswer = ''; // The specific radio button answer
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cards Page'),
//       ),
//       body: Column(
//         children: [
//           RadioListTile<String>(
//             title: Text('Option 1'),
//             value: 'option1',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           RadioListTile<String>(
//             title: Text('Option 2'),
//             value: 'option2',
//             groupValue: selectedAnswer,
//             onChanged: (value) {
//               setState(() {
//                 selectedAnswer = value!;
//               });
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ResultPage(selectedAnswer: selectedAnswer),
//                 ),
//               );
//             },
//             child: Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ResultPage extends StatelessWidget {
//   final String selectedAnswer;
//
//   ResultPage({required this.selectedAnswer});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> cardData = [
//       {'answer': 'option1', 'key': 'Card 1'},
//       {'answer': 'option1', 'key': 'Card 2'},
//       {'answer': 'option1', 'key': 'Card 3'},
//       {'answer': 'option1', 'key': 'Card 4'},
//       {'answer': 'option2', 'key': 'Card1'},
//       {'answer': 'option2', 'key': 'Card2'},
//       {'answer': 'option2', 'key': 'Card3'},
//       {'answer': 'option2', 'key': 'Card4'},
//       {'answer': 'option2', 'key': 'Card5'},
//       {'answer': 'option2', 'key': 'Card6'},
//     ];
//
//     List<Widget> cardsToShow = cardData
//         .where((card) => card['answer'] == selectedAnswer)
//         .map((card) => Card(
//       key: Key(card['key']!),
//       child: ListTile(
//         title: Text(card['key']!),
//       ),
//     ))
//         .toList();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Result Page'),
//       ),
//       body: ListView(
//         children: cardsToShow,
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CardPage(),
//   ));
// }






// import 'package:flutter/material.dart';
//
// class CardPage extends StatefulWidget {
//   @override
//   _CardPageState createState() => _CardPageState();
// }
//
// class _CardPageState extends State<CardPage> {
//   String? selectedAnswer; // The selected radio button answer
//   int numberOfCards = 0; // Number of cards to display
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => AlertDialog(
//                   title: Text('Select an Option'),
//                   content: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       RadioListTile<String>(
//                         title: Text('Option 1 (4 cards)'),
//                         value: 'option1',
//                         groupValue: selectedAnswer,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedAnswer = value!;
//                             numberOfCards = 4;
//                           });
//                         },
//                       ),
//                       RadioListTile<String>(
//                         title: Text('Option 2 (6 cards)'),
//                         value: 'option2',
//                         groupValue: selectedAnswer,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedAnswer = value!;
//                             numberOfCards = 6;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                   actions: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                         if (selectedAnswer != null) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   ResultPage(selectedAnswer: selectedAnswer!, numberOfCards: numberOfCards),
//                             ),
//                           );
//                         }
//                       },
//                       child: Text('Submit'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             child: Text('Show Dialog'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ResultPage extends StatelessWidget {
//   final String selectedAnswer;
//   final int numberOfCards;
//
//   ResultPage({required this.selectedAnswer, required this.numberOfCards});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> cardData = [
//       {'key': 'card1', 'text': 'Card 1'},
//       {'key': 'card2', 'text': 'Card 2'},
//       {'key': 'card3', 'text': 'Card 3'},
//       {'key': 'card4', 'text': 'Card 4'},
//       {'key': 'card5', 'text': 'Card 5'},
//       {'key': 'card6', 'text': 'Card 6'},
//       {'key': 'card7', 'text': 'Card 7'},
//       {'key': 'card8', 'text': 'Card 8'},
//       {'key': 'card9', 'text': 'Card 9'},
//       {'key': 'card10', 'text': 'Card 10'},
//       {'key': 'card11', 'text': 'Card 11'},
//       {'key': 'card12', 'text': 'Card 12'},
//     ];
//
//     List<Widget> cardsToShow = cardData
//         .where((card) => card['key']!.startsWith(selectedAnswer))
//         .take(numberOfCards)
//         .map((card) => Card(
//       key: Key(card['key']!),
//       child: ListTile(
//         title: Text(card['text']!),
//       ),
//     ))
//         .toList();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Result Page'),
//       ),
//       body: ListView(
//         children: cardsToShow,
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CardPage(),
//   ));
// }











//prediciton page for speak or not

// import 'package:flutter/material.dart';
//
// class predictionPage extends StatefulWidget {
//   @override
//   State<predictionPage> createState() => _predictionPageState();
// }
//
// class _predictionPageState extends State<predictionPage> {
//   String speaks='';
//
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//         textDirection: TextDirection.rtl,
//         child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Color.fromRGBO(33,150, 243, 0.6),
//               title: Text(
//                 'التشخيص',
//                 style: TextStyle(color: Colors.white, fontSize: 30),
//               ),
//             ),
//             body: Center(
//                 child: ListView(
//                   children: [
//                     Padding(padding: EdgeInsets.only(top: 20)),
//                     CircleAvatar(
//                       radius: 80,
//                       child: ClipOval(
//                         child: Image.asset(
//                           'assets/images/img1.jpg',
//                           width: 200,
//                           height: 200,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     InkWell(
//                       child: Text(
//                         'تغير صورة المريض',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.blueAccent,
//                           fontSize: 20,
//                         ),
//                       ),
//                       onTap: () {},
//                     ),
//                     Divider(
//                       thickness: 2,
//                       color: Colors.black,
//                       height: 80,
//                     ),
//                     Text('the prediction is'),
//                     Text('varible whose value is from model'),
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color.fromRGBO(33, 150, 243, .5)
//                             ),
//                             onPressed: () {
//                               // from model
//                               showDialog(context: context, builder: (context){
//                                 return Directionality(textDirection: TextDirection.rtl, child: AlertDialog(
//                                   title: Text('هل الطفل ناطق؟'),
//                                   content: Column(
//                                     mainAxisSize:MainAxisSize.min,
//                                     children: [
//                                       RadioListTile<String>(
//                                         title: Text("ناطق"),
//                                         value: "0",
//                                         groupValue: speaks,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             speaks = value.toString();
//                                           });
//                                         },
//                                       ),
//                                       RadioListTile(
//                                         title: Text("غير ناطق"),
//                                         value: '1',
//                                         groupValue: speaks,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             speaks = value.toString();
//                                           });
//                                         },
//                                       ),
//                                       ElevatedButton(onPressed: (){ if (speaks == '0') {
//                                         Navigator.pushNamed(context, 'formPage');
//                                       } else if (speaks == '1') {
//                                         Navigator.pushNamed(context, 'autinfo');
//                                       }},
//                                           child: Text('تم'))
//                                     ],),
//                                 ));
//                               });
//
//
//                             },
//
//                             child: Text('شدة التوحد',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
//                       ],
//                     )
//                   ],
//                 ))));
//   }
// }


// import 'dart:io';

import 'package:untitled1/checkPages/speak4.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Upload Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   File? _image;
//
//   Future<void> _pickImage(ImageSource source) async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.getImage(source: source);
//
//     setState(() {
//       if (pickedImage != null) {
//         _image = File(pickedImage.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
//
//   DecorationImage _getImageProvider() {
//     if (_image != null) {
//       return DecorationImage(
//         image: FileImage(_image!),
//         fit: BoxFit.cover,
//       );
//     } else {
//       return DecorationImage(
//         image: AssetImage('assets/placeholder_image.jpg'),
//         fit: BoxFit.cover,
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Upload Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                   image:_getImageProvider(),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     _pickImage(ImageSource.gallery); // Opens the image picker from the gallery
//                   },
//                   child: Text('Select Image'),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     _pickImage(ImageSource.camera); // Opens the camera to capture an image
//                   },
//                   child: Text('Capture Image'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }












//
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
//
// class testpage extends StatefulWidget {
//   const testpage({Key? key}) : super(key: key);
//
//   @override
//   State<testpage> createState() => _testpageState();
// }
//
// class _testpageState extends State<testpage> {
//   File? image;
//   Future _pickercamera(ImageSource source) async{
//       try{
//         final image = await ImagePicker().pickImage(source: source);
//         if (image == null)return;
//         final imageTemporary = await saveImagepermanent(image.path);
//         setState(() => this.image = imageTemporary);
//        }on PlatformException catch(e){
//         print('failed image: $e');
//       };
//   }
//   Future <File> saveImagepermanent(String imagepath) async{
//     final directory = await getApplicationDocumentsDirectory();
//     final name = basename(imagepath);
//     final image = File('${directory.path}/ $name');
//     return File(imagepath).copy(image.path);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('image'),),
//       body: Column(children: [
//         // ElevatedButton(onPressed: pickercamera, child: Text('upload')),
//         // Center(child: _file == null ?Text('image not selected'):  Image.file(_file!, height: 500,width: 500,fit: BoxFit.contain,),),
//         // Center(child: image!= null? CircleAvatar(
//         //     radius: 80,
//         //     child: ClipOval(child:Image.file(image!, height: 200,width: 200,fit: BoxFit.fill,))):
//         //  CircleAvatar(
//         //   radius: 80,
//         //   child: ClipOval(
//         //     child: Image.asset(
//         //       'assets/images/img1.jpg',
//         //       width: 200,
//         //       height: 200,
//         //       fit: BoxFit.fill,
//         //     ),
//         //   ),
//         // ),),
//         //
//         //
//         // IconButton(onPressed:(){ _pickercamera(ImageSource.gallery);}, icon: Icon(Icons.photo)),
//         // IconButton(onPressed:(){ _pickercamera(ImageSource.camera);}, icon: Icon(Icons.camera_alt_outlined)),
//
//         image!= null? CircleAvatar(
//             radius: 80,
//             child: ClipOval(child:Image.file(image!, height: 200,width: 200,fit: BoxFit.fill,))):
//         CircleAvatar(
//           radius: 80,
//           child: ClipOval(
//             child: Image.asset(
//               'assets/images/img1.jpg',
//               width: 200,
//               height: 200,
//               fit: BoxFit.fill,
//             ),
//           ),
//         ),
//         Positioned(
//           child: CircleAvatar(
//             radius: 25,
//             backgroundColor: Colors.lightBlue,
//             child: IconButton(
//             onPressed: (){
//               showModalBottomSheet(context: context,
//                   builder: (context)=> Container(
//                     padding: EdgeInsets.only(right: 10,top: 10),
//                     height: 120,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//
//                       children: [
//                         Text('اختر الصورة', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                                  children: [
//                                    Column(children: [IconButton(onPressed:(){ _pickercamera(ImageSource.gallery);}, icon: Icon(Icons.camera_alt_outlined),color: Colors.blue,),
//                                      Text('الكاميرا'),],),
//                                    SizedBox(width: 50,),
//                                    Column(children: [IconButton(onPressed:(){ _pickercamera(ImageSource.gallery);}, icon: Icon(Icons.photo),color: Colors.blue,),
//                                      Text('المعرض')],)
//                                  ],),
//                       ],
//                     ),
//                   )
//               );},
//             icon: Icon(Icons.camera_alt, size: 30),
//               color: Colors.white, ),
//           ),
//           right: 0,top: 110,)
//
//       ],),
//     );
//   }
//
// }
//
//
//
//
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   File? image;
// //   Future _pickImage()async{
// //     try{
// //       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
// //       if(image== null)return;
// //       final imageTemporary = File(image.path);
// //       setState(() => this.image = imageTemporary);
// //     }on PlatformException catch(e){
// //       print('failed image : $e');
// //     }
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return  Scaffold(
// //       body: Column(
// //         children: [
// //          image!= null?Image.file(image!): Container(decoration:const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img4.jpg'),fit: BoxFit.cover)),),
// //           ElevatedButton(onPressed: ()=> _pickImage(), child: Text('gallery'))
// //         ],
// //       ),
// //     );
// //   }
// //
// //   // Container imagebulder() => Container(decoration:const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img4.jpg'),fit: BoxFit.cover)),);
// // }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Image Upload Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   File? _image;
// //
// //
// //   Future<void> _pickImage(ImageSource source) async {
// //     final picker = ImagePicker();
// //     final pickedImage = await picker.pickImage(source: source);
// //
// //     setState(() {
// //       if (pickedImage != null) {
// //         _image = File(pickedImage.path);
// //       } else {
// //         print('No image selected.');
// //       }
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Image Upload Demo'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Container(
// //               width: 200,
// //               height: 200,
// //               decoration: BoxDecoration(
// //                 shape: BoxShape.circle,
// //                 image: DecorationImage(
// //                   image: _image != null ? Image.file(_image!) : AssetImage('assets/placeholder_image.jpg'),
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     _pickImage(ImageSource.gallery); // Opens the image picker from the gallery
// //                   },
// //                   child: Text('Select Image'),
// //                 ),
// //                 SizedBox(width: 20),
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     _pickImage(ImageSource.camera); // Opens the camera to capture an image
// //                   },
// //                   child: Text('Capture Image'),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// class radio extends StatefulWidget {
//   const radio({Key? key}) : super(key: key);
//
//   @override
//   State<radio> createState() => _radioState();
// }
//
// class _radioState extends State<radio> {
//   String? speak;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(child: Column(children: [
//         Text('data'),
//
//
//           ElevatedButton(onPressed: (){
//
//             showDialog(context: context, builder: (BuildContext context)
//
//           {
//             String? speak;
//             return Directionality(
//                 textDirection: TextDirection.rtl,
//                 child: AlertDialog(
//                   title: Text('هل الطفل ناطق؟'),
//                   content: Column(children: [
//                     RadioListTile(
//                       title: Text("ابدا"),
//                       value: "0",
//                       groupValue: speak,
//                       onChanged: (value) {
//                         setState(() {
//                           speak = value.toString();
//                         });
//                       },
//                     ),
//                     RadioListTile(
//                       title: Text("احيانا"),
//                       value: "1",
//                       groupValue: speak,
//                       onChanged: (value) {
//                         setState(() {
//                           speak = value.toString();
//                         });
//                       },
//                     ),
//                   ],),
//                 ));
//           }
//           );},
//               child: Text('big_button')),
//
//
//         ElevatedButton(onPressed: (){
//           showDialog<void>(
//               context: context,
//               builder: (BuildContext context) {
//                 int selectedRadio = 0;
//                 return AlertDialog(
//                   content: StatefulBuilder(
//                     builder: (BuildContext context, StateSetter setState) {
//                       return Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: List<Widget>.generate(4, (int index) {
//                           return Radio<int>(
//                             value: index,
//                             groupValue: selectedRadio,
//                             onChanged: (int? value) {
//                               setState(() => selectedRadio = value!);
//                             },
//                           );
//                         }),
//                       );
//                     },
//                   ),
//                 );
//               });}, child: Text('two')),
//
//         ElevatedButton(onPressed: (){
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 int? speaks ;
//                 return Directionality(textDirection: TextDirection.rtl, child: AlertDialog(
//                   title: Text('هل الطفل ناطق'),
//                   content: StatefulBuilder(
//                     builder: (BuildContext context, StateSetter setState) {
//                       return Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children:[
//                             RadioListTile(
//                               title: Text("ناطق"),
//                               value: 0,
//                               groupValue: speaks,
//                               onChanged: (value) {
//                                 setState(() {
//                                   speaks = value!;
//                                 });
//                               },
//                             ),
//                             RadioListTile(
//                               title: Text("غير ناطق"),
//                               value: 1,
//                               groupValue: speaks,
//                               onChanged: (value) {
//                                 setState(() {
//                                   speaks = value!;
//                                 });
//                               },
//                             ),
//
//                             ElevatedButton(onPressed: (){ if (speaks == 0) {
//                               Navigator.pushNamed(context, 'speak6');
//                             } else if (speaks == 1) {
//                               Navigator.pushNamed(context, 'speak4');
//                             }}, child: Text('تم'))
//                           ]
//                       );
//                     },
//                   ),
//                 ));
//               });}, child: Text('شدة التوحد')),

//
//
// //
// //           ElevatedButton(
// //           style: ElevatedButton.styleFrom(
// //           backgroundColor: Color.fromRGBO(33, 150, 243, .5)
// //     ),
// //     onPressed: () {
// //     // from model
// //     showDialog(context: context, builder: (context){
// //     return Directionality(textDirection: TextDirection.rtl, child: AlertDialog(
// //     title: Text('هل الطفل ناطق؟'),
// //     content: Column(
// //     mainAxisSize:MainAxisSize.min,
// //     children: [
// //     RadioListTile<String>(
// //     title: Text("ناطق"),
// //     value: "0",
// //     groupValue: speaks,
// //     onChanged: (value) {
// //     setState(() {
// //     speaks = value.toString();
// //     });
// //     },
// //     ),
// //     RadioListTile(
// //     title: Text("غير ناطق"),
// //     value: "1",
// //     groupValue: speaks,
// //     onChanged: (value) {
// //     setState(() {
// //     speaks = value.toString();
// //     });
// //     },
// //     ),
//     ElevatedButton(onPressed: (){ if (speaks == '0') {
//     Navigator.pushNamed(context, 'speak6');
//     } else if (speaks == '1') {
//     Navigator.pushNamed(context, 'speak4');
//     }}, child: Text('تم'))
// //
//       ],),),
//     );
//   }
// }
//


// Radio(value: '0', groupValue: speak, onChanged:(value){ setState(() {
// speak = value.toString();
// }
// );}),
// Radio(
//
// value: '1', groupValue: speak, onChanged:(value){ setState(() {
// speak = value.toString();
// }
// );}),
//
// RadioMenuButton(value: '2', groupValue: speak2, onChanged: (value){ setState(() {
// speak2 = value.toString();
// }
// );} ,
// child: Text('menu')),
//
// RadioMenuButton(value: '3', groupValue: speak2, onChanged: (value){ setState(() {
// speak2 = value.toString();
// }
// );} ,
// child: Text('menu2')),
//
//
//
//
//
// RadioListTile(value: '4', groupValue: speak3, onChanged:  (value){ setState(() {
// speak3 = value.toString();
// }
// );},
// title: Text('tile'),
// ),
// RadioListTile(value: '5', groupValue: speak3, onChanged:  (value){ setState(() {
// speak3 = value.toString();
// }
// );},
// title: Text('tile2'),
// ),
//
//
//
// RadioListTile(
// title: Text("ابدا"),
// value: "0",
// groupValue: speak,
// onChanged: (value) {
// setState(() {
// speak = value.toString();
// });
// },
// ),
// RadioListTile(
// title: Text("احيانا"),
// value: "1",
// groupValue: speak,
// onChanged: (value) {
// setState(() {
// speak = value.toString();
// });
// },
// ),


//
//
// import 'package:flutter/material.dart';
//
// class MyDialog extends StatefulWidget {
//   @override
//   _MyDialogState createState() => _MyDialogState();
// }
//
// class _MyDialogState extends State<MyDialog> {
//   String _selectedOption = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Dialog Example'),
//         ),
//         body: Center(
//         child: ElevatedButton(
//         onPressed: () {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Select an Option'),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 RadioListTile(
//                   title: Text('Option 1'),
//                   value: 'Option 1',
//                   groupValue: _selectedOption,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedOption = value.toString();
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: Text('Option 2'),
//                   value: 'Option 2',
//                   groupValue: _selectedOption,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedOption = value.toString();
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: Text('Option 3'),
//                   value: 'Option 3',
//                   groupValue: _selectedOption,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedOption = value.toString();
//                     });
//                   },
//                 ),
//               ],
//             ),
//             actions: [
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).pop(_selectedOption);
//                 },
//                 child: Text('OK'),
//               ),
//             ],
//           );
//         },
//       ).then((selectedOption) {
//         if (selectedOption != null) {
//           print('Selected option: $selectedOption');
//         }
//       });
//     },
//     child: Text('Open Dialog'),
//     )));
//   }
// }
//
//
//
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home:
// //         ),
// //       ),
// //     );
// //   }
// // }











// forget password code
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class ForgotPasswordPage extends StatelessWidget {
//   final TextEditingController _emailController = TextEditingController();
//
//   Future<void> _resetPassword(BuildContext context) async {
//     // Retrieve the entered email address
//     String email = _emailController.text;
//
//     // Validate the email address if necessary
//
//     try {
//       // Send password reset request to the API
//       final response = await http.post(
//         Uri.parse('your-api-endpoint'),
//         body: {'email': email},
//       );
//
//       // Handle the response and provide feedback to the user
//       if (response.statusCode == 200) {
//         // Password reset request successful
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Password reset email sent.'),
//           ),
//         );
//       } else {
//         // Password reset request failed
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Failed to send password reset email. Please try again.'),
//           ),
//         );
//       }
//     } catch (e) {
//       // Handle any errors that occur during the password reset process
//       print('Error sending password reset request: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('An error occurred. Please try again later.'),
//         ),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Forgot Password'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () => _resetPassword(context),
//               child: Text('Reset Password'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/////////////////////////////////


/*
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ImageClassificationApp(),
//     );
//   }
// }
//
// class ImageClassificationApp extends StatefulWidget {
//   @override
//   _ImageClassificationAppState createState() => _ImageClassificationAppState();
// }
//
// class _ImageClassificationAppState extends State<ImageClassificationApp> {
//   Interpreter? interpreter;
//   File? imageFile;
//   List<String> labels = [];
//   bool isModelReady = false;
//
//   @override
//   void initState() {
//     super.initState();
//     loadModel();
//   }
//
//   Future<void> loadModel() async {
//     try {
//       // Load the model from assets
//       String modelPath = 'assets/mobilenet_v2.tflite';
//       interpreter = await tfl.Interpreter.fromAsset(modelPath);
//
//       // Load the labels file
//       String labelsPath = 'assets/labels.txt';
//       String labelsText = await rootBundle.loadString(labelsPath);
//       labels = labelsText.split('\n');
//
//       setState(() {
//         isModelReady = true;
//       });
//     } catch (e) {
//       print('Error loading model: $e');
//     }
//   }
//
//   Future<void> classifyImage() async {
//     if (imageFile == null) return;
//
//     try {
//       // Preprocess the image
//       Uint8List imageBytes = await imageFile!.readAsBytes();
//       var inputShape = interpreter!.getInputTensor(0).shape;
//       var inputType = interpreter!.getInputTensor(0).type;
//       var inputImageData = ImageProcessorBuilder()
//           .add(ResizeOp(inputShape[1], inputShape[2], ResizeMethod.BILINEAR))
//           .add(NormalizeOp(0, 255))
//           .build()
//           .process(imageBytes);
//
//       // Run inference
//       var output = List.filled(labels.length, 0).reshape([1, labels.length]);
//       interpreter!.run(imageTensor.buffer, output);
//
//       // Get the predicted label
//       var labelIndex = output.argmax()[0];
//       var label = labels[labelIndex];
//
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Image Classification Result'),
//           content: Text('Predicted Label: $label'),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     } catch (e) {
//       print('Error classifying image: $e');
//     }
//   }
//
//   Future<void> pickImage() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() {
//         imageFile = File(pickedImage.path);
//       });
//       classifyImage();
//     }
//   }
//
//   @override
//   void dispose() {
//     interpreter?.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Classification App'),
//       ),
//       body: Center(
//         child: isModelReady
//             ? Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (imageFile != null) ...[
//               Image.file(imageFile!),
//               SizedBox(height: 16),
//             ],
//             ElevatedButton(
//               onPressed: pickImage,
//               child: Text('Select Image'),
//             ),
//           ],
//         )
//             : CircularProgressIndicator(),
//       ),
//     );
//   }
// }
*/



/*
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }
// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//  late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize the video player controller with the selected video file
//     _controller = VideoPlayerController.asset(dict[word])
//       ..initialize().then((_) {
//         setState(() {
//           // Start playing the video
//           _controller.play();
//         });
//       });
//   }
//
//   @override
//   void dispose() {
//     // Release the video player controller when the widget is disposed
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Player'),
//       ),
//       body: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: VideoPlayer(_controller),
//         )
//             : CircularProgressIndicator(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             // Toggle between play and pause
//             _controller.value.isPlaying
//                 ? _controller.pause()
//                 : _controller.play();
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Player',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: VideoPlayerScreen(),
//     );
//   }
// }
*/



/*
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter_tflite/flutter_tflite.dart';
// //
// class Tensorflow extends StatefulWidget {
//   @override
//   _TensorflowState createState() => _TensorflowState();
// }
//
// class _TensorflowState extends State<Tensorflow> {
//   List? _outputs;
//   File? _image;
//   bool _loading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _loading = true;
//
//     loadModel().then((value) {
//       setState(() {
//         _loading = false;
//       });
//     });
//   }
//
//   loadModel() async {
//     await Tflite.loadModel(
//       model: "assets/model.tflite",
//       labels: "assets/labels.txt",
//       numThreads: 1,
//     );
//   }
//   classifyImage(File image) async {
//     var output = await Tflite.runModelOnImage(
//         path: image.path,
//         imageMean: 0.0,
//         imageStd: 255.0,
//         numResults: 2,
//         threshold: 0.2,
//         asynch: true
//     );
//     setState(() {
//       _loading = false;
//       _outputs = output;
//     });
//   }
//   @override
//   void dispose() {
//     Tflite.close();
//     super.dispose();
//   }
//   pickImage() async {
//     final ImagePicker _picker = ImagePicker();
//     var image = await _picker.pickImage(source: ImageSource.gallery);
//     if (image == null) return null;
//     setState(() {
//       _loading = true;
//      XFile _image = image;
//     });
//     classifyImage(_image);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Tensorflow Lite",
//           style: TextStyle(color: Colors.white, fontSize: 25),
//         ),
//         backgroundColor: Colors.amber,
//         elevation: 0,
//       ),
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _loading ? Container(
//               height: 300,
//               width: 300,
//             ):
//             Container(
//               margin: EdgeInsets.all(20),
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _image != null ?  Image.file(_image!): Container(),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   _image != null ?  _outputs != null ?
//                   Text(_outputs![0]["label"],style: TextStyle(color: Colors.black,fontSize: 20),
//                   ) : Container(child: Text(""))
//                       :Container()
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.01,
//             ),
//             FloatingActionButton(
//               tooltip: 'Pick Image',
//               onPressed: pickImage,
//               child: Icon(Icons.add_a_photo,
//                 size: 20,
//                 color: Colors.white,
//               ),
//               backgroundColor: Colors.amber,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
*/

///////////////////////////


/* worked
class TfLiteModel extends StatefulWidget {
  const TfLiteModel({Key? key}) : super(key: key);

  @override
  State<TfLiteModel> createState() => _TfLiteModelState();
}

class _TfLiteModelState extends State<TfLiteModel> {
  late File _image;
  late List _results;
  bool imageSelect = false;
  @override
  void initState(){
    super.initState();
    loadModel();
  }
  Future loadModel() async{
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(model: 'assets/model.tflite',  labels: 'assets/labels.txt'))!;
    print("Model loading state: $res");
  }
  Future imageClassification(File image) async{
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,

    );
    setState(() {
      _results=recognitions!;
      _image=image;
      imageSelect=true;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Image Classification'),
      ),
      body: ListView(children: [
        (imageSelect)? Container(
        margin: EdgeInsets.all(10),
        child: Image.file(_image),
      ): Container(
        margin: EdgeInsets.all(10),
          child: Opacity(opacity: 0.8,
          child: Center(child: Text("no image selected"),),
          ),
      ),
        SingleChildScrollView(
          child: Column(children: (imageSelect)?_results.map((result){
            return Card(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text("${result['label']}- ${result['confidence'].toStringAsFixed(2)}"),
              ),
            );
          }).toList():[],
          ),
        )
      ],),
      floatingActionButton: FloatingActionButton(onPressed: pickImage,
      tooltip: "Pick Image",
        child: Icon(Icons.image),
      ),
    );
  }
  Future pickImage() async{
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
  }
}
*/


//*
class TfliteModel extends StatefulWidget {
  const TfliteModel({Key? key}) : super(key: key);

  @override
  State<TfliteModel> createState() => _TfliteModelState();
}

class _TfliteModelState extends State<TfliteModel> {
  late bool _loading;
  File? _image;
  late List _outpute;
  final _imagePicker = ImagePicker();

  void initState(){
    super.initState();
    _loading = true;

    loadModel().then((value){
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(model: "assets/model.tflite", labels: "assets/labels.txt");
  }

  pickImage() async{
    var image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if(image == null) return null;
    setState(() {

      _loading = true;
      _image = File(image.path);
    });
    classifyImage(_image!);
  }

  classifyImage(File image) async{
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,

    );
    setState(() {
      _loading = false;
      _outpute = output!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("image classification"),),
      body: ListView(children: [
        _loading? Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        ): Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            _image == null ? Container():
                Container(child: Image.file(_image!),
                height: 500,
                width: MediaQuery.of(context).size.width-200,),
              const SizedBox(height: 20,),
              _outpute!= null ?Text('${_outpute[0]["label"]}'.replaceAll(RegExp(r'[0-1]'), ''),
              ):const Text('no image')
          ],),
        ),
        FloatingActionButton(onPressed: pickImage,
        tooltip: 'increment',
          child: const Icon(Icons.add),
        )
      ],),

    );
  }
}
//*/
////////////////

// class Tflitemodel extends StatefulWidget {
//   const Tflitemodel({Key? key}) : super(key: key);
//
//   @override
//   State<Tflitemodel> createState() => _TflitemodelState();
// }
//
// class _TflitemodelState extends State<Tflitemodel> {
//
//   late List _outputs;
//   late File _image;
//   bool _laoding = false;
//   @override
//   void initState(){
//     super.initState();
//     _laoding =true;
//
//     loadModel().then((value){
//       setState(() {
//         _laoding = false;
//       });
//     });
//   }
//   loadModel() async{
//     await Tflite.loadModel(
//       model: 'assets/model.tflite',
//       labels: "labels.txt",
//       numThreads: 1,);
//   }
//   classifyImage(File image) async{
//     var output = await Tflite.runModelOnImage(
//       path: image.path,
//       imageMean: 0.0,
//       imageStd: 255.0,
//       numResults: 2,
//       threshold: 0.2,
//       asynch: true,
//     );
//     setState(() {
//       _laoding = false;
//       _outputs = output!;
//     });
//   }
//   @override
//   void dispose(){
//     Tflite.close();
//     super.dispose();
//   }
//   pickImage() async{
//     ImagePicker picker = ImagePicker();
//     var image = await picker.pickImage(source: ImageSource.gallery);
//     if(image == null) return null;
//     setState(() {
//       _laoding = true;
//      XFile _image = image;
//     });
//     classifyImage(_image);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('image classification'),),
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _laoding?Container(
//               height: 300,
//               width: 300,
//             ):Container(
//                margin: EdgeInsets.all(20),
//               width: MediaQuery.of(context).size.width,
//               child:Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _image == null ? Container(): Image.file(_image),
//                   SizedBox(height: 20,),
//                   _image == null ?Container(): _outputs !=null ?
//                       Text(_outputs[0]["label"]): Container(child: Text(""),
//                   ),
//                   SizedBox(height: MediaQuery.of(context).size.height*0.01,),
//
//                 ],
//
//               ) ,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
