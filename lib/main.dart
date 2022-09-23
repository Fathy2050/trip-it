import 'package:flutter/material.dart';
import 'package:untitled3/pages/splash_screens/introScreen.dart';
import 'package:untitled3/pages/splash_screens/mainSplashScreen.dart';

void main() {

  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainSplashScreen());
  }
}
