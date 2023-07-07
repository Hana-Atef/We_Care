import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
            Container(
              height: mdw,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Text(
                        'welcom to WE CARE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )),
            ),
            Center(
                child: Container(
              height: 250,
              width: mdw / 1.3,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(33, 150, 243, .5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      // fixedSize: Size(150, 50),
                      textStyle: TextStyle(fontSize: 30),
                    ),
                    child: Text(
                      'انشاء حساب',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('signup');
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(33, 150, 243, .5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      // fixedSize: Size(150, 50),
                      textStyle: TextStyle(fontSize: 30),
                    ),
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('login');
                    },
                  ),
                ],
              ),
            )),
            Positioned(
                top: 700,
                right: 65,
                child: Container(
                  child: Text(
                    'لتشخيص و دعم افراد التوحد',
                    style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 238, 237, 253),
              ),
              textAlign: TextAlign.center,
                  ),
                ))
          ],
        )));
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
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, mdw / 0.68),
        child: Container(
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: Color.fromRGBO(33, 150, 243, 0.5),
          ),
        ),
      ),
    ));
  }
}


/////////////////////////////
///
// width: double.infinity,
//       height: double.infinity,
//       // color: Color(0xffefeef4),
//       child: Padding(
//         padding: const EdgeInsets.all(50.0),
//         child: Column(
//           // #8e6143,#e3b79b,#ad846e
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "مرحبا بك",
//               style: TextStyle(
//                   color: Color(0xff804214),
//                   fontSize: 28,
//                   fontWeight: FontWeight.w900),
//             ),
//             SizedBox(
//               height: 30,
//             ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xffe3b79c),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30)),
            //     fixedSize: Size(150, 50),
            //     textStyle: TextStyle(fontSize: 30),
            //   ),
            //   child: Text(
            //     'Sign UP',
            //     style:
            //         TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).pushReplacementNamed('signup');
            //   },
            // ),
            // SizedBox(
            //   height: 30,
            // ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xffe3b79c),
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30)),
            //     fixedSize: Size(150, 50),
            //     textStyle: TextStyle(fontSize: 30),
            //   ),
            //   child: Text(
            //     'Log IN ',
            //     style:
            //         TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).pushReplacementNamed('login');
            //   },
            // ),
//             SizedBox(
//               height: 50,
//             ),
//             Text(
//               'To diagnose and support autistic pepole',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xff92919a),
//               ),
//               textAlign: TextAlign.center,
//             )
//           ],
//         ),
//       ),
