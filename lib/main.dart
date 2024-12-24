import 'package:app_makankuy/components/olehOleh_page/create_shop.dart';
import 'package:app_makankuy/pages/login_page.dart';
import 'package:app_makankuy/pages/oleh2_page.dart';
import 'package:app_makankuy/pages/profil_user.dart';
import 'package:flutter/material.dart';

import 'pages/WriterHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MakanKuy!',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}