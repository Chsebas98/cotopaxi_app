import 'package:flutter/material.dart';

class AppTheme {
  //Definición de tema de la Aplicación
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey[300],
  );
  //Definición de Colores
  static const Color _whiteColor = Colors.grey;
  static const Color greenColor = Color.fromRGBO(65, 109, 108, 1);
  static const Color _textColor = Colors.black54;

  //Definición de estilos
  //LOGIN
  static const TextStyle loginTitleStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: greenColor);
  static const TextStyle loginTitle2Style =
      TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: greenColor);
  static const TextStyle loginSubtitle =
      TextStyle(fontSize: 16, color: _textColor);

  //GENERALES
  static const TextStyle textColor = TextStyle(
    color: _textColor,
  );
  /* static const TextStyle greenColor = TextStyle(
    color: _greenColor,
  ); */
  static const TextStyle whiteColor = TextStyle(
    color: _whiteColor,
  );
}
