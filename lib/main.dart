import 'package:flutter/material.dart';
import 'package:university_student_hub/screens/login%20screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
    '/login': (context) => LoginScreen(),
  },
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}