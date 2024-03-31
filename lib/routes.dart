import 'package:avanta/pages/home_page.dart';
import 'package:avanta/pages/walk_through_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomePage.routeName: (context) => const HomePage(),
  WalkthroughPage.routeName: (context) => const WalkthroughPage()
};
