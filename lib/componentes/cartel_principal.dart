import 'package:clone_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';
import 'nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://as.com/betech/imagenes/2018/10/01/portada/1538389830_946942_1538391215_noticia_normal.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(child: NavBarSuperior())
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(
          width: 8.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8.0,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(
          width: 8.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8.0,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'Ficción',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        SizedBox(
          width: 8.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 8.0,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'Comedia',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.check, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Mi lista',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                )
              ],
            ),
            FlatButton.icon(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.play_arrow, color: Colors.black),
              label: Text('Reproducir'),
            ),
            Column(
              children: <Widget>[
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Información',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                )
              ],
            ),
          ],
        ));
  }
}
