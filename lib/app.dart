import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoned_app/pages/home.dart';

class App extends StatelessWidget {
  @Preview(name: "Test3")
  const App({super.key});

  static const Color baseColor = .fromRGBO(240, 85, 55, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zoned App",
      theme: _buildTheme(.light),
      darkTheme: _buildTheme(.dark),
      home: Scaffold(body: Home()),
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    final baseTheme = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: baseColor,
        brightness: brightness,
      ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.balsamiqSansTextTheme(baseTheme.textTheme),
    );
  }
}
