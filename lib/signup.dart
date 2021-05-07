import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/sign_up";
  Color c = const Color(0x845EC2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: HexColor('#f7f4ea'),

        appBar: AppBar(
          // backgroundColor: HexColor('#f7f4ea'),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon:
                Icon(Icons.arrow_back_ios_rounded, color: HexColor('#845EC2')),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          shadowColor: Colors.transparent,
          title: Text(
            'সাইন আপ',
            style: GoogleFonts.getFont(
              'Hind Siliguri',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: HexColor('#845EC2'),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    'একাউন্ট রেজিস্ট্রেশন করুন',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Hind Siliguri',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'নিচের ফর্ম টি পূরণ করুন অথবা সোশ্যাল মিডিয়া দিয়ে চালিয়ে যান',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Hind Siliguri',
                        fontSize: 20,
                        color: Colors.grey[900],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your Email'),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your Password'),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter your Confirm Password'),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: TextButton(
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/sign-up')},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    HexColor('#845EC2')),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
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
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              //       child: Row(
              //   children: [
              //       Expanded(
              //         child: SignInButtonBuilder(
              //           text: '',
              //           icon: Icons.email,
              //           onPressed: () {},
              //           backgroundColor: Colors.green,
              //         )
              //       ),
              //       Expanded(
              //         child: SignInButton(
              //           Buttons.Facebook,
              //           text: "",
              //           onPressed: () {},
              //         ),
              //       ),
              //       Expanded(
              //         child: SignInButton(
              //           Buttons.Twitter,
              //           text: "",
              //           onPressed: () {},
              //         ),
              //       ),
              //
              //   ],
              // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SignInButton(
                          Buttons.LinkedIn,
                          mini: true,
                          onPressed: () {
                            // _showButtonPressDialog(context, 'LinkedIn (mini)');
                          },
                        ),
                        SignInButton(
                          Buttons.Tumblr,
                          mini: true,
                          onPressed: () {
                            // _showButtonPressDialog(context, 'Tumblr (mini)');
                          },
                        ),
                        SignInButton(
                          Buttons.Facebook,
                          mini: true,
                          onPressed: () {
                            // _showButtonPressDialog(context, 'Facebook (mini)');
                          },
                        ),
                        SignInButtonBuilder(
                          // icon: Icon(FontAwesome.glass),
                          text: "Ignored for mini button",
                          mini: true,
                          onPressed: () {
                            // _showButtonPressDialog(context, 'Email (mini)');
                          },
                          backgroundColor: Colors.cyan,
                        ),
                        Expanded(child:
                          Container(
                            color: Colors.green,
                            padding: EdgeInsets.all(8),
                            child: Icon(FontAwesome.facebook),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      );

  }
}
