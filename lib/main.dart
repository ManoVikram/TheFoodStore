import 'package:flutter/material.dart';

import './screens/homeScreen.dart';

import './config/constants.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline4: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: kTextColor,
          ),
        ),
      ),
      home: FoodApp(),
    );
  }
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

void main() {
  runApp(MyApp());
}
