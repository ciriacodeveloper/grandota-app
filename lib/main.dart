import 'package:flutter/material.dart';

import 'package:grandota/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColorDark: const Color(0xff000000),
          primaryColor: const Color(0xff62b621),
          backgroundColor: Colors.white,
          canvasColor: Colors.white,
          textTheme: const TextTheme(caption: TextStyle(color: Colors.black))
      ),
      home: const SplashScreen(),
    );
  }
}