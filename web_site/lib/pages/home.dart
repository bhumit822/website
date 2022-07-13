import 'package:flutter/material.dart';
import 'package:web_site/comp/bottom.dart';
import 'package:web_site/comp/cloudhosting.dart';
import 'package:web_site/comp/design_dev.dart';
import 'package:web_site/comp/getstarted.dart';
import 'package:web_site/comp/header.dart';
import 'package:web_site/comp/newsblog.dart';
import 'package:web_site/comp/ourfeatures.dart';
import 'package:web_site/comp/ourrwork.dart';
import 'package:web_site/comp/pricing.dart';
import 'package:web_site/comp/sponsors.dart';
import 'package:web_site/comp/square.dart';
import 'package:web_site/comp/stats.dart';
import 'package:web_site/comp/talk.dart';
import 'package:web_site/comp/team.dart';
import 'package:web_site/comp/userSay.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
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
                        GetStarted(height: height, width: width),
                        Squares(width: width),
                        CloudHosting(height: height, width: width),
                        Designanddev(height: height, width: width),
                        OurFeatures(height: height, width: width),
                        OurTeam(height: height, width: width),
                        Stats(height: height, width: width),
                        OurRWork(height: height, width: width),
                        Pricing(height: height, width: width),
                        UserSay(height: height, width: width),
                        RedyTalk(height: height, width: width),
                        Sponsors(height: height, width: width),
                        NewsBlog(height: height, width: width),
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
