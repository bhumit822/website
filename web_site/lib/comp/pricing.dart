import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class Pricing extends StatelessWidget {
  Pricing({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    List<Widget> pbox = [PriceBox(), PriceBox(), PriceBox()];
    return Container(
        // height: height * 0.85,
        width: width,
        child: LayoutBuilder(builder: (context, constraits) {
          if (constraits.maxWidth < 1000) {
            return Container();
          } else {
            return Container(
                color: Color(0xfff9f6f6),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: 80),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: 700, minWidth: 400),
                        child: Text("Pricing Plans",
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
                        height: 30,
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // spacing: 30,
                            // alignment: WrapAlignment.spaceBetween,
                            // direction: Axis.horizontal,
                            children: [PriceBox(), PriceBox(), PriceBox()]),
                      )
                    ]));
          }
        }));
  }
}

class PriceBox extends StatefulWidget {
  const PriceBox({Key? key}) : super(key: key);

  @override
  _PriceBoxState createState() => _PriceBoxState();
}

class _PriceBoxState extends State<PriceBox> {
  bool hver = false;
  final colt = [Colors.greenAccent, Color(0xff20c997)];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Hover(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  spreadRadius: -10,
                  color: Color(0xff44ce6f).withOpacity(0.3),
                  blurRadius: hver ? 40 : 20)
            ]),
        width: width / 3.7,
        child: InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              hver = value;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 300),
                  // color: hver ? Color(0xff20c997) : Colors.white,
                  decoration: BoxDecoration(
                    // color: hver ? Color(0xff20c997) : Colors.white,
                    gradient: RadialGradient(
                      radius: 5,
                      center: Alignment.topLeft,
                      // focal: Alignment.,
                      // focalRadius: 0.0,
                      stops: [-0.5, 1],
                      colors: hver ? colt : [Colors.white, Colors.white],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  height: 80,
                  alignment: Alignment.center,
                  child: Text("BASIC PLAN",
                      style: GoogleFonts.nunito(
                          fontSize: 22,
                          color: hver ? Colors.white : Color(0xff0e314c)))),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Text("15.00/mo",
                  style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff44ce6f))),
              SizedBox(
                height: 20,
              ),
              Text("5 GB Bandwidth",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("Highest Speed",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("1 GB Storage",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("Unlimited Website",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("Unlimited Users",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("24x7 Great Support",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("Data Security and Backups",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(
                height: 10,
              ),
              Text("Monthly Reports and Analytics",
                  style: GoogleFonts.nunito(
                      fontSize: 15, color: Color(0xff6084a4))),
              SizedBox(height: 40),
              SelectPlan(),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}

class SelectPlan extends StatelessWidget {
  const SelectPlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        hoverElevation: 20,
        hoverColor: Color(0xff44ce6f),
        color: Color(0xffc679e3),
        height: 50,
        minWidth: 160,
        onPressed: () {},
        child: Text(
          "SELECT PLAN",
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
