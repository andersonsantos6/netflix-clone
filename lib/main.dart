import 'package:flutter/material.dart';
import 'package:netflix_clone/src/pages/home/home_page.dart';
import 'package:netflix_clone/src/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) =>const  LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
