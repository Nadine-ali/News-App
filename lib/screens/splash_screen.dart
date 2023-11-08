import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/layout/home_layout.dart';
import 'package:news_app/screens/sources_view.dart';

class splash_Screen extends StatelessWidget {
  static const String RouteName="splash_Screen";
  const splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, home_layout.RouteName);
    });
    return Scaffold(
      body: Image.asset("assets/images/splash_light.png",
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        fit: BoxFit.cover,
      ),
    );
  }
}
