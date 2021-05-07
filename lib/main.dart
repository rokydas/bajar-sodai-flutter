import 'package:bajar_sodai/signup.dart';
import 'package:flutter/material.dart';
import 'package:bajar_sodai/splash.dart';
import 'package:bajar_sodai/screens/SignInScreen/SignInScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
          )
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'sign-up': (context) => SignUp(),
        'sign-in': (context) => SignInScreen(),
      },
    );
  }
}
