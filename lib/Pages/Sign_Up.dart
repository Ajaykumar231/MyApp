import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Sign_In.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool isPasswordVisible = true;
  bool isPasswordVisible1 = true;
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE4E5E6),
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
                        top: screenheight * 0.20, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign up",
                          style: GoogleFonts.poppins(
                              color: Color(0xffff6600), // Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: screenheight * 0.05,
                        ),
                        TextField(
                          cursorColor: Color(0xffff6600),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffff6600), width: 1)),
                              hintText: "Email",
                              prefixIcon: Icon(Icons.mail_outlined),
                              iconColor: Color(0xffff6600)),
                        ),
                        SizedBox(
                          height: screenheight * 0.03,
                        ),
                        TextField(
                          cursorColor: Color(0xffff6600),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffff6600), width: 1)),
                              hintText: "Username",
                              prefixIcon: Icon(Icons.person_outline_rounded)),
                        ),
                        SizedBox(
                          height: screenheight * 0.03,
                        ),
                        buildPassword(),
                        SizedBox(
                          height: screenheight * 0.03,
                        ),
                        buildconfPassword(),
                        SizedBox(
                          height: screenheight * 0.10,
                        ),
                        Container(
                          height: screenheight * 0.06,
                          width: screenwidth,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffE4E5E6),
                                  Color(0xffff6600),
                                ], // end: Alignment.bottomCenter, begin: Alignment.topCenter
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.transparent),
                              onPressed: () {},
                              child: Text(
                                "sign up",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: screenheight * 0.10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sign_In())),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Existing user?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: " Sign in",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: Color(0xffff6600),
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
        //),
      ),
    );
  }

  Widget buildPassword() => TextField(
        cursorColor: Color(0xffff6600),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffff6600), width: 1)),
          hintText: "Create Password",
          prefixIcon: Icon(Icons.key_rounded),
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(
                    Icons.visibility_off,
                    color: Color(0xffff6600),
                  )
                : Icon(
                    Icons.visibility,
                    color: Color(0xffff6600),
                  ),
            onPressed: () =>
                setState(() => isPasswordVisible = !isPasswordVisible),
          ),
        ),
        obscureText: isPasswordVisible,
      );
  Widget buildconfPassword() => TextField(
        cursorColor: Color(0xffff6600),
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffff6600), width: 1)),
          hintText: "Confirm Password",
          prefixIcon: Icon(Icons.key_rounded),
          suffixIcon: IconButton(
            icon: isPasswordVisible1
                ? Icon(
                    Icons.visibility_off,
                    color: Color(0xffff6600),
                  )
                : Icon(
                    Icons.visibility,
                    color: Color(0xffff6600),
                  ),
            onPressed: () =>
                setState(() => isPasswordVisible1 = !isPasswordVisible1),
          ),
        ),
        obscureText: isPasswordVisible1,
      );
}
