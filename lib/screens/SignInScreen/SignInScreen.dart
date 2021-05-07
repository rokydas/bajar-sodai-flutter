import 'package:bajar_sodai/screens/SignInScreen/body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'সাইন ইন',
          style: GoogleFonts.getFont(
            'Hind Siliguri',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: HexColor('#845EC2'),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
