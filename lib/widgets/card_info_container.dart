import 'package:flutter/material.dart';

class CardInfoContainer extends StatelessWidget {
  const CardInfoContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - (2 * 25.0),
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          height: 75,
          decoration: _createInfoCard(),
          clipBehavior: Clip.antiAlias, // Añade esta línea
          child: child,
        ),
      ),
    );
  }

  BoxDecoration _createInfoCard() {
    return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          blurRadius: 15,
          offset: Offset(0, 5),
        ),
      ],
    );
  }
}
