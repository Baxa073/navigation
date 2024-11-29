import 'package:flutter/material.dart';
import 'package:untitled3/core/route_names.dart';
import 'package:untitled3/core/route_generator.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteNames.homePage,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}
