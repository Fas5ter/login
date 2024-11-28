import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Perfil"),
      ),
      // Agregar widgets de manera vertical
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Mi Perfil Personal"),
          ),
            Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(text: "Nydia Naomi Olmos Romero"),
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Nombre",
              ),
            ),
            ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(text: "Ingeniero(a) en Computación Inteligente"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Educación",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(text: "5 años en desarrollo de software"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Experiencia",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(text: "Leer libros de ciencia ficción"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Hobbie",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: TextEditingController(text: "*********"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Contraseña",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: ButtonTheme(
              child: ElevatedButton(
                onPressed: () {
                  // Agregar código para guardar los datos
                },
                child: Text("Guardar cambios"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
