import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({
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
                color: Color(0xfff9f6f6),
                padding: EdgeInsets.symmetric(vertical: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Our Awesome Team",
                        style: GoogleFonts.nunito(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        )),
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
                      height: 40,
                    ),
                    Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: GridView(
                          // semanticChildCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisSpacing: 30,
                                  mainAxisExtent:
                                      (MediaQuery.of(context).size.width - 90) /
                                          4),
                          // semanticChildCount: 4,
                          shrinkWrap: false,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.red,
                            ),
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.black,
                            ),
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.red,
                            ),
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.black,
                            ),
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.red,
                            ),
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.black,
                            ),
                            Container(
                              height: 400,
                              width: 600,
                              color: Colors.red,
                            ),
                          ]),
                    )
                  ],
                ));
          }
        }));
  }
}
