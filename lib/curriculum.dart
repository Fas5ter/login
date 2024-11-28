import 'package:flutter/material.dart';
import 'bienvenida.dart';
import 'curriculum.dart';
import 'perfil.dart';
import 'inicio.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({super.key});

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
            child: Text(
              "Mi CV Personal",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Nombre: Nydia Naomi Olmos Romero",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Experiencia: 5 años en desarrollo de software",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Educación: Ingeniero(a) en Computación Inteligente",
              style: TextStyle(fontSize: 18),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Hobbie: Leer libros de ciencia ficción",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image(image: AssetImage("img/cv.jpg")),
            // child: Image.network(
            //   // 'https://example.com/mi_foto.jpg',
            //   'https://humanidades.com/wp-content/uploads/2017/03/tortuga-marina-e1565806538139.jpg',
            //   height: 200,
            // ),
          ),
        ],
      ),
    );
  }
}
