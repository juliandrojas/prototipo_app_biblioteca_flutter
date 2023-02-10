import 'package:flutter/material.dart';

class SearchBook extends StatefulWidget {
  const SearchBook({super.key});

  @override
  State<SearchBook> createState() => _SearchBookState();
}

class _SearchBookState extends State<SearchBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        backgroundColor: Color.fromRGBO(197, 217, 50, 1),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Buscar Libros",
            style: TextStyle(fontSize: 50),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
