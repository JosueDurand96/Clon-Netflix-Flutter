import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/imgs/netflix.jpg',
          width: 25.0,
        ),
        Text(
          "Programas",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          "Peliculas",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          "Mi lista",
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        )
      ],
    );
  }
}
