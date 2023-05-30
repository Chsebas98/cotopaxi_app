import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final dynamic title;
  final dynamic color;
  final dynamic weight;
  final dynamic align;

  const TitleText({
    super.key,
    this.title,
    this.color,
    this.weight,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontFamily: 'Poppins',
        fontSize: 28.9,
      ),
    );
  }
}
