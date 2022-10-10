import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home.dart';
import 'Sign_up.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  bool isPasswordVisible = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        /*child: Container(
          height: screenheight,
          width: screenwidth,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey.shade50,
                Color(0xff6D6D6D),
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
            ),*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenwidth * 0.10,
                      vertical: screenheight * 0.10),
                  height: screenheight * 0.4,
                  width: screenwidth * 0.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/logo3.png"))),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenheight * 0.19, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                            color: Color(0xff3D3D3D), // Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: screenheight * 0.05,
                      ),
                      TextField(
                        controller: emailController,
                        cursorColor: Color(0xff6D6D6D),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black26, width: 2)),
                            hintText: "Username",
                            prefixIcon: Icon(Icons.person_outline_outlined)),
                      ),
                      SizedBox(
                        height: screenheight * 0.03,
                      ),
                      buildPassword(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color(0xff3D3D3D),
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline),
                            )),
                      ),
                      SizedBox(
                        height: screenheight * 0.08,
                      ),
                      Container(
                        height: screenheight * 0.06,
                        width: screenwidth,
                        decoration: BoxDecoration(
                            color: Color(0xff3D3D3D),
                            borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0.8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: Color(0xff3D3D3D)),
                            onPressed: () async {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordController.text);
                              setState(() {});
                            },
                            child: Text(
                              "sign in",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: screenheight * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.002,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Colors.transparent,
                              Color(0xff3D3D3D),
                            ])),
                          ),
                          Text(
                            "  Or Sign in with  ",
                            style: GoogleFonts.poppins(
                                color: Colors.black26, fontSize: 14),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.002,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xff3D3D3D),
                              Colors.transparent,
                            ])),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildSocialBtn(() => print("login with google"),
                              AssetImage("assets/image/gi.png")),
                          _buildSocialBtn(() => print("login with facebook"),
                              AssetImage("assets/image/fi.png")),
                          _buildSocialBtn(() => print("login with Appleid"),
                              AssetImage("assets/image/ai.png")),
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_Up())),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Don't have an Account ?",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: " Sign up",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color(0xff3D3D3D),
                                  fontWeight: FontWeight.w700,
                                ))
                          ])),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    ));
    /*Future signIn() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    }*/
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: 55,
        width: 42,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: logo)),
      ),
    );
  }

  Widget buildPassword() => TextField(
        controller: passwordController,
        cursorColor: Color(0xff6D6D6D),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 2)),
          hintText: "Password",
          prefixIcon: Icon(Icons.key_rounded),
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(
                    Icons.visibility_off,
                    color: Colors.grey.shade700,
                  )
                : Icon(
                    Icons.visibility,
                    color: Colors.grey.shade700,
                  ),
            onPressed: () =>
                setState(() => isPasswordVisible = !isPasswordVisible),
          ),
        ),
        obscureText: isPasswordVisible,
      );
}
