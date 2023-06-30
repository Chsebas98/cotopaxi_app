import 'package:cotopaxi_app/atoms/atoms.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: AppTheme.greenColor,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          child: Text(
            title,
            style: AppTheme.buttonTextColor,
          ),
        ),
        onPressed: () {});
  }
}
