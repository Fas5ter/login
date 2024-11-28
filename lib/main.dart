import 'package:flutter/material.dart';
import 'bienvenida.dart';
import 'curriculum.dart';
import 'perfil.dart';
import 'inicio.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/login": (context) => const Login(),
      "/bienvenida": (context) => const Bienvenida(),
      "/perfil": (context) => const Perfil(),
      "/cv": (context) => const Curriculum(),
    },
    initialRoute: "/login",
  ));
}

