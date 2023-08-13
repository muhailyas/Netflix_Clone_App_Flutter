import 'package:flutter/material.dart';
import 'package:netflix_clone_app/core/color/colors.dart';
import 'package:netflix_clone_app/core/constanst/text_theme.dart';
import 'package:netflix_clone_app/view/main_page/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const NetflixClone());
}

class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: textTheme),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
