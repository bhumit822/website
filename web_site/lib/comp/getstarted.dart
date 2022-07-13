import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("images/banner-bg1.jpg"))),
      padding: EdgeInsets.only(
          top: height * 0.1, right: width * 0.05, left: width * 0.05),
      width: width,
      height: height * 1.2,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 735) {
          return Column(
            children: [
              Spacer(),
              TextOne(width: width),
              SizedBox(height: 10),
              TextTwo(width: width),
              SizedBox(height: 10),
              GetStartedButton()
            ],
          );
        } else {
          return Container(
            padding: EdgeInsets.only(bottom: 100),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    TextOne(width: width),
                    SizedBox(
                      height: 20,
                    ),
                    TextTwo(width: width),
                    SizedBox(
                      height: 20,
                    ),
                    GetStartedButton(),
                    Spacer(),
                  ],
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Imagebloc(),
                ))
              ],
            ),
          );
        }
      }),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        hoverElevation: 20,
        hoverColor: Color(0xffc679e3),
        textColor: Colors.white,
        height: 60,
        minWidth: 170,
        color: Color(0xff44ce6f),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        onPressed: () {},
        child: Text(
          "GET STARTED",
          style: GoogleFonts.nunito(fontWeight: FontWeight.w900),
        ));
  }
}

class Imagebloc extends StatelessWidget {
  const Imagebloc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "Images/main.png",
    );
  }
}

class TextTwo extends StatelessWidget {
  const TextTwo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * 0.29,
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida",
          style: GoogleFonts.nunito(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff6084a4),
            letterSpacing: 0.5,
            height: 1.4,
          ),
          maxLines: 4,
        ));
  }
}

class TextOne extends StatelessWidget {
  const TextOne({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.35,
      child: Text(
        "Secure IT Solutions for a more secure environment",
        style: GoogleFonts.nunito(
            fontSize: 45,
            fontWeight: FontWeight.w700,
            color: Color(0xff0e314c),
            height: 1,
            letterSpacing: 1),
        maxLines: 3,
      ),
    );
  }
}
