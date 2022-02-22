import 'package:flutter/material.dart';
import 'package:project_viewer/pages/project_pages/project_page.dart';
import 'package:project_viewer/util/default_app_bar.dart';

class MandelbrotPage extends ProjectPage {
  MandelbrotPage({ 
    Key? key,
    Image? image,
    String title = "MandelbrotSFML",
    String shortDescription = "A visulization of the mandelbrot set in c++ using SFML",
    String description = """A visulization of the mandelbrot fractal in c++ using SFML.
Usage:
Either make your own Visual Studio project and run it (in Release mode for performance),
or simply run the MandelbrotSFML.exe in the Release folder.

You can zoom in and out using the UP and DOWN arrow keys.
To lower or increase the number of iterations used to calculate each pixel, use the LEFT and RIGHT arrow keys.
You can move using the W, A, S, D keys. 
If you want to save the current image, press ENTER and it will be saved into the source directory as mandelbrot.png.""",
    String lifeDemoUrl = "",
  })
  : super(
    key: key,
    image: image,
    title: title,
    shortDescription: shortDescription,
    description: description,
    lifeDemoUrl: lifeDemoUrl,
  ) {
    image ??= Image.asset("assets/mandelbrot.png");
  }

  @override
  _MandelbrotPageState createState() => _MandelbrotPageState();
}

class _MandelbrotPageState extends State<MandelbrotPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: defaultAppBar(context, "MandelbrotSFML"),
      body: Column(
        children: [
          Text(widget.title, style: theme.textTheme.headlineMedium),
          Text(widget.shortDescription, style: theme.textTheme.headlineSmall),
          Text(widget.description, style: theme.textTheme.bodyLarge)
        ],
      ),
    );
  }
}