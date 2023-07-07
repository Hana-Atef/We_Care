import 'package:flutter/material.dart';

class exercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            buildpositiontop(mdw),
            buildpositionbuttom(mdw),
           const Positioned(child:
            Text('انشطة برنامج لوفاس التعليمى لاطفال التوحد', style:  TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
              top: 40,
              right: 5,
            ),
            Container(
              height: 1000,
              child: SingleChildScrollView(
                  child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Padding(padding: EdgeInsets.only(top: 90)),
                 Center(child: Container(height: 60, width: 255, decoration: BoxDecoration(color: Color.fromARGB(255, 154, 200, 238),
                 borderRadius: BorderRadius.circular(25)
                 ),
                 padding: EdgeInsets.all(15),
                 child:const Text('النموذج الاول : الانتباه و التقليد ' , style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                 )),
             const SizedBox(height: 15,),
                   Container(
                    // color: Colors.blue,
                   margin: EdgeInsets.all(8),
                   padding: EdgeInsets.all(8),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text('>>برنامج تقليد الحركات باستخدام الاشياء:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 9, 25, 112)),),
                   Text('- ضع شيئان متمائلان على المنضدة و اجلس في مواجهة الطفل', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                   Text('- تأكد من انتباه الطفل ثم قدم له الامر "افعل هذا" فنفس الوقت تقوم أنت بتقديم نموذج للفعل بأحد الأشياء', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                   Text('- حث الطفل على أداء الحركة بالشيء الأخر ودعم استجابته', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                   Text('- قلل الحث تدريجيا حتى يُزول و دعم الاستجابات المختلفة التي تظهر بأقل مستوى من الحث', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                   const Text('- في النهاية دعم الأستجابات الصحيحة الغير محثوثة ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90)))
                   
                   


                   ],),) ,   
                 
                       
               ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromRGBO(33, 150, 243, .8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      padding:const EdgeInsets.all(8),
                      textStyle:const TextStyle(fontSize: 30),
                    ),
                      onPressed: () {
                      Navigator.pushNamed(context, 'ex1');
                    },
                    child:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                          const Text(
                                'التالى',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          )),
               
                      ],
                    ),
              )
              ),
               
                ],
              )),
            );
  }

  

  Positioned buildpositiontop(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.7),
        child: Container(
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: Colors.grey,
          ),
        ),
      ),
    ));
  }

  Positioned buildpositionbuttom(double mdw) {
    return Positioned(
        right: mdw / 1.5,
        top: 300,
        child: Container(
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color:const Color.fromRGBO(33, 150, 243, .3),
          ),
        ));
  }

}