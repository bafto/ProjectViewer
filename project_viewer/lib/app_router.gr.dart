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
import 'pages/project_pages/pages.dart' as _i2;

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
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.MandelbrotPage());
    },
    GameoflifePageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.GameoflifePage());
    },
    DartcounterPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.DartcounterPage());
    },
    ModstatsPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.ModstatsPage());
    },
    PlatformerPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.PlatformerPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomePageRoute.name, path: '/'),
        _i3.RouteConfig(MandelbrotPageRoute.name, path: '/Mandelbrot'),
        _i3.RouteConfig(GameoflifePageRoute.name, path: '/GameOfLife'),
        _i3.RouteConfig(DartcounterPageRoute.name, path: '/DartCounter'),
        _i3.RouteConfig(ModstatsPageRoute.name, path: '/ModStats'),
        _i3.RouteConfig(PlatformerPageRoute.name, path: '/Platformer'),
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
class MandelbrotPageRoute extends _i3.PageRouteInfo<void> {
  const MandelbrotPageRoute()
      : super(MandelbrotPageRoute.name, path: '/Mandelbrot');

  static const String name = 'MandelbrotPageRoute';
}

/// generated route for
/// [_i2.GameoflifePage]
class GameoflifePageRoute extends _i3.PageRouteInfo<void> {
  const GameoflifePageRoute()
      : super(GameoflifePageRoute.name, path: '/GameOfLife');

  static const String name = 'GameoflifePageRoute';
}

/// generated route for
/// [_i2.DartcounterPage]
class DartcounterPageRoute extends _i3.PageRouteInfo<void> {
  const DartcounterPageRoute()
      : super(DartcounterPageRoute.name, path: '/DartCounter');

  static const String name = 'DartcounterPageRoute';
}

/// generated route for
/// [_i2.ModstatsPage]
class ModstatsPageRoute extends _i3.PageRouteInfo<void> {
  const ModstatsPageRoute() : super(ModstatsPageRoute.name, path: '/ModStats');

  static const String name = 'ModstatsPageRoute';
}

/// generated route for
/// [_i2.PlatformerPage]
class PlatformerPageRoute extends _i3.PageRouteInfo<void> {
  const PlatformerPageRoute()
      : super(PlatformerPageRoute.name, path: '/Platformer');

  static const String name = 'PlatformerPageRoute';
}
