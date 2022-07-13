import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class GetinTouch extends StatelessWidget {
  GetinTouch({
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get In Touch With Us",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0e314c))),
                    SizedBox(
                      height: 40,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 300),
                      child: Text(
                        "Anything On your Mind. We’ll Be Glad To Assist You!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            height: 1.5,
                            color: Color(0xff6084a4)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 30,
                      alignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.center,
                      children: [ContactImage(), ContactForm()],
                    )
                  ],
                ));
          }
        }));
  }
}

class ContactImage extends StatefulWidget {
  const ContactImage({Key? key}) : super(key: key);

  @override
  _ContactImageState createState() => _ContactImageState();
}

class _ContactImageState extends State<ContactImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
            maxHeight: 600, minHeight: 300, maxWidth: 600, minWidth: 300),
        child: Image.asset("images/contact-img.png"));
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 600, maxWidth: 600),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: TextStyle(),
            decoration: InputDecoration(
                hintText: "Your Name",
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1)),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            style: TextStyle(),
            decoration: InputDecoration(
                hintText: "Your Email Address",
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1)),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            style: TextStyle(),
            decoration: InputDecoration(
                hintText: "Your phone Number",
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1)),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            style: TextStyle(),
            decoration: InputDecoration(
                hintText: "Your Subject",
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1)),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            maxLines: 6,
            style: TextStyle(),
            decoration: InputDecoration(
                hintText: "Write youre message...",
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1)),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            minWidth: 120,
            elevation: 20,
            padding: EdgeInsets.all(20),
            color: Color(0xff44ce6f),
            onPressed: () {},
            child: Text(
              "SEND MESSAGE",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
