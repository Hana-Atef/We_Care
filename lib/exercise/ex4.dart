import 'package:flutter/material.dart';

class exercise4 extends StatefulWidget {
  const exercise4({super.key});

  @override
  State<exercise4> createState() => _exercise4State();
}

class _exercise4State extends State<exercise4> {
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
            child:const Text('  برنامج اتباع التعليمات من خطوه واحده: ' , style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
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
                      scrollDirection:Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[

                          DataColumn(
                            label: Expanded(
                              child: Center(
                                child: Text(
                                  ' الامر' ,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'الاستجابه',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'تاريخ البدء',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                'تاريخ الاتقان',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                        ],
                        rows:  <DataRow>[

                          DataRow(
                            cells: <DataCell>[
                              const DataCell(Text("اجلس-قف")),
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
                              const DataCell( Text("تعال هنا")),
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
                              const DataCell(Text('ضع يديك للاعلى-ضع يديك للاسفل',maxLines: 4,style: TextStyle(),textWidthBasis: TextWidthBasis.longestLine,)),
                              DataCell(TextFormField(),
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
                              DataCell(Text('اغلق الباب')),
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
                              DataCell(Text('حرك يدك لعمل (باى باى)')),
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
                              DataCell(Text('صفق بيدك')),
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
                              DataCell(Text('لف')),
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
                              DataCell(Text('اقفز')),
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