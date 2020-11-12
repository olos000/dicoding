import 'package:dicoding/MainScreen.dart';
import 'package:dicoding/detail_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Pondok Di Solo',
      theme: ThemeData.fallback(),
      home: MainScreen(),
    );
  }
}

