import 'package:darpan_dental/first_page.dart';
import 'package:flutter/material.dart';

import 'patientRegister.dart';
import 'package:characters/characters.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0XFF131536),
        buttonColor: Color(0XFF131536),
      ),
      home: Firstpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
