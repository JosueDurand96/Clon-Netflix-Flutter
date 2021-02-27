import 'package:flutter/material.dart';
import 'package:flutter_app_first/components/carte_principal.dart';
import 'package:flutter_app_first/components/item_img.dart';
import 'package:flutter_app_first/components/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartePrincipal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 6),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Programas sobre viajes', ItemImg(), 10),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Tendencias', ItemImg(), 3),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Mi lista', ItemImg(), 6),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  Widget navInferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.threesixty), label: 'Proximamente'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud_download), label: 'Descargas'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Mas'),
        ]);
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 20.0,
            ),
            Text(
              titulo,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              }),
        )
      ],
    );
  }
}
