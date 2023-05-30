import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  final String title;
  // final Icon icon;
  final bool SelectState;
  const MyMenu({
    super.key,
    required this.title,
    //required this.icon,
    required this.SelectState,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.amber,
      ),
      //  child: const Icon(),
    );
  }
}
