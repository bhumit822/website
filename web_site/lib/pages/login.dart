import 'package:flutter/material.dart';
import 'package:web_site/comp/bottom.dart';
import 'package:web_site/comp/header.dart';
import 'package:web_site/comp/loginheader.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                        SignInHead(height: height, width: width),
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
