import 'package:flutter/material.dart';
import 'package:project_viewer/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Project Viewer',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontSize: 40, color: Colors.white),
          headlineMedium: TextStyle(fontSize: 38, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 26, color: Colors.black),
        )
      ),
    );
  }
}