import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateful - can refresh
//stateless - cannot refresh
//setstate - data that can change / to refresh

String? title = 'Flutter Demo Home Page';

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
      home: MyHomePage(),
    ); //theme for app
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //here can declare variables
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    //here
    return Scaffold(
      appBar: AppBar(title: Text(title!), centerTitle: true),
      body: currentIndex == 0
          ? Center(child: Text('1'))
          : Center(child: Text('2')),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
