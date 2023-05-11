import 'package:cryptowebsite/screens/auth/login.dart';
import 'package:cryptowebsite/screens/auth/register.dart';
import 'package:cryptowebsite/screens/dasboard/dashboardmain.dart';
import 'package:cryptowebsite/screens/home/mainhome.dart';
import 'package:cryptowebsite/webhover.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'contactus.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: dashboardmain()
        );
      },
    );
  }
}


