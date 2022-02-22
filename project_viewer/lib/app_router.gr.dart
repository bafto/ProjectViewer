// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'pages/home_page.dart' as _i1;
import 'pages/project_pages/mandelbrot_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    MandelbrotPageRoute.name: (routeData) {
      final args = routeData.argsAs<MandelbrotPageRouteArgs>(
          orElse: () => const MandelbrotPageRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.MandelbrotPage(
              key: args.key,
              image: args.image,
              title: args.title,
              shortDescription: args.shortDescription,
              description: args.description,
              lifeDemoUrl: args.lifeDemoUrl));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomePageRoute.name, path: '/'),
        _i3.RouteConfig(MandelbrotPageRoute.name, path: '/Mandelbrot'),
        _i3.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.MandelbrotPage]
class MandelbrotPageRoute extends _i3.PageRouteInfo<MandelbrotPageRouteArgs> {
  MandelbrotPageRoute(
      {_i4.Key? key,
      _i4.Image? image,
      String title = "MandelbrotSFML",
      String shortDescription =
          "A visulization of the mandelbrot set in c++ using SFML",
      String description =
          """A visulization of the mandelbrot fractal in c++ using SFML.
Usage:
Either make your own Visual Studio project and run it (in Release mode for performance),
or simply run the MandelbrotSFML.exe in the Release folder.

You can zoom in and out using the UP and DOWN arrow keys.
To lower or increase the number of iterations used to calculate each pixel, use the LEFT and RIGHT arrow keys.
You can move using the W, A, S, D keys. 
If you want to save the current image, press ENTER and it will be saved into the source directory as mandelbrot.png.""",
      String lifeDemoUrl = ""})
      : super(MandelbrotPageRoute.name,
            path: '/Mandelbrot',
            args: MandelbrotPageRouteArgs(
                key: key,
                image: image,
                title: title,
                shortDescription: shortDescription,
                description: description,
                lifeDemoUrl: lifeDemoUrl));

  static const String name = 'MandelbrotPageRoute';
}

class MandelbrotPageRouteArgs {
  const MandelbrotPageRouteArgs(
      {this.key,
      this.image,
      this.title = "MandelbrotSFML",
      this.shortDescription =
          "A visulization of the mandelbrot set in c++ using SFML",
      this.description =
          """A visulization of the mandelbrot fractal in c++ using SFML.
Usage:
Either make your own Visual Studio project and run it (in Release mode for performance),
or simply run the MandelbrotSFML.exe in the Release folder.

You can zoom in and out using the UP and DOWN arrow keys.
To lower or increase the number of iterations used to calculate each pixel, use the LEFT and RIGHT arrow keys.
You can move using the W, A, S, D keys. 
If you want to save the current image, press ENTER and it will be saved into the source directory as mandelbrot.png.""",
      this.lifeDemoUrl = ""});

  final _i4.Key? key;

  final _i4.Image? image;

  final String title;

  final String shortDescription;

  final String description;

  final String lifeDemoUrl;

  @override
  String toString() {
    return 'MandelbrotPageRouteArgs{key: $key, image: $image, title: $title, shortDescription: $shortDescription, description: $description, lifeDemoUrl: $lifeDemoUrl}';
  }
}
