import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_rectangular.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:flutter/material.dart';

class InicioPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            CartelPrincipal(),
            this.listaHorizontal('Avances', ItemRedondeado(), 10),
            SizedBox(height: 10.0,),
            this.listaHorizontal('Proximos estrenos', ItemRectangular(), 9),
            SizedBox(height: 10.0,),
            this.listaHorizontal('Tendencias', ItemRectangular(), 9),
            SizedBox(height: 10.0,),
            this.listaHorizontal('Mis favoritos', ItemRectangular(), 9),
            SizedBox(height: 20.0,),
          ],
        ),
        bottomNavigationBar: this.navInferior(),
        ));
  }

  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio', style: TextStyle(fontSize: 12.0),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar', style: TextStyle(fontSize: 12.0),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text('Proximamente', style: TextStyle(fontSize: 12.0),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text('Descargas', style: TextStyle(fontSize: 12.0),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('Mas', style: TextStyle(fontSize: 12.0),)
        ),
      ],
    );
  }

  Widget listaHorizontal(String _titulo, Widget _item, int _cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Text(
            _titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _cantidad,
            itemBuilder: (context, index) {
              return _item;
            },
          ),
        ),
      ],
    );
  }
}
