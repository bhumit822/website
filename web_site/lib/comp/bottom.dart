import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottom extends StatelessWidget {
  Bottom({
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
          if (constraits.maxWidth < 1000) {
            return Container();
          } else {
            return Container(
                decoration: BoxDecoration(
                    color: Color(0xfff7fafd),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "images/map.png",
                        ))),
                padding: EdgeInsets.only(top: 80, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SectionOne(),
                          SectionTwo(),
                          SectionThree(),
                          SectionFour(),
                        ]),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      height: 2,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                          "Copyright © 2021 StartP. All rights reserved by EnvyTheme",
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          style: GoogleFonts.nunito(
                              color: Color(0xff6084a4),
                              fontSize: 17,
                              letterSpacing: 0.5,
                              height: 1.5)),
                    )
                  ],
                ));
          }
        }));
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("images/logo.png"),
        SizedBox(height: 20),
        Container(
          width: 300,
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse.",
              // textAlign: TextAlign.center,
              maxLines: 5,
              style: GoogleFonts.nunito(
                  color: Color(0xff6084a4),
                  fontSize: 17,
                  letterSpacing: 0.5,
                  height: 1.5)),
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Company",
            style: GoogleFonts.nunito(fontSize: 23, color: Color(0xff0e314c))),
        SizedBox(height: 20),
        Text("About Us",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Services",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Features",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Our Pricing",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Latest News",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Support",
            style: GoogleFonts.nunito(fontSize: 23, color: Color(0xff0e314c))),
        SizedBox(height: 20),
        Text("FAQ's",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Privacy Policy",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Terms & Condition",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Team",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
        Text("Contact Us",
            // textAlign: TextAlign.center,
            maxLines: 5,
            style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
                fontSize: 17,
                letterSpacing: 0.5,
                height: 1.5)),
        SizedBox(height: 8),
      ],
    );
  }
}

class SectionFour extends StatelessWidget {
  const SectionFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Address",
            style: GoogleFonts.nunito(fontSize: 23, color: Color(0xff0e314c))),
        SizedBox(height: 20),
        Row(children: [
          Icon(Icons.location_on_outlined),
          Text("27 Division St, New York,\nNY 10002, USA",
              // textAlign: TextAlign.center,
              maxLines: 5,
              style: GoogleFonts.nunito(
                  color: Color(0xff6084a4),
                  fontSize: 17,
                  letterSpacing: 0.5,
                  height: 1.5)),
        ]),
        SizedBox(
          height: 15,
        ),
        Row(children: [
          Icon(Icons.email_outlined),
          Text("Email: startp@gmail.com",
              // textAlign: TextAlign.center,
              maxLines: 5,
              style: GoogleFonts.nunito(
                  color: Color(0xff6084a4),
                  fontSize: 17,
                  letterSpacing: 0.5,
                  height: 1.5)),
        ]),
        SizedBox(
          height: 15,
        ),
        Row(children: [
          Icon(Icons.phone),
          Text("Phone: + (321) 984 754",
              // textAlign: TextAlign.center,
              maxLines: 5,
              style: GoogleFonts.nunito(
                  color: Color(0xff6084a4),
                  fontSize: 17,
                  letterSpacing: 0.5,
                  height: 1.5)),
        ]),
      ],
    );
  }
}
