import 'package:flutter/material.dart';

class stereoPage extends StatefulWidget {
  @override
  State<stereoPage> createState() => _stereoPageState();
}

class _stereoPageState extends State<stereoPage> {
  // String? Q1;
  // String? Q2;
  // String? Q3;
  // String? Q4;
  // String? Q5;
  // String? Q6;
  // String? Q7;
  // String? Q8;
  // String? Q9;
  // String? Q10;
  // String? Q11;
  // String? Q12;
  // String? Q13;
  List<String?> selectedAnswers = List<String?>.filled(13, null);


  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      Navigator.pushNamed(context, 'form3');

      // Proceed to the next page or perform further actions
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(' الفورم غير مكتمله'),
            content: Text('اجب جميع الاسئله'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('تم'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Container(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [

                  Column(
                    children: [
                      Text('التفاعل الاجتماعي',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan),),
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                      Text(
                        "لا يبدأ بالمحادثات مع الأقران أو الاخرين ",
                        style: TextStyle(fontSize: 18),
                      ),

                      RadioListTile(
                        title: Text("ابدا"),
                        value: "0",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text("احيانا"),
                        value: "1",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text("كثيرا"),
                        value: "2",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text("كثيرا جدا"),
                        value: "3",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يعطي القليل من الاهتمام أو لا يهتم لما يقوم به الأقران",
                            style: TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          )
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يفشل في تقليد الاخرين أثناء اللعب أو عند أداء الأنشطة التعليمية",
                            style: TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "لا يتبع تلميحات – إيماءات – الاخرين لتوجيه النظر لشئ ما …. (مثلا: حين يومئ أحدهم برأسه أو يشير بيده أو يستخدم  اي حركات جسدية أخري)",
                            style: TextStyle(fontSize: 20),
                          ),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                              value: "1",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "يبدو غير مبالي بالحصول علي انتباه الاخرين ( لا يحاول الحصول علي انتباه شخص اخر أو الحفاظ عليه أ توجيهه )",
                            style: TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "يظهر أدني حد من الإثارة عند التفاعل مع الاخرين ",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "يظهر القليل من الإثارة – وقد لا تظهر تماما- عند عرض الألعاب أو الأشياء للاخرين ",
                            style: TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "يبدو غير مهتم بالإشارة للاخرين عن الأشياء المحيطة بهم في البيئة ",
                            style: TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "يبدو وكأنه لا يرغب ، أو لا يستجيب لمحاولات الاخرين للتفاعل معهم",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),

                        ],
                      ),
                      Column(children: [
                        Text(
                          "يظهر قليلا من التواصل الاجتماعي المتبادل وقد لايظهره إطلاقا ( مثلا : يرفض قول باي باي استجابة لشخص يقول له : باي باي)",
                          style: TextStyle(fontSize: 18),
                        ),
                        Divider(),
                        RadioListTile(
                          title: Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                      ],),
                      Divider(),
                      Column(children: [
                        Text(
                          "لا يسعي لإقامة علاقات صداقة مع اشخاص أخرين",
                          style: TextStyle(fontSize: 18),
                        ),

                        RadioListTile(
                          title: Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                      ],),
                      Divider(),
                      Column(children: [
                        Text(
                          "يفشل في اللعب بشكل إبداعي أو تخيلي ",
                          style: TextStyle(fontSize: 18),
                        ),

                        RadioListTile(
                          title: Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                      ],),
                      Divider(),
                      Column(children: [
                        Text(
                          "يظهر القليل من الإهتمام أو لا يهتم بالأشخاص الاخرين",
                          style: TextStyle(fontSize: 18),
                        ),

                        RadioListTile(
                          title: Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                      ],),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, left: 180),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 9, 25, 112),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(8),
                        textStyle: TextStyle(fontSize: 30),
                      ),
                      child: Text(
                        'التالي',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                        onPressed: submitForm
                    ),
                  ),
                ],
              ),
        )));
  }
}
