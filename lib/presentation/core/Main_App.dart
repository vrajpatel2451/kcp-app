import 'package:flutter/material.dart';
import 'package:kcp_app/presentation/auth/sign_in_page.dart';
import 'package:kcp_app/presentation/screens/home_screen.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KCP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff004385),
        brightness: Brightness.dark,
        accentColor: Color(0xffFFC700),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      home: SignInPage(),
    );
  }
}
