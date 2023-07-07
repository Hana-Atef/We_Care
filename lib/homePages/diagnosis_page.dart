import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:flutter/services.dart';



class diagnosisPage extends StatefulWidget {
  @override
  State<diagnosisPage> createState() => _diagnosisPageState();
}

class _diagnosisPageState extends State<diagnosisPage> {
  File? image;
  Future _pickercamera(ImageSource source) async{
    try{
      final image = await ImagePicker().pickImage(source: source);
      if (image == null)return;
      final imageTemporary = await saveImagepermanent(image.path);
      setState(() => this.image = imageTemporary);
    }on PlatformException catch(e){
      print('failed image: $e');
    };
  }
  Future <File> saveImagepermanent(String imagepath) async{
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagepath);
    final image = File('${directory.path}/ $name');
    return File(imagepath).copy(image.path);
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))),
              title: Text(
                'التشخيص',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            body: Center(
                child: ListView(
                 children: [
                      Padding(padding: EdgeInsets.only(top: 100)),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                        image!= null?Column(
                          children: [
                              CircleAvatar(
                                  radius: 80,
                                  child: ClipOval(child:Image.file(image!, height: 200,width: 200,fit: BoxFit.fill,))),
                            SizedBox(height: 150,),

                            ElevatedButton(onPressed: (){
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  int? speaks ;
                                  return Directionality(textDirection: TextDirection.rtl, child: AlertDialog(
                                    title: Text('هل الطفل ناطق'),
                                    content: StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState) {
                                        return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children:[
                                              RadioListTile(
                                                title: Text("ناطق"),
                                                value: 0,
                                                groupValue: speaks,
                                                onChanged: (value) {
                                                  setState(() {
                                                    speaks = value as int?;
                                                  });
                                                },
                                              ),
                                              RadioListTile(
                                                title: Text("غير ناطق"),
                                                value: 1,
                                                groupValue: speaks,
                                                onChanged: (value) {
                                                  setState(() {
                                                    speaks = value as int?;
                                                  });
                                                },
                                              ),

                                              ElevatedButton(onPressed: (){ if (speaks == 0) {
                                                Navigator.pushNamed(context, 'speak4');
                                              } else if (speaks == 1) {
                                                Navigator.pushNamed(context, 'speak6');
                                              }}, child: Text('تم'))
                                            ]
                                        );
                                      },
                                    ),
                                  ));
                                });}, child: Text('شدة التوحد'),),

                         ],):
                        CircleAvatar(
                          radius: 80,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              width: 200,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.lightBlue,
                            child: IconButton(
                              onPressed: (){
                                showModalBottomSheet(context: context,
                                    builder: (context)=> Container(
                                      padding: EdgeInsets.only(right: 10,top: 10),
                                      height: 120,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,

                                        children: [
                                          Text('اختر الصورة', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(children: [IconButton(onPressed:(){ _pickercamera(ImageSource.camera);}, icon: Icon(Icons.camera_alt_outlined),color: Colors.blue,),
                                                Text('الكاميرا'),],),
                                              SizedBox(width: 50,),
                                              Column(children: [IconButton(onPressed:(){ _pickercamera(ImageSource.gallery);}, icon: Icon(Icons.photo),color: Colors.blue,),
                                                Text('المعرض')],)
                                            ],),
                                        ],
                                      ),
                                    )
                                );},
                              icon: Icon(Icons.camera_alt, size: 30),
                              color: Colors.white, ),
                          ),
                          right: 100,top: 110,),
                      ],),

                SizedBox(
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(33, 150, 243, .5)),
                        onPressed: () {
                           Navigator.pushNamed(context, 'predict');
                        },
                        child: Text(
                          'التشخيص',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),



                  ],
                )
              ],
            ))));
  }
}
