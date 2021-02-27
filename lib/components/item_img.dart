import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTRhmY_FaONTLLGvmg5aTEeUWc89lgzEGLLg&usqp=CAU',
        width: 100.0,
        fit: BoxFit.cover,),
        SizedBox(width: 10.0,)
      ],
    );
    
  }
}