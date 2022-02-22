import 'package:flutter/material.dart';
import 'package:project_viewer/util/default_app_bar.dart';
import 'package:project_viewer/widgets/project_showcase_card.dart';
import 'package:project_viewer/pages/project_pages/mandelbrot_page.dart';

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
      appBar: defaultAppBar(context, "Home"),
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
                child: ProjectShowcaseCard(projectPage: MandelbrotPage()),
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