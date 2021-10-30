import 'package:flutter/material.dart';
import 'package:geeky_works/app/app.locator.dart';
import 'package:geeky_works/app/app.router.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator(environment: Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF28406b),
          elevation: 5,
          shadowColor: Colors.black,
        ),
        scaffoldBackgroundColor: const Color(0xFF20314e),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white, fontSize: 12),
          headline3: TextStyle(color: Color(0xFFf4de4c), fontSize: 15),
          button: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
