import 'package:cotopaxi_app/atoms/atoms.dart';
import 'package:cotopaxi_app/ui/input_decoration.dart';
import 'package:cotopaxi_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            SizedBox(
                child: Container(
              width: 278, // Ancho del rectángulo
              height: 9,
              // Alto del rectángulo
              decoration: const BoxDecoration(
                color: Color.fromRGBO(
                    160, 182, 182, 0.7), // Color de fondo del rectángulo
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(
                        10)), // Radio de curvatura de los bordes
              ),
            )),
            CardContainer(
              child: Column(
                children: const [
                  Text(
                    "Bienvenido",
                    style: AppTheme.loginTitle2Style,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Ingresa tus datos para continuar",
                    style: AppTheme.loginSubtitle,
                  ),
                  _LoginForm(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: "usuario@gmail.com",
                labelText: "Correo Electrónico",
                prefix: Icons.alternate_email),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: "",
                labelText: "Contraseña",
                prefix: Icons.lock_outline),
          ),
          const SizedBox(
            height: 30,
          ),
          const StartButton(
            title: "Iniciar Sesión",
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "¿Tienes una cuenta?",
                  style: AppTheme.textColorStyle,
                ),
                Text("Regístrate aquí", style: AppTheme.linkTextStyle),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, "register");
            },
          ),
          const SizedBox(
            height: 70,
          ),
          const Divider(
            color: AppTheme.lineColor, // Cambia el color de la línea
            thickness: 1.0, // Cambia el grosor de la línea
            indent: 10.0, // Ajusta la sangría izquierda de la línea
            endIndent: 10.0, // Ajusta la sangría derecha de la línea
          ),
          const SizedBox(
            height: 30,
          ),
          /* Icono GOOGLE */
          const GoogleButton()
        ],
      )),
    );
  }
}
