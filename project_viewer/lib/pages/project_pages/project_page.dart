import 'package:flutter/material.dart';

// all project pages extend this class
// a ProjectShowcaseCard will use this class
// to get some data and initialize the next page
abstract class ProjectPage extends StatefulWidget {
  const ProjectPage({
    Key? key,
    this.image,
    this.title = "",
    this.shortDescription = "",
    this.description = "",
    this.lifeDemoUrl = "",
  }) : super(key: key);

  final Image? image; // an image used as background for the ProjectShowcaseCard and elsewhere
  final String title; // the title (or name) of the Project
  final String shortDescription; // a short description for the ProjectShowcaseCard or a subheader
  final String description; // a longer description of the Project
  final String lifeDemoUrl; // a url to a life web demo of the Project, if empty no demo is provided
}