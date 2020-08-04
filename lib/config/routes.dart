import 'package:flutter/material.dart';
import 'package:get_it_mobx_example/config/routes_val.dart';
import 'package:get_it_mobx_example/pages/loading/loading_page.dart';
import 'package:get_it_mobx_example/pages/page_a/page_a.dart';
import 'package:get_it_mobx_example/pages/page_b/page_b.dart';
import 'package:get_it_mobx_example/pages/page_c/page_c.dart';
import 'package:get_it_mobx_example/pages/page_e/page_e.dart';

abstract class Routes {
  static const String initialRoute = loadingPageRoute;

  static Route<dynamic> generateRoute(
      RouteSettings settings, GlobalKey<NavigatorState> navigationKey) {
    switch (settings.name) {
      case loadingPageRoute:
        return MaterialPageRoute(
            builder: (_) => LoadingPage(
                  navigatorKey: navigationKey,
                ));
      case pageARoute:
        return MaterialPageRoute(builder: (_) => PageA());
      case pageBRoute:
        return MaterialPageRoute(builder: (_) => PageB());
      case pageCRoute:
        return MaterialPageRoute(builder: (_) => PageC());
      case pageERoute:
        return MaterialPageRoute(builder: (_) => PageE());
      default:
        return MaterialPageRoute(
            builder: (_) => LoadingPage(
                  navigatorKey: navigationKey,
                ));
    }
  }
}
