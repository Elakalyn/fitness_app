import 'package:flutter/material.dart';

import '../../Modules/Settings/settings.dart';

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

Future<void> navigateToAndFinish(context, widget) async =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (route) => false,
    );

Future<void> navigateTo(context, widget) async => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

class settingsIcon extends StatelessWidget {
  const settingsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        navigateTo(context, SettingsScreen());
      },
    );
  }
}
