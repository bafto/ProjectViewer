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
    image: previewImage,
    title: "MandelbrotSFML",
    route: "/Mandelbrot",
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
  static final previewImage = Image.asset("assets/mandelbrot.png");
}

class DartcounterPage extends ProjectPage {
  DartcounterPage() 
  : super(
    key: null,
    image: previewImage,
    title: "Dart Counter",
    route: "/DartCounter",
    shortDescription: "A simple flutter app to manage the score in a match of darts",
    description: """An application to keep track of a Dart match.
It is currently made for Windows-only use, but you can build it for any Platform if you want,
but due to the needed size of the application it will only work good on Desktops.

The app currently supports up to 4 players, and has some statistics that may or may not work.
It is currently available for download under the Releases tab over an msix-installer.
This is my very first Flutter project, so please have mercy to me when you look at the code.""",
    lifeDemoUrl: "",
  );

  static final previewImage = Image.asset("assets/dartcounter.png");
}

class GameoflifePage extends ProjectPage {
  GameoflifePage()
  : super(
    key: null,
    image: previewImage,
    title: "Game of Life",
    route: "/GameOfLife",
    shortDescription: "A small version of Conways Game of Life written in c++ using sfml",
    description: """A small version of Conways Game of Life written in c++ using sfml.
You can navigate the field using WASD or the arrow keys, and zoom in and out with the mouse wheel.
To add or remove a cell simply click on the field while the simulation is paused.
Use the space button to pause or unpause the simulation.
To increase or decrease the Ticks per Second counter (top-right corner) use the Q and E button.
Clear the field from all cells using ENTER.
""",
    lifeDemoUrl: "",
  );

  static final previewImage = Image.asset("assets/gameoflife.png");
}

class PlatformerPage extends ProjectPage {
  PlatformerPage()
  : super(
    key: null,
    image: previewImage,
    title: "Platformer",
    route: "/Platformer",
    shortDescription: "A game written in C# using the Monogame Framework",
    description: """A game written in C# using the Monogame Framework.
I made it together with NotLe0n, whose Github profile is also linked in the repository, so visit him too.
The game itself is not very much, as it was only a fun project of us.

It is a jump-and-run game with currently only 1 level, where the goal
is to get to the end of the level to enter the next one.
On your way you have to dodge enemies and do some parkour.
""",
    lifeDemoUrl: "",
  );

  static final previewImage = Image.asset("assets/platformer.png");
}

class ModstatsPage extends ProjectPage {
  ModstatsPage()
  : super(
    key: null,
    image: previewImage,
    title: "Mod Statistics",
    route: "/ModStats",
    shortDescription: "A website which shows statistics about a terraria mod",
    description: """This is a website which displays information about tModloader mods.

Features
- Mod Search (internal- and display name)
- Author Search (through steamid64)
- Mod List
- Random Mod
- How to run locally
- Requirements:

Go
- Clone the repo git clone https://github.com/NotLe0n/ModStats.git
- Navigate to it cd ModStats
- Run go run .
- Browse http://localhost:3000
- Enjoy!""",
    lifeDemoUrl: "https://modstats.repl.co/"
  );

  static final previewImage = Image.asset("assets/modstats.png");
}