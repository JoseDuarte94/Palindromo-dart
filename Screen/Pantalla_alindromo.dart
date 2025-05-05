import 'package:flutter/material.dart';

class PantallaAlindromo extends StatelessWidget {
  const PantallaAlindromo({super.key});

  @override
  Widget build(BuildContext context) {
    String textoTextfield = "";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ingrese una palabra para verificar si es un palíndromo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const Padding(padding: EdgeInsets.all(50.0)),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  labelText: 'Ingrese una palabra',
                ),
                cursorColor: Colors.blue,
                cursorRadius: const Radius.circular(8),
                cursorWidth: 8,
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (value) {
                  textoTextfield = value;
                  textoTextfield = textoTextfield.toLowerCase();
                  if (textoTextfield ==
                      textoTextfield.split('').reversed.join()) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Palíndromo'),
                        content: Text(
                            'La palabra "$textoTextfield" es un palíndromo.'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Aceptar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Palíndromo'),
                        content: Text(
                            'La palabra "$textoTextfield" no es un palíndromo.'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Aceptar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
