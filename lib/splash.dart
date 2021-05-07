import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: HexColor('#f7f4ea'),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 70),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      'বাজার সদাই',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Hind Siliguri',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#845EC2'),
                      ),
                    ),
                  ),),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      'আপনার বিশ্বস্ত অনলাইন মার্কেটিং প্লার্টফর্ম ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Hind Siliguri',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#845EC2'),
                      ),
                    ),
                  ),),
                SizedBox(height: 30),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Carousel(
                      images: [
                        ExactAssetImage('illustrations/1.png'),
                        ExactAssetImage('illustrations/2.png'),
                        ExactAssetImage('illustrations/3.png'),
                      ],
                      autoplayDuration: Duration(seconds: 2),
                      showIndicator: false,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: TextButton(
                        onPressed: () => {
                          Navigator.pushNamed(context, 'sign-in')
                        },
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
                    )

                ),
                SizedBox(height: 70)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
