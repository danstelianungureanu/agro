// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_local_variable

import 'package:flutter/material.dart'
    show BuildContext, Colors, MaterialApp, StatelessWidget, ThemeData, Widget;
import 'package:app2/pages/home_page.dart' show HomePage;
import 'package:flutter/cupertino.dart'
    show BuildContext, StatelessWidget, Widget;
import 'package:hive_flutter/hive_flutter.dart' show Hive;

void main() async {
  // init the Hive

  // await Hive.initFlutter();

  // open a box

  var box = await Hive.openBox('myBox');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
