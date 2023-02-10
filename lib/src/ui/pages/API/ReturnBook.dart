import 'package:flutter/material.dart';

//Cambiamos el contenido de la tercera página
class ReturnBook extends StatelessWidget {
  const ReturnBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Devolver libros",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
