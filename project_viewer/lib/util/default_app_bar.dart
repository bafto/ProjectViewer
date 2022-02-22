import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

// provides the default AppBar for every page to reduce code duplication
AppBar defaultAppBar(BuildContext context, String title) {
  final theme = Theme.of(context);
  return AppBar(
    toolbarHeight: 85,
    title: Text("Bafto's Project Viewer // $title", style: theme.textTheme.displaySmall),
    actions: [
      IconButton(
        icon: Image.asset("assets/GitHub-Mark-Light-64px.png"),
        iconSize: 40,
        onPressed: () {
          html.window.open("https://github.com/bafto", "bafto github");
        },
      ),
    ],
  );
}