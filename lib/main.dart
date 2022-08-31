// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_3/Screens/login_screen.dart';
import 'package:flutter_app_3/Screens/signup_screen.dart';
import 'package:flutter_app_3/Screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Welcome(),
          '/login': (context) => const LoginForm(),
          '/signup': (context) => const SignUp(),
        }
      );
  }
}
