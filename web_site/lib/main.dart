import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:web_site/pages/contact.dart';

import 'package:web_site/pages/home.dart';
import 'package:web_site/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
    );
  }
}
