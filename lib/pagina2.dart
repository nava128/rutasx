import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2166083993.
  // final String   name;
  const Pagina2({super.key, required String name});

  get name => null;

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
                      'https://image.freepik.com/free-vector/business-person-cartoon-with-a-light-bulb_1207-283.jpg'),
                  radius: 70.0),
              Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    'Hola $name',
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  )),
              Padding(
                padding: const EdgeInsets.all(58.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        child: const Text('Inicio'),
                        onPressed: () => Navigator.of(context).pop()),
                    ElevatedButton(
                        child: const Text('Pagina 3'),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/pagina3'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Page 2'),
        elevation: 0.0,
      ),
    );
  }
} // clase pagina 2
