import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSay extends StatelessWidget {
  UserSay({
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
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: 700, minWidth: 400),
                        child: Text("What Users Saying",
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
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              transform: Matrix4.identity()
                                ..setRotationZ(0.8)
                                ..translate(
                                  50,
                                  -50,
                                ),
                              color: Colors.amber,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(40),
                              color: Colors.white,
                              width: width * 0.55,
                              height: 250,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Color(0xff44ce6f),
                                            width: 2)),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        "images/works1.jpg",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Lisa Sauermann",
                                          style: GoogleFonts.nunito(
                                              fontSize: 24,
                                              color: Color(0xff0e314c))),
                                      Text("Mathematician",
                                          style: GoogleFonts.nunito(
                                              fontSize: 16,
                                              color: Color(0xffc679e3))),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                          "Quis ipsum suspendisse ultrices gravida. Risus commodo viverra\nmaecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.",
                                          style: GoogleFonts.nunito(
                                              fontSize: 16,
                                              color: Color(0xff6084a4),
                                              height: 1.5))
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 110,
                        width: 550,
                        child: Sliderc(),
                      )
                    ]));
          }
        }));
  }
}

class Sliderc extends StatefulWidget {
  Sliderc({Key? key}) : super(key: key);

  @override
  _SlidercState createState() => _SlidercState();
}

List img = [
  "images/client1.jpg",
  "images/client2.jpg",
  "images/client3.jpg",
  "images/client4.jpg",
  "images/client5.jpg",
  "images/client1.jpg",
  "images/client2.jpg",
  "images/client3.jpg",
  "images/client4.jpg",
  "images/client5.jpg",
  "images/client1.jpg",
  "images/client2.jpg",
  "images/client3.jpg",
  "images/client4.jpg",
  "images/client5.jpg",
];

class _SlidercState extends State<Sliderc> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: img.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(4),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Color(0xff44ce6f), width: 2)),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                img[index],
              ),
            ),
          );
        });
  }
}
