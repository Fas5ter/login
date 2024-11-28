import 'package:flutter/material.dart';

class Bienvenida extends StatefulWidget {
  // const Bienvenida({super.key});
  // Recibimos el nombre del usuario del primer activity
  // final String name;
  // const Bienvenida(this.name, {super.key});

  const Bienvenida({super.key});

  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Construye un menu contextual o de hamburguesa
        drawer: Drawer(
          child: ListView(
            // espacio
            padding: const EdgeInsets.all(0),
            // Agregamos varios widgets
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Nydia Naomi Olmos Romero"),
                accountEmail: const Text("nolmos@ucol.mx"),
                currentAccountPicture: Image.asset("img/UDC.png"),
              ),

              // Opciones del menu contextual
              ListTile(
                title: const Text("Perfil"),
                leading: const Icon(Icons.person),
                // Listener de los eventos
                onTap: () {
                  // Oculta el menu contextual retirando la pantalla del tope
                  Navigator.of(context).pop();
                  // Salataria al formulario especificado
                  Navigator.pushNamed(context, "/perfil");
                },
              ),
              // Segunda opción
              ListTile(
                title: const Text("CV"),
                // Icono
                leading: const Icon(Icons.photo_album),
                // Listener
                onTap: () {
                  // Ocultamos el menu contextual
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/cv");
                },
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 215, 235, 245),
        appBar: AppBar(
          title: const Text("Bienvenida"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Bienvenid@ Nydia',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "rbold",
                ),
              ),
            ),
            SizedBox(
              width: 80, // ancho deseado
              height: 40, // alto deseado // alto deseado
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Color de fondo ámbar
                  elevation: 5, // button elevation
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Esquinas cuadradas
                  ),
                ),
                label: const Text(
                  "Regresar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Regresamos a la página anterior
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.add_to_home_screen),
              ),
            ),
          ],
        ));
  }
}
