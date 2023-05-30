import 'package:cotopaxi_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InfoBackground(
      secondChild: _infoCard(context),
      child: Column(
        children: [
          const SizedBox(
            height: 355,
          ),
          Center(
            child: CardInfoContainer(child: _titleCard(context)),
          ),
          /* CardInfoDetailContainer(child: _infoCard(context)) */
        ],
      ),
    ));
  }
}

Widget _titleCard(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Text(
            "Alpaca",
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 70,
          ),
          Column(
            children: const [
              Text(
                "allpaqa",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "origen: Peru",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      )
    ],
  );
}

Widget _infoCard(BuildContext context) {
  return Column(
    children: const [
      Text(
        'Las alpacas pesan entre 45 y 77 kg y su altura de la cruz es de 90 cm, superadas en dimensiones levemente por la vicuña, su ancestro. La estatura de la alpaca es considerablemente menor que aquella de la llama. Comparte con esta última y con el camello el hábito de escupir, utilizado para mostrar agresividad o como método de defensa.',
        style: TextStyle(fontSize: 13.22, color: Colors.black54),
        textAlign: TextAlign.justify,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'No se utilizan como animales de carga, como se ha hecho con las llamas. Las alpacas han sido seleccionadas para la producción de fibra, cuyo diámetro varía de 12 a 28 micrómetros, las cuales son muy utilizadas para confeccionar prendas de excelente calidad.',
        style: TextStyle(fontSize: 13.22, color: Colors.black54),
        textAlign: TextAlign.justify,
      )
    ],
  );
}
