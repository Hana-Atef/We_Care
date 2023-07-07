import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      backgroundColor: Color(0xfff4eff3),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))),
      title: Text('السجل المرضى', style: TextStyle(color: Colors.white, fontSize: 30),),
    ),
     body:Container(
       color: Colors.white60,
       child: ListView(
       children: [
        Container(
          height: 240,
          child: Stack(children: [
          image!= null? Image.file(image!, height: 200,width: double.infinity,fit: BoxFit.fill):
          Image.asset(
            'assets/images/img1.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
          Positioned(
            right: 20,
            top: 170,
            child: CircleAvatar(

              radius: 28,
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
                                Column(children: [IconButton(onPressed:(){ _pickercamera(ImageSource.gallery);}, icon: Icon(Icons.camera_alt_outlined),color: Colors.blue,),
                                  Text('الكاميرا'),],),
                                SizedBox(width: 50,),
                                Column(children: [IconButton(onPressed:(){ _pickercamera(ImageSource.gallery);}, icon: Icon(Icons.photo),color: Colors.blue,),
                                  Text('المعرض')],)
                              ],),
                          ],
                        ),
                      )
                  );},
                icon: Icon(Icons.add_a_photo, size: 30),
                color: Colors.white, ),
            ),
          ),

        ],),),
         Divider(),


       ],
       ),
     )
    )
    );
      }
}
