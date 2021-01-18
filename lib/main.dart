import 'package:flutter/material.dart';
import 'package:namastecodingweb/views/about_view/about_view.dart';
import 'package:namastecodingweb/views/home_view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namaste Coding Web',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeView(),
        '/about': (context) => AboutView(),
      },
    );
  }
}
