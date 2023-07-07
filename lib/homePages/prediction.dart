import 'package:flutter/material.dart';

class predictionPage extends StatefulWidget {
  @override
  State<predictionPage> createState() => _predictionPageState();
}

class _predictionPageState extends State<predictionPage> {
  String? speaks;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(33,150, 243, 0.6),
              title: Text(
                'التشخيص',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            body: Center(
                child: ListView(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                CircleAvatar(
                  radius: 80,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/img1.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    'تغير صورة المريض',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {},
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                  height: 80,
                ),
                Text('the prediction is'),
                Text('varible whose value is from model'),
                SizedBox(
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                                              speaks = value!;
                                            });
                                          },
                                        ),
                                        RadioListTile(
                                          title: Text("غير ناطق"),
                                          value: 1,
                                          groupValue: speaks,
                                          onChanged: (value) {
                                            setState(() {
                                              speaks = value!;
                                            });
                                          },
                                        ),

                                        ElevatedButton(onPressed: (){ if (speaks == 0) {
                                          Navigator.pushNamed(context, 'speak6');
                                        } else if (speaks == 1) {
                                          Navigator.pushNamed(context, 'speak4');
                                        }}, child: Text('تم'))
                                      ]
                                  );
                                },
                              ),
                            ));
                          });}, child: Text('شدة التوحد')),
                  ],
                )
              ],
            ))));
  }
}
