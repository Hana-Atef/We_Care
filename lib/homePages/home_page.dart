import 'package:flutter/material.dart';
import '../my_drawer_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home2Page(),
    );
  }
}

class home2Page extends StatefulWidget {
  @override
  _home2PageState createState() => _home2PageState();
}

class _home2PageState extends State<home2Page> {
  final List<String> imagelist = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/ch1.jpg",
    "assets/images/ch2.jpg",
    "assets/images/OIP.jpg",
    "assets/images/ch3.jfif",
    "assets/images/ch4.jfif",
    "assets/images/ch5.jfif",

  ];

  @override
  Widget build(BuildContext context) {
    // var mdw = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: navBar(),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined),label: ''),

          ],),
          appBar: AppBar(
            title: Text(
              'WE CARE',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(191, 191, 194, 1.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))),
            elevation: 0,
          ),
          body: Container(
            // height: 1000,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 350,
                      child: CarouselSlider(
                          items: imagelist
                              .map((e) => ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image(
                                      image: AssetImage(e),
                                      width: double.infinity,
                                      height: 450,
                                      fit: BoxFit.fill,
                                    ),
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            viewportFraction: 1,
                            aspectRatio: 16 / 11,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'استشر الطبيب',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ),

                    ),
                  ),

                  // SizedBox(height: 20,),

                  Container(
                    height: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [

                          // SizedBox(width: 10,),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            child: Image(
                                image:
                                    AssetImage('assets/images/dr1.jfif')),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: AlertDialog(
                                          title: Text("هايدى زين العابدين"),
                                          content: Column(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              children: [
                                                Text('الطيف التوحدى'),
                                                Text('01025789654'),
                                                Text('بنى سويف الجديده')
                                              ]),
                                        ));
                                  });
                            },
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            child: Image(
                              image: AssetImage('assets/images/dr2.jfif'),
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: AlertDialog(
                                          title: Text("مي زين العابدين"),
                                          content: Column(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              children: [
                                                Text('اخصائى'),
                                                Text('01265897213'),
                                                Text('مدينة بنى سويف الجديده')
                                              ]),
                                        ));
                                  });
                            },
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),

                          InkWell(
                            child: Image(
                              image: AssetImage('assets/images/dr3.jfif'),
                              // height: 400,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: AlertDialog(
                                          title: Text("هنا عاطف"),
                                          content: Column(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              children: [
                                                Text('اخصائي'),
                                                Text('01294876525'),
                                                Text('شرق النيل مدينة بنى سويف')
                                              ]),
                                        ));
                                  });
                            },
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            child: Image(
                              image: AssetImage('assets/images/dr4.jfif'),
                              // height: 200,
                              fit: BoxFit.fill,
                              width: 200,
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: AlertDialog(
                                          title: Text("منار عربى"),
                                          content: Column(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              children: [
                                                Text('اخائي اطفال'),
                                                Text('01154789586'),
                                                Text('المنيا: مغاغا')
                                              ])
                                        )
                                        );
                                  });
                            },
                          ),
                          Padding(padding: EdgeInsets.only(right: 20, )),

                          InkWell(
                            child: Image(
                              image: AssetImage('assets/images/dr5.jfif'),
                              fit: BoxFit.fill,
                              width: 200,
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                        title: Text("هايدي زين العبدين"),
                                        content: Text('01125879647'));
                                  });
                            },
                          ),
                        ]),
                  ),
                  // Listviwe for doctors

                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('مقالات', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
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
                            'assets/images/3.jpg',
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: Text(
                          'ما هو اضطرابات طيف التوحد؟',
                          style: TextStyle(
                              color: Color.fromARGB(204, 1, 94, 170),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                            subtitle:Text(
                                        'اضطرابات طيف التوحد هى اعاقه فى النمو ناتجه عن اختلافات فى المخ . يعانى بعض الاشخاص المصابين بالتوحد من تغيرات معروفه , مثل الحاله الوراثيه. ',
                                        style: TextStyle(fontSize: 20),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'autinfo');
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
                            'assets/images/4.jpg',
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: Text(
                          'كيفية التعامل مع طفل التوحد؟',
                          style: TextStyle(
                              color: Color.fromARGB(204, 1, 94, 170),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                            subtitle:Text(
                                        'بما يكون من الأسئلة التي تتبادر إلى ذهن الوالدين بمجرد اكتشاف إصابة طفلهما بالتوحد كيف أتعامل مع طفل التوحد؟ ',
                                        style: TextStyle(fontSize: 20),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'autipage');
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
                            'assets/images/ch7.jfif',
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: Text(
                          'نوبات الغضب عند الأطفال التوحد',
                          style: TextStyle(
                              color: Color.fromARGB(204, 1, 94, 170),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                            subtitle:Text(
                                        'يتميّز الطفل المصاب بمرض التوحد بمزاجه المتقلّب والصعب وهذا مايجعله يُصاب بالتوتر والغضب  ',
                                        style: TextStyle(fontSize: 20),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'noubatpage');
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
                            'assets/images/logo1.jpg',
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: Text(
                          'ما هو WE Care؟',
                          style: TextStyle(
                              color: Color.fromARGB(204, 1, 94, 170),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                            subtitle:Text(
                                        'هو تطبيق الهدف الاساسي منه مساعدة أطفال التوحد في رحلتهم من بداية تشخيص الطفل باضطراب التوحد ',
                                        style: TextStyle(fontSize: 20),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'aboutapp');
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
                            'assets/images/R.png',
                            fit: BoxFit.cover,
                          ),
                          ListTile(
                            title: Text(
                              'ما هو هدف التطبيق؟',
                          style: TextStyle(
                              color: Color.fromARGB(204, 1, 94, 170),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                            subtitle:Text(
                              'التشخيص السريع للتوحد باستخدام الصور والمتابعة الدائمة لمرضى التوحد وإجراء الفحوصات التي يتم تطبيقها في المراكز من قبل أولياء الأمور',
                                        style: TextStyle(fontSize: 20),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'goalapp');
                    },
                  ),

                ],
              ),
            ),
          ),
        ));
  }

  }

