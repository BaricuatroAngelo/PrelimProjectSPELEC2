import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage/homepage.dart';
import 'introscreens/introscreen.dart';
import 'moviepage/moviepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: "Flutter Prelim Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        ),
      routes: {
        "/": (context)=> IntroScreen(),
        "home": (context) => HomePage(),
        "movie": (context) => MoviePage(),
      },
    );
  }
}