import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/Pages/Sign_In.dart';
import 'Home.dart';
import 'Sign_Up.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: Stack(children: [
          Container(
            /*decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffE4E5E6),
                Color(0xffB24BF3),
              ], // end: Alignment.bottomCenter, begin: Alignment.topCenter
            ),
          ),*/
            child: Column(
              children: [
                Stack(children: [
                  /*Container(
                    margin: EdgeInsets.only(left: 40),
                    height: screenheight * 0.39,
                    width: screenwidth,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/image/obt.png",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 100),
                      height: screenheight * 0.10,
                      width: screenwidth * 0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "assets/image/logo.png",
                        ),
                      )),
                    ),
                  ),*/
                  Container(
                    margin: EdgeInsets.only(top: 240, left: 20, right: 20),
                    child: Column(children: [
                      Text(
                        "Join the community of creaters",
                        style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: screenheight * 0.020,
                      ),
                      Text(
                        "A simple fun and creative way to share photos, videos, messages with your friends and family",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.15,
                      ),
                      Container(
                        height: screenheight * 0.07,
                        width: screenwidth,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff190b05),
                                  Color(0xffff6600),
                                ],
                                end: Alignment.topLeft,
                                begin: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.transparent),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sign_Up()));
                          },
                          child: Text(
                            "sign up",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.04,
                      ),
                      Container(
                        height: screenheight * 0.07,
                        width: screenwidth,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff190b05),
                                  Color(0xffff6600),
                                ],
                                end: Alignment.topLeft,
                                begin: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.transparent),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sign_In()));
                          },
                          child: Text(
                            "sign in",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ]),
              ],
            ),
          ),
        ]));
  }
}
