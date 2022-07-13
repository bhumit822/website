import 'dart:html';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sponsors extends StatelessWidget {
  Sponsors({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  List Simag = [
    "images/partner-2.png",
    "images/partner-3.png",
    "images/partner-4.png",
    "images/partner-5.png",
    "images/partner-6.png",
    "images/partner-7.png",
    "images/partner-2.png",
    "images/partner-3.png",
    "images/partner-4.png",
    "images/partner-5.png",
    "images/partner-6.png",
    "images/partner-7.png",
    "images/partner-2.png",
    "images/partner-3.png",
    "images/partner-4.png",
    "images/partner-5.png",
    "images/partner-6.png",
    "images/partner-7.png",
  ];

  List himg = [
    "images/partner-hover2.png",
    "images/partner-hover3.png",
    "images/partner-hover4.png",
    "images/partner-hover5.png",
    "images/partner-hover6.png",
    "images/partner-hover7.png",
    "images/partner-hover2.png",
    "images/partner-hover3.png",
    "images/partner-hover4.png",
    "images/partner-hover5.png",
    "images/partner-hover6.png",
    "images/partner-hover7.png",
    "images/partner-hover2.png",
    "images/partner-hover3.png",
    "images/partner-hover4.png",
    "images/partner-hover5.png",
    "images/partner-hover6.png",
    "images/partner-hover7.png",
  ];

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
              margin: const EdgeInsets.symmetric(horizontal: 100),
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 20)
                        ],
                        borderRadius: BorderRadius.circular(7)),
                    transform: Matrix4.identity()..translate(0, -60),
                    // color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GridView.builder(
                        itemCount: Simag.length,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: (width / 230).round(),
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 50),
                        itemBuilder: (context, idx) {
                          return Container(
                            child: Image.asset(Simag[idx]),
                          );
                        })),
              ),
            );
          }
        }));
  }
}
