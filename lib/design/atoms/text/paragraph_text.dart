import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  final dynamic paragraph;
  final dynamic color;
  final dynamic weight;
  final dynamic align;

  const ParagraphText({
    super.key,
    this.paragraph,
    this.color,
    this.weight,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      paragraph,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontFamily: 'Poppins',
        fontSize: 16.0,
      ),
    );
  }
}
