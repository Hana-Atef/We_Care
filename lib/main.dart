
import 'package:flutter/material.dart';
import 'package:untitled1/homePages/medical_hestory.dart';

import 'checkPages/form6.dart';
import 'checkPages/speak4.dart';
import 'exercise/exercise_home.dart';
import 'infoPages/aboutapp.dart';
import 'checkPages/test.dart';
import 'infoPages/goalapp.dart';
import 'infoPages/noubat.dart';
import 'infoPages/aboutauti.dart';
import 'checkPages/speak6.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'auth/welcomePage.dart';
import 'checkPages/form1.dart';
import 'checkPages/form2.dart';
import 'checkPages/form3.dart';
import 'checkPages/form4.dart';
import 'checkPages/form5.dart';
import 'exercise/ex1.dart';
import 'exercise/ex2.dart';
import 'exercise/ex3.dart';
import 'exercise/ex4.dart';
import 'exercise/ex5.dart';
import 'exercise/ex6.dart';
import 'homePages/home_page.dart';
import 'infoPages/autinfo.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Amiri'),
      routes: {
        'login':(context) => MyLogin(),
        'signup': (context) => signupPage(),
        'welcomePage':(context) => const WelcomePage(),
        'homePage':(context) => home2Page(),
        'profile':(context) => ProfilePage(),
        'form1':(context) => adaptivePage(),
        'form3':(context) => socialPage(),
        'form2':(context) => stereoPage(),
        'form4':(context) => iterativePage(),
        'form5':(context) => cognitivePage(),
        'ex1':(context) => const tabletest(),
        'ex2':(context) => const test2(),
        'ex3':(context) => const exercise3(),
        'ex4':(context) => const exercise4(),
        'ex5':(context) => const exercise5(),
        'ex6':(context) => const exercise6(),
        'autinfo':(context) => const auti_info(),
        'speak6':(context) => const speak6(),
        'speak4':(context) => const speak4(),
        'autipage':(context)=> const aboutauti(),
        'noubatpage':(context)=> const noubatauti(),
        'aboutapp':(context)=> const aboutapp(),
        'form6': (context)=> form6(),
        'goalapp':(context)=>const goalapp(),
        'exercise_card': (context)=> const exercise_card()

      },
      home:const WelcomePage(),
    ));

