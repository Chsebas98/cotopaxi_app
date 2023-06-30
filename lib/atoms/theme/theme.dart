import 'package:flutter/material.dart';

class AppTheme {
  //Definición de tema de la Aplicación
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey[300],
  );
  //Definición de Colores
  static const Color whiteColor = Colors.grey;
  static const Color greenColor = Color.fromRGBO(65, 109, 108, 1);
  static const Color _textColor = Colors.black54;
  static const Color lineColor = Colors.black12;
  static const Color _googleTextColor = Colors.black;
  static final Color _linkColor = Colors.blue.withOpacity(0.7);

  //Definición de estilos
  //LOGIN
  static const TextStyle loginTitleStyle =
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: greenColor);
  static const TextStyle loginTitle2Style =
      TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: greenColor);
  static const TextStyle loginSubtitle =
      TextStyle(fontSize: 16, color: _textColor);
  static TextStyle linkTextStyle = TextStyle(
    color: _linkColor,
  );
  static const TextStyle googleTextStyle =
      TextStyle(color: _googleTextColor, fontSize: 18);

  //GENERALES
  static const TextStyle textColorStyle = TextStyle(
    color: _textColor,
  );
  static const TextStyle buttonTextColor =
      TextStyle(color: whiteColor, fontSize: 16);
  /* static const TextStyle greenColor = TextStyle(
    color: _greenColor,
  ); */
  static const TextStyle whiteColorStyle = TextStyle(
    color: whiteColor,
  );
}
