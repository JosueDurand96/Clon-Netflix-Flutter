import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network('https://upload.wikimedia.org/wikipedia/en/9/94/John_Wick_Chapter_3_Parabellum.png',
        width: 100.0,
        fit: BoxFit.cover,),
        SizedBox(width: 10.0,)
      ],
    );
    
  }
}