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
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1300),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 16 / 9,
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                padding: const EdgeInsets.all(10),
                children: [
                  ProjectShowcaseCard(projectPage: MandelbrotPage()),
                  ProjectShowcaseCard(projectPage: PlatformerPage()),
                  ProjectShowcaseCard(projectPage: DartcounterPage()),
                  ProjectShowcaseCard(projectPage: GameoflifePage()),
                  ProjectShowcaseCard(projectPage: ModstatsPage()),
                ],
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