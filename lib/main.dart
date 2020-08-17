import 'package:flutter/material.dart';

// Pages
import 'package:uvadsc_website/data/PageInfo.dart';
import 'package:uvadsc_website/pages/HomePage.dart';
import 'package:uvadsc_website/pages/AboutPage.dart';
import 'package:uvadsc_website/pages/EventsPage.dart';
import 'package:uvadsc_website/pages/ProjectsPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Pages list
  final List<PageInfo> pages = new List<PageInfo>();
  loadPages() {
    pages.add(new PageInfo(name: "Home", route: "/", widget: HomePage(pages: pages)));
    pages.add(new PageInfo(name: "About", route: "/about", widget: AboutPage(pages: pages)));
    pages.add(new PageInfo(name: "Events", route: "/events", widget: EventsPage(pages: pages)));
    pages.add(new PageInfo(name: "Projects", route: "/projects", widget: ProjectsPage(pages: pages)));
  }

  MyApp() {
    loadPages();
    createRoutesMap();
  }

  // Create routes map for routing
  final Map<String, WidgetBuilder> routes = new Map<String, WidgetBuilder>();
  createRoutesMap() {
    for (num i = 0; i < pages.length; i++) {
      PageInfo curr = pages[i];
      routes.putIfAbsent(curr.route, () => (context) => curr.widget); // if necessary, use a factory to create these dynamically with context
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google DSC @ UVA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: routes
    );
  }
}
