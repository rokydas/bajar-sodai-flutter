import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
            child: Column(
              children: [
                Text(
                    'পুনরায় স্বাগতম',
                    style: GoogleFonts.getFont(
                      'Hind Siliguri',
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                ),
                Text(
                  'আপনার ইমেইল ও পাসওয়ার্ড দিয়ে লগিন করুন।\nঅথবা সোশ্যাল মিডিয়া দিয়ে চালিয়ে যান',
                  style: GoogleFonts.getFont(
                    'Hind Siliguri',
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SignInForm()
              ],
            ),
          ),
        )
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width * 0.05),
          TextFormField(
            decoration: InputDecoration(
                hintText: "আপনার ইমেইল দিন",
                labelText: 'ইমেইল',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(25),
                  child: SvgPicture.asset("icons/Mail.svg"),
                ),
                fillColor: Colors.red,
                hoverColor: Colors.green,
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#854EC2')),
                  gapPadding: 50,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#854EC2')),
                  gapPadding: 50,
                )
            ),

            style: GoogleFonts.getFont(
              'Hind Siliguri',
              fontSize: 20
            )
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.05),
          TextFormField(
            obscureText: true,
              decoration: InputDecoration(
                  hintText: "আপনার পাসওয়ার্ড দিন",
                  labelText: 'পাসওয়ার্ড',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(25),
                    child: SvgPicture.asset("icons/Lock.svg"),
                  ),
                  fillColor: Colors.red,
                  hoverColor: Colors.green,
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: HexColor('#854EC2')),
                    gapPadding: 50,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: HexColor('#854EC2')),
                    gapPadding: 50,
                  )
              ),

              style: GoogleFonts.getFont(
                  'Hind Siliguri',
                  fontSize: 20
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.05),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => {},

              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(HexColor('#845EC2')),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )
                  )
              ),
              child: Text(
                'প্রবেশ করুন',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Hind Siliguri',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

