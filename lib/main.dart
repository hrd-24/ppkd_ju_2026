import 'package:flutter/material.dart';
import 'package:ppkd_ju_2026/constant/contoh.dart';
import 'package:ppkd_ju_2026/db/pages/home_pages.dart';
import 'package:ppkd_ju_2026/db/pages/login_page.dart';
import 'package:ppkd_ju_2026/db/pages/validasi.dart';
import 'package:ppkd_ju_2026/ui_exercise/pages/login_screen.dart';
import 'package:ppkd_ju_2026/validasi/validasi_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      home: LoginScreenDB()
    );
  }
}
