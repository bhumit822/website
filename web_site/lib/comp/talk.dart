import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class RedyTalk extends StatelessWidget {
  const RedyTalk({
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
                    gradient: LinearGradient(
                        colors: [Color(0xff23bdb8), Color(0xff43e794)])),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: 80),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: 700, minWidth: 400),
                        child: Text("Ready To Talk?",
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: GoogleFonts.nunito(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "Our team is here to answer your question about StartP",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 0.5,
                              height: 1.5)),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContactUs(),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Or, get started now with a free trial",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontSize: 15,
                                  letterSpacing: 0.5,
                                  height: 2))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "More that 1.5 million businesses and organizations use StartP",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              letterSpacing: 0.5,
                              height: 1.5)),
                      SizedBox(height: 30)
                    ]));
          }
        }));
  }
}

class ContactUs extends StatelessWidget {
  const ContactUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        hoverElevation: 20,
        hoverColor: Color(0xff44ce6f),
        color: Color(0xffc679e3),
        height: 50,
        minWidth: 160,
        onPressed: () {},
        child: Text(
          "CONTACT US",
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
