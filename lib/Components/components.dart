import 'package:flutter/material.dart';

class styledCard extends StatelessWidget {
  styledCard({
    super.key,
    this.width,
    this.height,
    this.color,
    this.child,
    this.offset = 9.0,
  });

  final width;
  final height;
  final color;
  final child;
  var offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: color,
        border: Border.all(width: 4),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000),
            blurRadius: 0,
            offset: Offset(offset, offset),
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }
}
