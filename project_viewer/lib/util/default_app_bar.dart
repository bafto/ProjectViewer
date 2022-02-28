import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

// provides the default AppBar for every page to reduce code duplication
AppBar defaultAppBar(BuildContext context, String title) {
  final theme = Theme.of(context);
  return AppBar(
    toolbarHeight: 85,
    backgroundColor: Colors.grey.shade700,
    title: Text("Bafto's Project Viewer // $title", style: theme.textTheme.displaySmall),
    leading: IconButton(
      icon: const Icon(Icons.home, color: Colors.white),
      iconSize: 40,
      onPressed: () {
        context.router.replaceNamed("/");
      },
    ),
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