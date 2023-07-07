import 'package:flutter/material.dart';

class exercise6 extends StatefulWidget {
  const exercise6({super.key});

  @override
  State<exercise6> createState() => _exercise6State();
}

class _exercise6State extends State<exercise6> {
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
            child:const Text('  برنامج ان يقلد تتابع (حركات الجسم و حركات باستعمال الأشياء): ' , style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 5,),
          SingleChildScrollView(
            child: Container(
              // color: Colors.blue,
              height: mdh/1.3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('• اجلس على كرسي في مواجهة الطفل. قل "افعل هذا" ثم قلد نموذج امام الطفل لحركتان للجسم )مثال:  صفق ثم اخبط على رأسك(. حث الطفل لكى يؤدي الحركتان اللتان قدمتهما في الأمر. دعم االستجابة، قلل الحث تدريجيا حتى يزول. دعم االستجابات المختلفة التي تظهر بأقل مستوى من الحث. في النهاية دعم الاستجابات الصحيحة الغير مشوشة:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 9, 25, 112)),),
                    Text('● الحركات باستعمال الأشياء ضع مجموعتان من من الأشياء المعروفة للطفل على المنضدة )مثال: ( اجلس على كرسي في مواجهة الطفل وتأكد من الحضور. قل "افعل هذا" ثم قم بعمل حركة لللأشياء.', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    Text('• اذكر الحركة التي تظهرها، مثال: اذا كنت تقلد حركة مسك أنفك ثم خبط على رأسك قل "لمس الأنف""لمس الرأس" أثناء قيامك بعمل الحركة، وبالتدرج ابدأ بتقليل الحث اللفظي.', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                    Text('قم بفعل الآتي ثم قل :', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
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
                              const DataCell( Text("التصفيق باليدين ثم التلويح")),
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
                              const DataCell(Text('ضع المكعب فى العلبه',maxLines: 4,style: TextStyle(),textWidthBasis: TextWidthBasis.longestLine,)),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('اضرب بيدك على المنضده')),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('لمس الرأس')),
                              DataCell(TextFormField(decoration:const InputDecoration(
                              )),
                              ),
                              DataCell(TextFormField()),
                              DataCell(TextFormField()),

                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('لمس الانف')),
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