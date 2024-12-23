import 'package:app_makankuy/pages/home_page.dart';
import 'package:app_makankuy/pages/login_page.dart';
import 'package:app_makankuy/pages/profil_user.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MakanKuy!',
      debugShowCheckedModeBanner: false,
      home: ProfileUser(),
    );
  }
}