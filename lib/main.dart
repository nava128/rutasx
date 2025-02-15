import 'package:flutter/material.dart';
import 'package:navigator/pagina2.dart';
import 'package:navigator/pagina3.dart';

void main() => runApp(const RutaNavegacion());

class RutaNavegacion extends StatelessWidget {
  const RutaNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PaginaInicio(),
      routes: <String, WidgetBuilder>{
        // ignore: prefer_const_constructors
        '/pagina2': (BuildContext context) => Pagina2(
              name: '',
            ),
        '/pagina3': (BuildContext context) => const Pagina3(),
      }, // las rutas
    );
  } //buil widgets
} // clase ruta navegacion

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina Inicio Bienvenido'),
        elevation: 1.0,
      ),
      body: const CuerpoPaginaInicio(),
    );
  }
} // clase pagina inicio

class CuerpoPaginaInicio extends StatefulWidget {
  const CuerpoPaginaInicio({super.key});

  @override
  State<CuerpoPaginaInicio> createState() => _CuerpoPaginaInicioState();
}

class _CuerpoPaginaInicioState extends State<CuerpoPaginaInicio> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.freepik.com/free-vector/designer-s-office-flat-illustration_23-2147492101.jpg'),
                  radius: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 78.0),
                  child: SizedBox(
                    width: 300.0,
                    child: TextField(
                      onChanged: (String text) => setState(
                        () {
                          name = text;
                        },
                      ),
                      decoration: const InputDecoration(
                          hintText: 'Ingrese su nombre',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 78.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Pagina2(
                                    name: name,
                                  )));
                    },
                    icon: const Icon(Icons.arrow_forward),
                    iconSize: 60.0,
                    color: Colors.pink[300],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
