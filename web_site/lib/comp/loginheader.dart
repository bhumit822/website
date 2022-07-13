import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class SignInHead extends StatelessWidget {
  SignInHead({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: height * 0.85,
        width: width,
        child: LayoutBuilder(builder: (context, constraits) {
          if (constraits.maxWidth < 100) {
            return Container();
          } else {
            return Container(
                // width * 0.05
                // height: height * 0.4,
                color: Color(0xffF5F5F5),
                padding: EdgeInsets.only(
                  top: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/banner-bg1.jpg"))),
                      padding: EdgeInsets.only(
                        top: 80,
                        bottom: 80,
                      ),
                      alignment: Alignment.center,
                      // height: height * 0.25,
                      child: Text("Login",
                          style: GoogleFonts.poppins(
                              fontSize: 35,
                              color: Color(0xff0e314c),
                              fontWeight: FontWeight.w700)),
                    ),
                    SigninCard()
                  ],
                ));
          }
        }));
  }
}

class SigninCard extends StatelessWidget {
  const SigninCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 15, spreadRadius: -10)]),
        constraints: BoxConstraints(maxWidth: 500, minWidth: 300),
        padding: EdgeInsets.all(30),
        child: Column(children: [
          Container(
            child: Image.asset("images/logo.png"),
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Don't have an account yet? ",
                style: GoogleFonts.poppins(
                  color: Color(0xff6084a4),
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: "Sign Up",
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Color(0xff0e314c)),
                  )
                ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff0e314c)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                style: TextStyle(backgroundColor: Colors.red),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(238, 238, 238, 1)),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff0e314c)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                style: TextStyle(backgroundColor: Colors.red),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(238, 238, 238, 1)),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.poppins(
                      // fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff0e314c)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            minWidth: 120,
            elevation: 20,
            padding: EdgeInsets.all(20),
            color: Color(0xff44ce6f),
            onPressed: () {},
            child: Text(
              "LOGIN",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "or connect with",
            style: GoogleFonts.poppins(
              // fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color(0xff6084a4),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook_outlined, size: 30),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.mail_outline, size: 30),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.blur_circular_outlined, size: 30)
            ],
          )
        ]));
  }
}
