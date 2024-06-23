import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> estadoFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          child: Form(
            key: estadoFormulario,
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Correo electrónico"),
                    validator: (value) {
                      if (value == null || !value.contains("@")) {
                        return "El correo no es válido";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Contraseña"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "La contraseña no puede estar vacía";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      if (estadoFormulario.currentState!.validate()) {
                        print("Excelente");
                      } else {
                        print("Error!");
                      }
                    },
                    child: const Text("Validar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Formulario());
}
