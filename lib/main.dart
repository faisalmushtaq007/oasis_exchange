import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oasis_exchange/core/utils/helper.dart';
import 'package:oasis_exchange/screens/post_screen.dart';

void main() {
  runApp(const OasisExchangeApp());
}

class OasisExchangeApp extends StatelessWidget {
  const OasisExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oasis Exchange',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.blueGrey.shade100,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Helper.titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          // font family added - Noto Sans
          fontFamily: GoogleFonts.notoSans().fontFamily),
      home: const PostScreen(),
    );
  }
}
