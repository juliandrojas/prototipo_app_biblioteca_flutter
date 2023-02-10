import 'package:flutter/material.dart';
//Importamos todos los módulos
import 'package:prototipo_app_biblioteca_flutter/src/ui/pages/API/SearchBook.dart';
import 'package:prototipo_app_biblioteca_flutter/src/ui/pages/API/ReturnBook.dart';
import 'package:prototipo_app_biblioteca_flutter/src/ui/pages/API/Profile.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Variable para cambiar de página
  int _paginaActual = 0;
  //Lista de Widgets: FORMA FACIL DE HACERLO SI SE TIENEN MAS DE UN ELEMENTO
  List<Widget> _paginas = [SearchBook(), ReturnBook(), Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitamos logo de DEBUG
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        //Hacemos una revisión para saber en qué página estamos
        //Si la página actual es 0, que imprima el método PaginaHome
        //Si no, que imprima el método PaginaUsers
        //body: _paginaActual == 0 ? PaginaHome() : PaginaUsers(),
        body: _paginas[_paginaActual],
        //Configuramos los botones con la propiedad bottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          //Propiedad onTap para saber a que elemento se le ha hecho tap
          onTap: (index) {
            setState(() {
              //Cambiamos el valor de la variable _paginaActual
              _paginaActual = index;
            });
          },
          //Propiedad currentIndex especifica el elemento en un array ()
          currentIndex: _paginaActual,
          //Array de elementos (Páginas a mostrar)
          items: [
            //Recibe el widget icon
            //Icons.nombre es el nombre del icono
            //Dos propiedades: icon y label
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(197, 217, 50, 1),
                ),
                label: "Buscar Libro"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.safety_check_outlined,
                  color: Color.fromRGBO(197, 217, 50, 1),
                ),
                label: "Devolver Libro"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2,
                  color: Color.fromRGBO(197, 217, 50, 1),
                ),
                label: "Perfil"),
          ],
        ),
      ),
    );
  }
}
