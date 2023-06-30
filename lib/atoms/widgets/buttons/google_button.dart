import 'package:cotopaxi_app/atoms/atoms.dart' show AppTheme;
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      disabledColor: AppTheme.whiteColor,
      elevation: 0,
      color: Colors.grey.shade100,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 90, vertical: 10), // Ajusta el tamaño del padding
        child: Row(
          children: const [
            Image(
              width: 20, // Ajusta el tamaño de la imagen
              height: 20,
              image: NetworkImage(
                  "https://img.freepik.com/iconos-gratis/buscar_318-265146.jpg"),
            ),
            SizedBox(width: 10), // Ajusta el espacio entre la imagen y el texto
            Text("Google",
                style: AppTheme.googleTextStyle), // Ajusta el tamaño del texto
          ],
        ),
      ),
      //TODO:Cambiar por inicio con Google
      onPressed: () {
        Navigator.pushNamed(context, "info_page");
      },
    );
  }
}
