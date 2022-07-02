import 'package:evy_internship/views/home.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'DM Sans',
        textTheme: GoogleFonts.dmSansTextTheme(
          TextTheme(
            bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black, ),
            titleMedium: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey, ) ,
            headlineSmall: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w700) ,
            labelMedium: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}


