import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:skeleton/route/my_routes.dart';
import 'package:skeleton/route/routes.dart';
import 'base/presentation/styles/text_form_field_style.dart';
import 'base/presentation/styles/text_styles.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'base/presentation/textformfield/app_colors.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var box = Hive.box('settings');

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white, surfaceTintColor: Colors.white),
        // Set the cursor color
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color(0xFFC4473B), // Change to your desired color
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFC4473B),
        // primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyles.body12Medium,
          bodyLarge: TextStyles.body12Regular,
        ),
        inputDecorationTheme:
            TextFormFieldStyle.getDefaultInputDecorationTheme(),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        // Add other custom component themes here
      ),
      routerDelegate: QRouterDelegate(MyRoutes.routes),
      routeInformationParser: const QRouteInformationParser(),
      builder: (context, child) {
        final constraints = MediaQuery.of(context).size;
        return Container(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: constraints.width > 1024 ? 430 : constraints.width,
            child: child,
          ),
        );
      },
    );
  }
}
