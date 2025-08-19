import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//material app
//scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
          centerTitle: false,
          leading: Icon(Icons.login),
          actions: [Text('Action 1'), Icon(Icons.login)],
          backgroundColor: Colors.teal,
        ),
      ),
    ); //theme for app
  }
}
