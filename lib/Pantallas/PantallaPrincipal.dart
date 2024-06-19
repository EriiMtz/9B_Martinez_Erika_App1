import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pantallas/tyc.dart';
import 'package:flutter_application_2/datos/datos.dart';
import 'package:flutter_application_2/pantallas/Buscar.dart';
import 'package:flutter_application_2/pantallas/Perfil.dart';
import 'package:flutter_application_2/pantallas/lista.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _paginaActual = 0;
  final List<Widget> _paginas = [listaFeed(), paginaBuscar(), perfil()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Red Social',
          style: TextStyle(color: Colors.black38),
        ),
      ),

      body: Column(children: [
        Expanded(child: _paginas[_paginaActual]),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tyc()));
            },
            child: const Text("Terminos y Condiciones"))
      ]),
      //listaFeed(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaActual,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.percent_outlined), label: "Perfil")
        ],
      ),
      backgroundColor: const Color.fromARGB(47, 18, 165, 181),
    );
  }
}

class TermsAndConditions {}
