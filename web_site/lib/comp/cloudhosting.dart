import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloudHosting extends StatelessWidget {
  const CloudHosting({
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
              padding:
                  EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 80),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cloud Hosting Services",
                          style: GoogleFonts.nunito(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0e314c))),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua.",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            height: 1.5,
                            color: Color(0xff6084a4)),
                        maxLines: 2,
                      ),
                      SizedBox(height: 40),
                      Container(
                        // padding: EdgeInsets.all(20),
                        child: GridView(
                          clipBehavior: Clip.none,
                          padding: EdgeInsets.symmetric(),
                          addRepaintBoundaries: false,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 25,
                                  crossAxisSpacing: 15,
                                  mainAxisExtent: 50,
                                  crossAxisCount: 2),
                          children: [
                            Box(icn: Icons.storage, text: "Cloud databases"),
                            Box(
                                icn: Icons.upload_file_outlined,
                                text: "Website hosting"),
                            Box(icn: Icons.file_copy, text: "File storage"),
                            Box(
                                icn: Icons.stacked_line_chart_outlined,
                                text: "Forex Trading"),
                            Box(
                                icn: Icons.folder_outlined,
                                text: "File backups"),
                            Box(
                                icn: Icons.desktop_mac_outlined,
                                text: "Remote desktop"),
                            Box(
                                icn: Icons.email_outlined,
                                text: "Email servers"),
                            Box(icn: Icons.cloud_queue, text: "Hybrid cloud"),
                          ],
                        ),
                      )
                    ],
                  )),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("images/service-.png"),
                        Image.asset("images/s22.png")
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        }));
  }
}

class Box extends StatelessWidget {
  const Box({
    Key? key,
    required this.icn,
    required this.text,
  }) : super(key: key);
  final icn;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 50,
                spreadRadius: -10)
          ]),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(
            icn,
            color: Color(0xff44ce6f),
          ),
          SizedBox(
            width: 10,
          ),
          Text(text,
              style: GoogleFonts.nunito(
                  color: Color(0xff6084a4), fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
