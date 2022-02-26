import 'package:flutter/material.dart';
import 'package:project_viewer/util/default_app_bar.dart';
import 'package:project_viewer/widgets/project_showcase_card.dart';
import 'package:project_viewer/pages/project_pages/pages.dart';

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
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: Text("Overview", style: theme.textTheme.headlineMedium)
            ),
          ),
          Flexible(
            flex: 3,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ConstrainedBox(
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
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text("Some text describing the project.\nIt even has newlines!", style: theme.textTheme.bodyLarge),
            )
          ),
        ],
      ),
    );
  }
}