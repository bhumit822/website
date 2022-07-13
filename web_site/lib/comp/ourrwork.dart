import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_site/animation/animatedhver.dart';

class OurRWork extends StatelessWidget {
  OurRWork({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  final List<Widget> lst = [
    Work(
      img: "images/works1.jpg",
      title: "Incredible infrastructure",
    ),
    Work(
      img: "images/works2.jpg",
      title: "Email Notifications",
    ),
    Work(
      img: "images/works3.jpg",
      title: "Best Analytics Audits",
    ),
    Work(
      img: "images/works4.jpg",
      title: "Simple Dashboard",
    ),
    Work(
      img: "images/works5.jpg",
      title: "Information Retrieval",
    ),
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
                color: Color(0xfff7fafd),
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 700, minWidth: 400),
                      child: Text("Our Recent Works",
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
                    // Container(
                    //     child: CarouselSlider.builder(
                    //   itemCount: (lst.length / 3).round(),
                    //   options: CarouselOptions(
                    //     aspectRatio: 2.0,
                    //     enlargeCenterPage: false,
                    //     viewportFraction: 1,
                    //   ),
                    //   itemBuilder: (context, ind, rind) {
                    //     final int first = ind * 3;
                    //     final int second =
                    //         ind < lst.length.round() - 1 ? first + 1 : 0;
                    //     final int third =
                    //         ind < lst.length.round() - 2 ? second + 1 : 0;
                    //     return Row(
                    //       children: [first, second, third != 0 ? third : 1]
                    //           .map((idx) {
                    //         return Expanded(
                    //           flex: 1,
                    //           child: Container(
                    //               margin: EdgeInsets.symmetric(horizontal: 10),
                    //               child: lst[idx]),
                    //         );
                    //       }).toList(),
                    //     );
                    //   },
                    // ))

                    GFItemsCarousel(
                        itemHeight: 400,
                        rowCount: 3,
                        children: lst.map((e) {
                          return e;
                        }).toList())
                  ],
                ));
          }
        }));
  }
}

class Work extends StatefulWidget {
  Work({Key? key, required this.img, required this.title}) : super(key: key);
  final img;
  final title;

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  bool hwr = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          hwr = value;
          print(hwr);
        });
      },
      child: Container(
          decoration: BoxDecoration(
              color: hwr ? Colors.red : Colors.transparent,
              image: DecorationImage(
                  image: AssetImage(
                    widget.img,
                  ),
                  fit: BoxFit.cover)),
          child: hwr
              ? Container(
                  color: Colors.greenAccent.withOpacity(0.8),
                  child: Stack(children: [
                    Positioned(
                      top: 10,
                      right: 14,
                      child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.settings_outlined,
                                  size: 25, color: Colors.black))),
                    ),
                    Positioned(
                        bottom: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: GoogleFonts.nunito(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              FittedBox(
                                  child: Text(
                                "Lorem ipsum dolor amet, adipiscing, sed do eiusmod\ntempor incididunt ut labore dolore magna aliqua.",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                  height: 1.6,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ))
                            ],
                          ),
                        ))
                  ]),
                )
              : null),
    );
  }
}
