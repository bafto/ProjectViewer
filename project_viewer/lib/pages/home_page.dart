import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_viewer/util/default_app_bar.dart';
import 'package:project_viewer/widgets/project_showcase_card.dart';
import 'package:project_viewer/pages/project_pages/pages.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

// the main route
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; // get the global theme for some text styles
    final hyperlinkStyle = textTheme.bodyLarge!.merge(const TextStyle(color: Color(0xFF0000EE), fontStyle: FontStyle.italic));

    return Scaffold(
      appBar: defaultAppBar(context, "Home"),
      body: SingleChildScrollView( // if the browser window is too small, we can scroll
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text("Overview", style: textTheme.headlineMedium!.merge(const TextStyle(decoration: TextDecoration.underline)))
                ),
              ),
              Center(
                child: Text("""Hey, I'm bafto. On this website I want to present some of the programming projects I created.
Most of them should be finished by now or are incomplete forever, but the projects displayed
here should all be somewhat usable, so please download one you find interesting,
give it a try and tell me how you liked it!
""",
                  style: textTheme.bodyLarge,
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1300),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SizedBox(
                      child: ProjectShowcaseCard(projectPage: MandelbrotPage()),
                      width: 400,
                      height: 225,
                    ),
                    SizedBox(
                      child: ProjectShowcaseCard(projectPage: PlatformerPage()),
                      width: 400,
                      height: 225,
                    ),
                    SizedBox(
                      child: ProjectShowcaseCard(projectPage: DartcounterPage()),
                      width: 400,
                      height: 225,
                    ),
                    SizedBox(
                      child: ProjectShowcaseCard(projectPage: GameoflifePage()),
                      width: 400,
                      height: 225,
                    ),
                    SizedBox(
                      child: ProjectShowcaseCard(projectPage: ModstatsPage()),
                      width: 400,
                      height: 225,
                    ),
                  ],
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(text: """

All of the projects displayed here and some more are on """,
                  children: [
                    TextSpan(
                      text: "my github profile",
                      children: [TextSpan(text: ".\n", style: textTheme.bodyLarge)],
                      recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        html.window.open("https://github.com/bafto", "bafto github");
                      },
                      style: hyperlinkStyle,
                    ),
                    TextSpan(
                      text: "I also made some of them together with NotLe0n, so visit ",
                      children: [
                        TextSpan(
                          text: "his github profile",
                          children: [TextSpan(text: " too.\n", style: textTheme.bodyLarge)],
                          recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            html.window.open("https://github.com/NotLe0n", "bafto github");
                          },
                          style: hyperlinkStyle,
                        )
                      ],
                    ),
                  ],
                  style: textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}