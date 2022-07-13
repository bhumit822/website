import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsBlog extends StatelessWidget {
  NewsBlog({
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
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 700, minWidth: 400),
                      child: Text("The News From Our Blog",
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
                    Wrap(
                      spacing: 20,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      children: [Blog(), Blog(), Blog()],
                    )
                  ],
                ));
          }
        }));
  }
}

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Image.asset(
              "images/blog1.jpg",
              fit: BoxFit.cover,
            )),
            Container(
              // color: Colors.amberAccent,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                    width: 600,
                    padding: EdgeInsets.all(30),
                    color: Color(0xfff7fafd),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The Security Risks of Changing Package Owners",
                            style: GoogleFonts.nunito(
                                fontSize: 23, color: Color(0xff0e314c))),
                        SizedBox(
                          height: 10,
                        ),
                        Text("By Admin",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                color: Color(0xff6084a4),
                                fontSize: 15,
                                letterSpacing: 0.5,
                                height: 1.5)),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse.",
                            // textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                color: Color(0xff6084a4),
                                fontSize: 15,
                                letterSpacing: 0.5,
                                height: 1.5)),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Text("Read More  ",
                                  style: GoogleFonts.nunito(
                                      fontSize: 18, color: Color(0xff0e314c))),
                              Hvr(
                                child: Icon(Icons.arrow_forward,
                                    color: Color(0xff0e314c)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    transform: Matrix4.identity()..translate(20, -20),
                    width: 200,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 20,
                        ),
                        Text("March 15, 2021",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xff0e314c))),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class Hvr extends StatefulWidget {
  const Hvr({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  _HvrState createState() => _HvrState();
}

class _HvrState extends State<Hvr> {
  bool hvrd = false;
  @override
  Widget build(BuildContext context) {
    final transfrm = Matrix4.identity()..translate(10);
    final tr = hvrd ? transfrm : Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => isHvr(true),
        onExit: (event) => isHvr(false),
        child: AnimatedContainer(
            transform: tr,
            duration: Duration(milliseconds: 200),
            child: widget.child));
  }

  void isHvr(bool hvrd) {
    setState(() {
      this.hvrd = hvrd;
    });
  }
}
