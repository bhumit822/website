import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class ContactPage extends StatelessWidget {
  ContactPage({
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
          if (constraits.maxWidth < 100) {
            return Container();
          } else {
            return Container(
                // width * 0.05
                // height: height * 0.4,
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/banner-bg1.jpg"))),
                      padding: EdgeInsets.only(
                        top: 80,
                        bottom: 80,
                      ),
                      alignment: Alignment.center,
                      // height: height * 0.25,
                      child: Text("Contact Us",
                          style: GoogleFonts.poppins(
                              fontSize: 35,
                              color: Color(0xff0e314c),
                              fontWeight: FontWeight.w700)),
                    ),
                    CardGrid(),
                  ],
                ));
          }
        }));
  }
}

class CardGrid extends StatefulWidget {
  const CardGrid({Key? key}) : super(key: key);

  @override
  _CardGridState createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
      child: Wrap(
        runSpacing: 30,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        direction: Axis.horizontal,
        spacing: 30,
        children: [
          Hover(
              child: CardContact(
            icn: Icons.mail_outline,
            titla: "Mail Here",
            text: "admin@startp.com",
            textTwo: "info@startp.com",
          )),
          Hover(
              child: CardContact(
            icn: Icons.location_on_outlined,
            titla: "Visit Here",
            text:
                "27 Division St, New York, NY 10002, United States of America",
          )),
          Hover(
              child: CardContact(
            icn: Icons.call,
            titla: "Call Here",
            text: "+123 456 7890",
            textTwo: "+241 452 4526",
          )),
        ],
      ),
    );
  }
}

class CardContact extends StatelessWidget {
  const CardContact(
      {Key? key,
      required this.icn,
      required this.titla,
      required this.text,
      this.textTwo})
      : super(key: key);

  final icn;
  final titla;
  final text;
  final textTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      constraints: BoxConstraints(maxWidth: 350, minWidth: 300, minHeight: 200),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 100,
          spreadRadius: -20,
        )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icn, size: 25, color: Color(0xff44ce6f)),
          SizedBox(
            height: 20,
          ),
          Text(titla,
              style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: Color(0xff0e314c),
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            constraints: BoxConstraints(maxWidth: 350, minWidth: 100),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Color(0xff6084a4),
                fontSize: 14,
              ),
            ),
          ),
          textTwo != null
              ? Text(
                  textTwo,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: GoogleFonts.poppins(
                    color: Color(0xff6084a4),
                    fontSize: 14,
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
