import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smpn45makassar/pages/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
