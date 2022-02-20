import 'package:flutter/material.dart';
import 'package:project_viewer/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProjectViewer',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontSize: 40, color: Colors.white),
          headlineMedium: TextStyle(fontSize: 38, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 26, color: Colors.black),
        )
      ),
      home: const HomePage(),
    );
  }
}