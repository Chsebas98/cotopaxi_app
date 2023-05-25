import 'package:cotopaxi_app/ui/input_decoration.dart';
import 'package:cotopaxi_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                children: [
                  Text(
                    "Regístrate",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        color: const Color.fromRGBO(65, 109, 108, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Text(
                    "Completa los siguientes campos",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const _LoginForm(),
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
            height: 10,
          ),
          TextFormField(
            autocorrect: true,
            keyboardType: TextInputType.text,
            decoration: InputDecorations.authInputDecoration(
                hintText: "",
                labelText: "Nombre de Usuario",
                prefix: Icons.person),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            autocorrect: true,
            keyboardType: TextInputType.text,
            decoration: InputDecorations.authInputDecoration(
                hintText: "", labelText: "Ciudad", prefix: Icons.location_on),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecorations.authInputDecoration(
                hintText: "",
                labelText: "Contraseña",
                prefix: Icons.lock_outline),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecorations.authInputDecoration(
                hintText: "",
                labelText: "Confirmar Contraseña",
                prefix: Icons.lock_outline),
          ),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: const Color.fromRGBO(65, 109, 108, 1),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  "Registrar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
