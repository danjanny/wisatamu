import 'package:qlevar_router/qlevar_router.dart';
import 'package:skeleton/base/presentation/splash_screen/splash_screen_page.dart'
    deferred as splash_screen_page;
import 'package:skeleton/home/presentation/pages/home_page.dart'
    deferred as home_page;
import 'deferred_loader.dart';

class MyRoutes {
  static const rootPath = "/";
  static const homePath = "/home";
  static final routes = [
    QRoute(
        path: rootPath,
        builder: () => splash_screen_page.SplashScreenPage(),
        middleware: [
          DeferredLoader(splash_screen_page.loadLibrary),
        ]),
    QRoute(path: homePath, builder: () => home_page.HomePage(), middleware: [
      DeferredLoader(home_page.loadLibrary),
    ]),
  ];
}
