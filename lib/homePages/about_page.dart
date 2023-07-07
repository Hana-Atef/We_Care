import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  const aboutPage({super.key});

  @override
  State<aboutPage> createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(child: Text('About')),
    );
  }
}