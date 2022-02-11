import 'package:flutter/material.dart';
class TextBold extends StatelessWidget {
  final String title;
  final Color colors;
  final double size;
  final double height;
  final bool? isCenter;

  const TextBold(
      {Key? key,
        required this.title,
        required this.colors,
        required this.size,
        required this.height,
        this.isCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCenter != null ? TextAlign.center : null,
      style: TextStyle(
        color: colors,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.normal,
        fontFamily: 'Poppins',
        fontSize: size,
        height: height,
      ),
    );
  }
}