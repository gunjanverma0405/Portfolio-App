import 'package:flutter/material.dart';
import 'package:gunjan_portfolio/homepage.dart';
import 'package:gunjan_portfolio/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => const HomePage(),
        'projects_page': (context) => const ProjectsPage(),
      },
    );
  }
}
