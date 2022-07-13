import 'package:flutter/material.dart';

class Hover extends StatefulWidget {
  final Widget child;
  const Hover({Key? key, required this.child}) : super(key: key);

  @override
  _HoverState createState() => _HoverState();
}

class _HoverState extends State<Hover> {
  bool ishverd = false;
  @override
  Widget build(BuildContext context) {
    final hvertransform = Matrix4.identity()..translate(0, -20, 0);
    final transform = ishverd ? hvertransform : Matrix4.identity();
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => isEnterd(true),
        onExit: (event) => isEnterd(false),
        child: AnimatedContainer(
            curve: Curves.easeIn,
            transform: transform,
            duration: Duration(milliseconds: 300),
            child: widget.child));
  }

  void isEnterd(bool ishverd) {
    setState(() {
      this.ishverd = ishverd;
    });
  }
}
