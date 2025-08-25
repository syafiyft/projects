import 'package:assessment_aem/data/notifiers.dart';
import 'package:flutter/material.dart';

import 'views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

//Material App (StatefulWidget) with title and theme
//Scaffold
//AppBar with title
//Bottom Navigation Bar with two items (Home and Profile) - setState to update the index

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
//arrow function is for one line function
//multi line function use {}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
