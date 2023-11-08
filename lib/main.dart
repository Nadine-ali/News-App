import 'package:flutter/material.dart';
import 'package:news_app/layout/home_layout.dart';
import 'package:news_app/screens/article_view.dart';
import 'package:news_app/screens/settings_screen.dart';
import 'package:news_app/screens/sources_view.dart';
import 'package:news_app/screens/splash_screen.dart';

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
      initialRoute: splash_Screen.RouteName,
      routes: {
       home_layout.RouteName:(context)=>home_layout(),
       splash_Screen.RouteName:(context)=>splash_Screen(),
       settings_screen.RouteName:(context)=>settings_screen(),
       article_view.RouteName:(context)=>article_view(),
      }

    );

  }
}


