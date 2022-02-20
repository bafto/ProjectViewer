import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:project_viewer/widgets/project_showcase_card.dart';

// main route of the application
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // get the global theme for some text styles

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        title: Text("Bafto's Project Viewer // Home", style: theme.textTheme.displaySmall),
        actions: [
          IconButton(
            icon: Image.asset("assets/GitHub-Mark-Light-64px.png"),
            iconSize: 40,
            onPressed: () {
              html.window.open("https://github.com/bafto", "bafto github");
            },
          ),
        ],
      ),
      body: IntrinsicHeight(
        child: Column(
          children: [
            const Spacer(flex: 1),
            Flexible(
              flex: 3,
              child: Center(
                child: Text("Overview", style: theme.textTheme.headlineMedium)
              ),
            ),
            Flexible(
              flex: 5,
              child: SizedBox(
                width: 500,
                height: 500,
                child: ProjectShowcaseCard(
                  background: Image.asset("assets/mandelbrot.png"),
                  title: "Mandelbrot",
                  description: "A simple c++ application\nthat renders the mandelbrot fractal.",
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Center(
                child: Text("Some text describing the project.\nIt even has newlines!", style: theme.textTheme.bodyLarge),
              )
            ),
          ],
        ),
      ),
    );
  }
}