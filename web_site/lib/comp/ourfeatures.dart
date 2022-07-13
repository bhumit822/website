import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class OurFeatures extends StatelessWidget {
  const OurFeatures({
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
                color: Color(0xfff7fafd),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Our Features",
                      style: GoogleFonts.nunito(
                          fontSize: 35, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          height: 1.5,
                          letterSpacing: 0.8,
                          color: Color(0xff6084a4)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 180,
                          crossAxisSpacing: 20,
                        ),
                        children: [
                          Customcard(
                            icn: Icons.settings,
                            header: "Incredible Infrastructure",
                            subtext:
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor\nincididunt ut labore dolore magna aliqua.",
                          ),
                          Customcard(
                            icn: Icons.email_outlined,
                            header: "Email Notifications",
                            subtext:
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor\nincididunt ut labore dolore magna aliqua.",
                          ),
                          Customcard(
                            icn: Icons.dashboard_outlined,
                            header: "Simple Dashboard",
                            subtext:
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor\nincididunt ut labore dolore magna aliqua.",
                          ),
                          Customcard(
                            icn: Icons.info_outline,
                            header: "Information Retrieval",
                            subtext:
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor\nincididunt ut labore dolore magna aliqua.",
                          ),
                          Customcard(
                            icn: Icons.confirmation_number_outlined,
                            header: "Drag & Drop Functionality",
                            subtext:
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor\nincididunt ut labore dolore magna aliqua.",
                          ),
                          Customcard(
                            icn: Icons.notifications_active_outlined,
                            header: "Deadline Reminders",
                            subtext:
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor\nincididunt ut labore dolore magna aliqua.",
                          ),
                        ])
                  ],
                ));
          }
        }));
  }
}

class Customcard extends StatelessWidget {
  const Customcard({
    Key? key,
    required this.icn,
    required this.header,
    required this.subtext,
  }) : super(key: key);
  final icn;
  final header;
  final subtext;

  @override
  Widget build(BuildContext context) {
    return Hover(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.all(20),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                  height: 52,
                  width: 52,
                  child: CircleAvatar(
                      backgroundColor: Color(0xffcdf1d8),
                      child: Icon(icn, color: Color(0xff44ce6f)))),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(header,
                        style: GoogleFonts.nunito(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0e314c))),
                    FittedBox(
                      child: Text(subtext,
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              letterSpacing: 0.5,
                              height: 1.6,
                              color: Color(0xff6084a4))),
                    )
                  ]),
            ),
          ])),
    );
  }
}
