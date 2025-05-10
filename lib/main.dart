import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/signup.dart';

void main() {
  runApp(const SecureSignApp());
}

class SecureSignApp extends StatelessWidget {
  const SecureSignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SecureSign',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}