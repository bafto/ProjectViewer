import 'package:auto_route/annotations.dart';
import 'package:project_viewer/pages/home_page.dart';
import 'package:project_viewer/pages/project_pages/pages.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: "/", page: HomePage, initial: true),
    AutoRoute(path: "/Mandelbrot", page: MandelbrotPage),
    AutoRoute(path: "/GameOfLife", page: GameoflifePage),
    AutoRoute(path: "/DartCounter", page: DartcounterPage),
    AutoRoute(path: "/ModStats", page: ModstatsPage),
    AutoRoute(path: "/Platformer", page: PlatformerPage),
    RedirectRoute(path: "*", redirectTo: "/"), // redirect unknown routes to the homepage
  ]
)
class $AppRouter {}