import 'package:flutter/material.dart';

import '../P_API/exam_2-map.dart';
import '../P_API/login_function.dart';

class stereoPage extends StatefulWidget {
  @override
  State<stereoPage> createState() => _stereoPageState();
}

class _stereoPageState extends State<stereoPage> {

  GetExam2? ex1=GetExam2.fromJson(globalToken as Map<String, dynamic>);
  List<Questions2?>? Qest;
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
            title: const Text(' الفورم غير مكتمله'),
            content: const Text('اجب جميع الاسئله'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('تم'),
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
                padding: const EdgeInsets.all(20),
                children: [

                  Column(
                    children: [
                      const Text('التفاعل الاجتماعي',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan),),
                      const Padding(padding: EdgeInsets.only(bottom: 15)),
                      Text(
                        Qest![1]!.Text!,
                        // "لا يبدأ بالمحادثات مع الأقران أو الاخرين ",
                        style: const TextStyle(fontSize: 18),
                      ),

                      RadioListTile(
                        title: const Text("ابدا"),
                        value: "0",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("احيانا"),
                        value: "1",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("كثيرا"),
                        value: "2",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("كثيرا جدا"),
                        value: "3",
                        groupValue: selectedAnswers[0],
                        onChanged: (value) {
                          setState(() {
                            selectedAnswers[0] = value.toString();
                          });
                        },
                      ),
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![2]!.Text!,
                            // "يعطي القليل من الاهتمام أو لا يهتم لما يقوم به الأقران",
                            style: const TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![3]!.Text!,
                            // "يفشل في تقليد الاخرين أثناء اللعب أو عند أداء الأنشطة التعليمية",
                            style: const TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          const Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Qest![4]!.Text!,
                            // "لا يتبع تلميحات – إيماءات – الاخرين لتوجيه النظر لشئ ما …. (مثلا: حين يومئ أحدهم برأسه أو يشير بيده أو يستخدم  اي حركات جسدية أخري)",
                            style: const TextStyle(fontSize: 20),
                          ),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                              value: "1",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          const Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Qest![5]!.Text!,
                            // "يبدو غير مبالي بالحصول علي انتباه الاخرين ( لا يحاول الحصول علي انتباه شخص اخر أو الحفاظ عليه أ توجيهه )",
                            style: const TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  const Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          const Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Qest![6]!.Text!,
                            // "يظهر أدني حد من الإثارة عند التفاعل مع الاخرين ",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  const Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          const Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Qest![7]!.Text!,
                            // "يظهر القليل من الإثارة – وقد لا تظهر تماما- عند عرض الألعاب أو الأشياء للاخرين ",
                            style: const TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  const Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          const Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Qest![8]!.Text!,
                            // "يبدو غير مهتم بالإشارة للاخرين عن الأشياء المحيطة بهم في البيئة ",
                            style: const TextStyle(fontSize: 18),
                          ),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  const Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[7],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[7] = value.toString();
                              });
                            },
                          ),
                          const Divider(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            Qest![9]!.Text!,
                            // "يبدو وكأنه لا يرغب ، أو لا يستجيب لمحاولات الاخرين للتفاعل معهم",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[8],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[8] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title:  const Text("كثيرا جدا"),
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
                          Qest![10]!.Text!,
                          // "يظهر قليلا من التواصل الاجتماعي المتبادل وقد لايظهره إطلاقا ( مثلا : يرفض قول باي باي استجابة لشخص يقول له : باي باي)",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Divider(),
                        RadioListTile(
                          title: const Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[9],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[9] = value.toString();
                            });
                          },
                        ),
                      ],),
                      const Divider(),
                      Column(children: [
                        Text(
                          Qest![11]!.Text!,
                          // "لا يسعي لإقامة علاقات صداقة مع اشخاص أخرين",
                          style: const TextStyle(fontSize: 18),
                        ),

                        RadioListTile(
                          title: const Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[10],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[10] = value.toString();
                            });
                          },
                        ),
                      ],),
                      const Divider(),
                      Column(children: [
                        Text(
                          Qest![12]!.Text!,
                          // "يفشل في اللعب بشكل إبداعي أو تخيلي ",
                          style: const TextStyle(fontSize: 18),
                        ),

                        RadioListTile(
                          title: const Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا جدا"),
                          value: "3",
                          groupValue: selectedAnswers[11],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[11] = value.toString();
                            });
                          },
                        ),
                      ],),
                      const Divider(),
                      Column(children: [
                        Text(
                          Qest![13]!.Text!,
                          // "يظهر القليل من الإهتمام أو لا يهتم بالأشخاص الاخرين",
                          style: const TextStyle(fontSize: 18),
                        ),

                        RadioListTile(
                          title: const Text("ابدا"),
                          value: "0",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("احيانا"),
                          value: "1",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا"),
                          value: "2",
                          groupValue: selectedAnswers[12],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[12] = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text("كثيرا جدا"),
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
                        backgroundColor: const Color.fromARGB(255, 9, 25, 112),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(8),
                        textStyle: const TextStyle(fontSize: 30),
                      ),
                      child: const Text(
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
