import 'dart:html';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stats extends StatelessWidget {
  const Stats({
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
                  image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.scaleDown,
                      image: AssetImage("images/map.png"))),
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 700, minWidth: 400),
                    child: Text("We Always Try To Understand Users Expectation",
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: GoogleFonts.nunito(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0e314c))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          color: Color(0xff6084a4),
                          fontSize: 15,
                          letterSpacing: 0.5,
                          height: 1.5)),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Statss(
                        count: "180K",
                        desc: "Downloaded",
                      ),
                      Statss(
                        count: "20K",
                        desc: "Feedback",
                      ),
                      Statss(
                        count: "500+",
                        desc: "Workers",
                      ),
                      Statss(
                        count: "70+",
                        desc: "Contributors",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    width: width * 0.5,
                    child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(8),
                        color: Color(0xffebebeb),
                        dashPattern: [5, 3],
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Have any question about us?",
                                    style: GoogleFonts.nunito(
                                        color: Color(0xff0e314c),
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600)),
                                Text("Don't hesitate to contact us",
                                    style: GoogleFonts.nunito(
                                        color: Color(0xff6084a4),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                            Spacer(),
                            buttonlogin(),
                          ],
                        )),
                  )
                ],
              ),
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

class Statss extends StatelessWidget {
  const Statss({
    Key? key,
    required this.desc,
    required this.count,
  }) : super(key: key);
  final desc;
  final count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count,
              style: GoogleFonts.nunito(
                  color: Color(0xff44ce6f),
                  fontSize: 35,
                  fontWeight: FontWeight.w800)),
          Text(desc,
              style: GoogleFonts.nunito(
                color: Color(0xff6084a4),
              ))
        ],
      ),
    );
  }
}
