import 'package:flutter/material.dart';
import 'package:project_viewer/pages/project_pages/project_page.dart';

// the configuration for the ProjectPage of the MandelbrotSFML project
class MandelbrotPage extends ProjectPage {

  // default constructor for auto_route
  //
  // we initialize all the super values constant because they are pre-configured
  // and will always be the same, so no need for argument passing
  // (also, no arguments possible with auto_route)
  MandelbrotPage()
  : super(
    key: null, // a ProjectPage is basically a static object, so no key needed
    image: staticImage,
    title: "MandelbrotSFML",
    shortDescription: "A visulization of the mandelbrot set in c++ using SFML",
    description: """A visulization of the mandelbrot fractal in c++ using SFML.
Usage:
Either make your own Visual Studio project and run it (in Release mode for performance),
or simply run the MandelbrotSFML.exe in the Release folder.

You can zoom in and out using the UP and DOWN arrow keys.
To lower or increase the number of iterations used to calculate each pixel, use the LEFT and RIGHT arrow keys.
You can move using the W, A, S, D keys. 
If you want to save the current image, press ENTER and it will be saved into the source directory as mandelbrot.png.""",
    lifeDemoUrl: "", // no demo -> empty string
  );

  // static so it can be loaded first and be passed to the super class (every ProjectPage subclass does this)
  static final staticImage = Image.asset("assets/mandelbrot.png");
}