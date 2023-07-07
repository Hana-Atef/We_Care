import 'package:flutter/material.dart';
class exercise_card extends StatefulWidget {
  const exercise_card({Key? key}) : super(key: key);

  @override
  State<exercise_card> createState() => _exercise_cardState();
}

class _exercise_cardState extends State<exercise_card> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text('تدريبات نموزج لوفاس',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),

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
                      'assets/images/movething.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النموذج الاول : الانتباه و التقليد',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:Text('برنامج تقليد الحركات باستخدام الاشياء',
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ex1');
              },
            ),
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
                      'assets/images/move.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النموذج الاول : الانتباه و التقليد',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:Text(
                        'برنامج ان يقلد تتابع (حركات الجسم و حركات استعمال الاشياء)',
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ex2');
              },
            ),
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
                      'assets/images/things.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النموذج الاول : الانتباه و التقليد',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:Text('برنامج تقليد الحركات باستخدام الاشياء',
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ex3');
              },
            ),
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
                      'assets/images/orders.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النموذج الاول : الانتباه و التقليد',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:Text('برنامج اتباع التعليمات من خطوه واحده',
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ex4');
              },
            ),
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
                      'assets/images/mouth.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النموذج الاول : الانتباه و التقليد',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:Text('برنامج تقليد حركات شفهيه',
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ex5');
              },
            ),
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
                      'assets/images/things2.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(
                        'النموذج الاول : الانتباه و التقليد',
                        style: TextStyle(
                            color: Color.fromARGB(204, 1, 94, 170),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:Text('برنامج ان يقلد تتابع (حركات الحسم و حركات باستعمال الاشياء',
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'ex6');
              },
            ),
          ],
        ),
      ),
    ));
  }
}