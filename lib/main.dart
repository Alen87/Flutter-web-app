import 'package:flutter/material.dart';
import 'package:foodpanda_admin_web_portal/authentication/login_screen.dart';
import 'package:foodpanda_admin_web_portal/main_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Admin Web Portal',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:const LoginScreen(),
    );
  }
}


