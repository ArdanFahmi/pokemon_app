import 'package:flutter/material.dart';
import 'package:pokemon_app/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      home: const Home(),
      routes: {
        Home.routeName: (context) => const Home(),
      },
    );
  }
}
