import 'package:flutter/material.dart';

class exercise5 extends StatefulWidget {
  const exercise5({super.key});

  @override
  State<exercise5> createState() => _exercise5State();
}

class _exercise5State extends State<exercise5> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: mdh,
        decoration:const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg_ex.jpeg'),fit: BoxFit.cover),),
        child: Column(children: [
          Center(child: Container(
            padding: EdgeInsets.only(top: 35),
            child:const Text('انشطة برنامج لوفاس التعليمى لاطفال التوحد', style:  TextStyle(fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),),
          )),
          const SizedBox(height: 10,),
          Container(
            padding:const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Color.fromARGB(255, 150, 202, 245), borderRadius: BorderRadius.circular(15)),
            child:const Text('  برنامج اتقليد حركات شفهيه: ' , style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 5,),
          SingleChildScrollView(
            child: Container(
              // color: Colors.blue,
              height: mdh/1.3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('>>الخطوات:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 9, 25, 112)),),
                    Text('- اجلس على الكرسى فى مواجهة الطفل و تاكد من انتباهة', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    Text('- قدم له الامر (افعل هذا ) وفى نفس الوقت قلد الحركه امامه', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    Text('- حث الطفل على أداء الحركة بالشيء الأخر ودعم استجابته', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    Text('- قلل الحث تدريجيا حتى يُزول و دعم الاستجابات المختلفة التي تظهر بأقل مستوى من الحث', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    const Text('- في النهاية دعم الأستجابات الصحيحة الغير محثوثة            ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    SingleChildScrollView(
                      // scrollDirection:Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                ' الامر' ,
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'الاستجابه',
                                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
                              ),
                            ),
                          ),

                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'تاريخ البدء',
                                style: TextStyle(fontStyle: FontStyle.italic,fontSize: 8),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'تاريخ الاتقان',
                                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
                              ),
                            ),
                          ),

                        ],
                        rows:  <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              const DataCell(Text("صفق ثم اخبط عل راسك")),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField(
                                  keyboardType: TextInputType.datetime,
                                  decoration:const InputDecoration(

                                  ))),
                              DataCell(TextFormField(
                                  keyboardType: TextInputType.datetime,
                                  decoration:const InputDecoration(

                                  ))),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              const DataCell( Text("ضم شفتيك")),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField(
                                  keyboardType: TextInputType.datetime,
                                  decoration:const InputDecoration(

                                  ))),
                              DataCell(TextFormField(
                                  keyboardType: TextInputType.datetime,
                                  decoration:const InputDecoration(

                                  ))),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              const DataCell(Text('ابتسم-كشر',maxLines: 4,style: TextStyle(),textWidthBasis: TextWidthBasis.longestLine,)),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('فتح الفم')),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('انفخ')),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('اخبط اسنانك ببعض')),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('ارفع لسانك لاعلى')),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color.fromRGBO(33, 150, 243, .8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding:const EdgeInsets.all(5),
                          textStyle:const TextStyle(fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'exercise_card');
                          // and submit result
                        },
                        child:Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'تسجيل',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        )),
                    SizedBox(height: 10,),
                  ],),
              ),
            ),
          )

        ],),
      ),
    ),
    );
  }

}