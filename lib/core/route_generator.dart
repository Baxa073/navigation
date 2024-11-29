import 'package:flutter/material.dart';
import 'package:untitled3/core/route_names.dart';
import 'package:untitled3/pages/account_page.dart';
import 'package:untitled3/pages/home_page.dart';
import 'package:untitled3/pages/new_page.dart';
import 'package:untitled3/pages/search_page.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
        break;
      case RouteNames.accountPage:
        return MaterialPageRoute(builder: (_) => const AccountPage());
        break;
      case RouteNames.searchPage:
        return MaterialPageRoute(builder: (_) => const SearchPage());
        break;
      case RouteNames.newPage:
        return MaterialPageRoute(builder: (_) => const NewPage());
        break;

      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
