import 'package:avanta/pages/home_page.dart';
import 'package:avanta/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avanta',
      initialRoute: HomePage.routeName,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
