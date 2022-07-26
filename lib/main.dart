import 'package:flutter/material.dart';
import 'package:medical_app/constants.dart';
import 'package:medical_app/screens/home_screen.dart';
import 'package:medical_app/screens/info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstants.kBackgroundColor,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: AppConstants.kBodyTextColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}




