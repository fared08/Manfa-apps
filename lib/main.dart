import 'package:flutter/material.dart';
import 'package:manfa_apps/main.dart';
import 'dart:async';

import 'package:manfa_apps/splashscreen.dart';



class manfaApps extends StatelessWidget {
  const manfaApps({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}