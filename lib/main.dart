import 'package:flutter/material.dart';
///import 'package:widgets_basic/component/my_button.dart';
///import 'package:widgets_basic/sign_in/sign_in.dart';
import 'package:widgets_basic/screens/onboarding_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ON BOARDING SCREEN',
      theme: ThemeData.light(useMaterial3: true),
      home:  OnBoardingScreen(),
    );
    
  }
}
