import 'package:flutter/material.dart';
import 'package:flutter_app_first/components/nav_bar_superior.dart';

class CartePrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        this.cabera(),
        this.infoSerie(),
        this.botonera()
      ],
    );
  }

  Widget cabera() {
    return Stack(
      children: [
        Image.network(
          'https://larepublica.pe/resizer/WFhOYY9Cm9EsN0mrmRJvDkP1bNg=/1250x735/top/smart/cloudfront-us-east-1.images.arcpublishing.com/gruporepublica/5ODN7EQXCFGONFIJWIH7INCETA.jpg',
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
      children: [
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'Telenovela',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'Pulpin',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'De todito xD',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(width: 6.0),
        Text(
          'Chibolos',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        )
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              SizedBox(height: 3.0,),
              Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 10.0),)

            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(height: 3.0,),
              Text('Información', style: TextStyle(color: Colors.white, fontSize: 10.0),)

            ],
          ),
        ],
      ),
    );
  }


}
