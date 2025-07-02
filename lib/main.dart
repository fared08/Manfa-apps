import 'package:flutter/material.dart';
// import 'package:manfa_apps/main.dart';
// ignore: unused_import
import 'dart:async';

import 'package:manfa_apps/splashscreen.dart';

void main() {
  runApp(ManfaApps());
}

class ManfaApps extends StatelessWidget {
  const ManfaApps({super.key});

  // const manfaApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
