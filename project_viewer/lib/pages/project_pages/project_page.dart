import 'package:flutter/material.dart';
import 'package:project_viewer/util/default_app_bar.dart';

// all project pages extend this class
// and will only implement the default constructor
// 
// a ProjectShowcaseCard will use this class
// to get some data and initialize the next page
//
// to register a Project simply inherit from this class,
// pass the (const) arguments to this classes default constructor
// and configure a AutoRoute for the Project
abstract class ProjectPage extends StatelessWidget {

  const ProjectPage({
    Key? key,
    this.image,
    this.title = "",
    this.route = "/",
    this.shortDescription = "",
    this.description = "",
    this.lifeDemoUrl = "",
  }) : super(key: key);

  // all of these final fields will be initialized with constant
  // values by the subclasses
  //
  // because each project has pre-configured values for them, it can
  // simply pass them in the default constructor 
  // (which is also necessery for auto_route to work)
  final Image? image; // an image used as background for the ProjectShowcaseCard and elsewhere
  final String title; // the title (or name) of the Project
  final String route; // the route path for of the page for the Project
  final String shortDescription; // a short description for the ProjectShowcaseCard or a subheader
  final String description; // a longer description of the Project
  final String lifeDemoUrl; // a url to a life web demo of the Project, if empty no demo is provided

  // this build method serves for all ProjectPage subclasses,
  // there's only some conditional logic to embedd the lifeDemo (if present)
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: defaultAppBar(context, "MandelbrotSFML"),
      // some test body code
      body: Column(
        children: [
          Text(title, style: theme.textTheme.headlineMedium),
          Text(shortDescription, style: theme.textTheme.headlineSmall),
          Text(description, style: theme.textTheme.bodyLarge)
        ],
      ),
    );
  } 
}