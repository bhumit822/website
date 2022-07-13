import 'package:flutter/material.dart';
import 'package:web_site/comp/bottom.dart';
import 'package:web_site/comp/contactpage.dart';
import 'package:web_site/comp/getintouch.dart';
import 'package:web_site/comp/header.dart';

class ContactUS extends StatefulWidget {
  const ContactUS({Key? key}) : super(key: key);

  @override
  _ContactUSState createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        ContactPage(height: height, width: width),
                        GetinTouch(height: height, width: width),
                        Bottom(height: height, width: width)
                      ],
                    ),
                  ),
                ),
                Header(height: height, width: width),
              ],
            )
          ],
        ),
      ),
    );
  }
}
