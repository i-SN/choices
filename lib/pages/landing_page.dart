import 'package:flutter/material.dart';
import './login_page.dart';
import '../utils/drawer.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.amberAccent,
      child:
      new Container(
      // decoration: new BoxDecoration(image: 
      // new DecorationImage(fit: BoxFit.fitHeight ,image: new AssetImage("assets/images/background.jpg"),)),
      child:
      new InkWell(
        splashColor: Colors.grey[500],
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Loginscreen())),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Musing", style: new TextStyle(fontFamily:'Hoodson' , color: Colors.white, fontSize: 100.0),),
            new Text("' Tap to start ! '", style: new TextStyle(letterSpacing: 2.0, color: Colors.white, fontSize: 18.0),),
            new Padding(padding: new EdgeInsets.only(bottom: 250.0))
          ],
        ),
      ),
    ),
    );
  }
}