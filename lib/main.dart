import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyShopMiniApp());
}

class MyShopMiniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop Mini',
      theme: ThemeData(
        primaryColor: Color(0xFF2C2568),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF2C2568),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}