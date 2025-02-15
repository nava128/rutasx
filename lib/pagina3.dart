import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.freepik.com/free-vector/vector-illustration-of-a-mountain-landscape_1441-77.jpg'),
                  radius: 70.0),
              Padding(
                padding: const EdgeInsets.all(58.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                        child: const Text('Inicio'),
                        onPressed: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                '/', (Route<dynamic> route) => false))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Pagina 3'),
        elevation: 0.0,
      ),
    );
  }
}
