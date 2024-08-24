import 'package:flutter/material.dart';

import 'register_Form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        home: register_Form()
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => register_Form(),
        //   '/second': (context) => Home_screen(),
        // },
        );
  }
}
