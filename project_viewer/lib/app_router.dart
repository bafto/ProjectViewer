import 'package:auto_route/annotations.dart';
import 'package:project_viewer/pages/home_page.dart';
import 'package:project_viewer/pages/project_pages/mandelbrot_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: "/", page: HomePage, initial: true),
    AutoRoute(path: "/Mandelbrot", page: MandelbrotPage),
    RedirectRoute(path: "*", redirectTo: "/"), // redirect unknown routes to the homepage
  ]
)
class $AppRouter {}