import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Squares extends StatefulWidget {
  const Squares({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  State<Squares> createState() => _SquaresState();
}

class _SquaresState extends State<Squares> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return Container(
          child: Text("less than desktop"),
        );
      } else {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 30, bottom: 70),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 20,
            runSpacing: 20,
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
            // direction:
            //     constraints.maxWidth < 1000 ? Axis.vertical : Axis.horizontal,
            children: [
              Square(),
              Square(),
              Square(),
              Square(),
            ],
          ),
        );
      }
    });
  }
}

class Square extends StatelessWidget {
  const Square({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.green,
      padding: EdgeInsets.all(25),
      borderType: BorderType.RRect,
      radius: Radius.circular(10),
      child: Container(
        child: Wrap(
          direction: Axis.vertical,
          children: [
            CircleAvatar(
              child: Icon(Icons.storage),
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
                child: Text(
              "Zero Configuration",
              style:
                  GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w700),
            )),
            SizedBox(
              height: 20,
            ),
            Text(
                "Lorem ipsum dolor sit amet elit,\nadipiscing, sed do eiusmod \ntempor incididunt ut labore dolore\nmagna.",
                style: GoogleFonts.nunito(letterSpacing: 0.8))
          ],
        ),
      ),
    );
  }
}
