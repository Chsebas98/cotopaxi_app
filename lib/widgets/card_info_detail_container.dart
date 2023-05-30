import 'package:flutter/material.dart';

class CardInfoDetailContainer extends StatelessWidget {
  const CardInfoDetailContainer({Key? key, required this.child})
      : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2,
        padding: const EdgeInsets.all(25.0),
        decoration: _crearCard(),
        child: child,
      ),
    );
  }

  BoxDecoration _crearCard() {
    return const BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, -3))
    ]);
  }
}
