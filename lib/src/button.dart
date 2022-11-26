import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "Juan_angel.jpg";
  int index = 0;
  List<String> collections = [
    'Juan_angel.jpg',
    'SanpanchoFC.jpg',
    'Vikingos.jpg',
    'Titanes.jpg',
    'Canaditas.jpg',
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 4 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicación Stateful Widget Imágenes 180527"),
        backgroundColor: Color.fromARGB(255, 21, 0, 214),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 21, 0, 214)),
              ),
              Image.asset(
                '../assets/' + flutterText,
                width: 250,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 21, 0, 214)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
