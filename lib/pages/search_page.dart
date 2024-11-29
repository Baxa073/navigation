import 'package:flutter/material.dart';

import '../core/route_names.dart';

class SearchPage extends StatelessWidget {
  static const String id = "search_page";

  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Search Page"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.newPage);
          },
          child: const Text(
            "Next page",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
