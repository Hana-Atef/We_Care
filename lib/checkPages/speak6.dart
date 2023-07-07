import 'package:flutter/material.dart';
class speak6 extends StatefulWidget {
  const speak6({Key? key}) : super(key: key);

  @override
  State<speak6> createState() => _speak6State();
}

class _speak6State extends State<speak6> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Text('اسئلة الشده', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.lightBlue),),
            InkWell(
              child: Card(
                shadowColor: Colors.black,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img4.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النمط المعرفى',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle:Text(
                      //   'اضطرابات طيف التوحد هى اعاقه فى النمو ناتجه عن اختلافات فى المخ . يعانى بعض الاشخاص المصابين بالتوحد من تغيرات معروفه , مثل الحاله الوراثيه. ',
                      //   style: TextStyle(fontSize: 20),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'form5');
              },
            ),//5
            InkWell(
              child: Card(
                // key: card6,
                shadowColor: Colors.black,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img2.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'اللغه اللاتكيفية',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),

                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'form6');
              },
            ),//6
            InkWell(
              child: Card(
                shadowColor: Colors.black,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img5.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'السلوكيات التكراريه / النمطيه',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle:Text(
                      //   'اضطرابات طيف التوحد هى اعاقه فى النمو ناتجه عن اختلافات فى المخ . يعانى بعض الاشخاص المصابين بالتوحد من تغيرات معروفه , مثل الحاله الوراثيه. ',
                      //   style: TextStyle(fontSize: 20),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'form1');
              },
            ),//1
            InkWell(
              child: Card(
                shadowColor: Colors.black,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img4.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'التفاعل الاجتماعى',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle:Text(
                      //   'اضطرابات طيف التوحد هى اعاقه فى النمو ناتجه عن اختلافات فى المخ . يعانى بعض الاشخاص المصابين بالتوحد من تغيرات معروفه , مثل الحاله الوراثيه. ',
                      //   style: TextStyle(fontSize: 20),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'form2');
              },
            ),//2
            InkWell(
              child: Card(
                shadowColor: Colors.black,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img4.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'التواصل الاجتماعى',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle:Text(
                      //   'اضطرابات طيف التوحد هى اعاقه فى النمو ناتجه عن اختلافات فى المخ . يعانى بعض الاشخاص المصابين بالتوحد من تغيرات معروفه , مثل الحاله الوراثيه. ',
                      //   style: TextStyle(fontSize: 20),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'form3');
              },
            ),//3
            InkWell(
              child: Card(
                shadowColor: Colors.black,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/img6.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'الاستجابه العاطفيه',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      // subtitle:Text(
                      //   'اضطرابات طيف التوحد هى اعاقه فى النمو ناتجه عن اختلافات فى المخ . يعانى بعض الاشخاص المصابين بالتوحد من تغيرات معروفه , مثل الحاله الوراثيه. ',
                      //   style: TextStyle(fontSize: 20),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'form4');
              },
            ),//4

          ],
        ),
      ),
    ));
  }
}
