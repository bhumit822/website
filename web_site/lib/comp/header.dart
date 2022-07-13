import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/pages/contact.dart';
import 'package:web_site/pages/home.dart';
import 'package:web_site/pages/login.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: height * 0.1),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, -5),
            )
          ],
          color: Colors.white,
        ),
        height: 80,
        width: width,
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 730) {
            return Container(
              child: Text("mobile/tab device"),
            );
          } else {
            return Row(
              children: [
                logo(),
                Spacer(),
                Menulist(),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Dashedoutlinebutton(),
                      SizedBox(
                        width: 15,
                      ),
                      buttonlogin(),
                    ],
                  ),
                ),
              ],
            );
          }
        }));
  }
}

class buttonlogin extends StatelessWidget {
  const buttonlogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        hoverColor: Color(0xff44ce6f),
        color: Color(0xffc679e3),
        height: 50,
        minWidth: 120,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignIn()));
        },
        child: Text(
          "LOGIN",
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class Dashedoutlinebutton extends StatelessWidget {
  const Dashedoutlinebutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [5, 3],
      radius: Radius.circular(7),
      borderType: BorderType.RRect,
      color: Color(0xff44ce6f),
      child: MaterialButton(
          height: 48,
          minWidth: 120,
          hoverColor: Color(0xff44ce6f),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Myhome()));
          },
          child: Text(
            "SUPPORT",
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}

class Menulist extends StatelessWidget {
  const Menulist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Myhome()));
          },
          child: menu(
            text: "HOME",
          ),
        ),
        SizedBox(
          width: 25,
        ),
        menu(
          text: "ABOUT",
        ),
        SizedBox(
          width: 25,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ContactUS()));
          },
          child: menu(
            text: "CONTACT",
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class menu extends StatelessWidget {
  const menu({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.nunito(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff4a6f8a)),
      ),
    );
  }
}

class logo extends StatelessWidget {
  const logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("images/logo.png"),
    );
  }
}
