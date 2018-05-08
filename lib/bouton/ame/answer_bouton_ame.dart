import 'package:flutter/material.dart';
import '../../pages/landing_page.dart';
import '../../histoire/home.1.dart';

// LIEU // --> AME
  String lieu="ame";

//fond
Color couleur= Colors.white;//bouton

// TEXTE DES BOUTONS // 
List<Text> texte=[
  new Text("Mais je vois encore. Mon œil droit va bien", textAlign: TextAlign.center,
  style: ame,),
    new Text("-Charlotte sera obligé d'ouvrir les yeux…", textAlign: TextAlign.center,
  style: ame,),
    new Text("Je me retourne, j'ouvre mon unique oeil", textAlign: TextAlign.center,
  style: ame,)
];

// Style du texte //

// style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
TextStyle ame = new TextStyle( color: lieu=="limbes" ? Colors.grey[350] : Colors.amberAccent, fontSize: 20.0);
TextStyle cauchemar = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle reve = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle hero = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);

// ROUTES // 
List<Widget> chemin=[
  new Intro("nom"),
  new LandingPage(),
];

class AnswerButton extends StatelessWidget {

  int text; //texte //  
  int chemins; // route //

  AnswerButton(this.text, this.chemins);
  

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        padding: new EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
          child: new Center(
            child: new Material(
        borderRadius: new BorderRadius.circular(50.0),
        shadowColor: Colors.black54,
        elevation: 2.0,
        child: new MaterialButton(
          minWidth: 300.0,
          onPressed: () {
          return Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => chemin[chemins]));
          },
          color: couleur,
          padding: new EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
          child: texte[text],
             ),
          ),          
            )
        ),
    );
  }
}

List<AnswerButton> choix=[
 new AnswerButton(0, 0),
 new AnswerButton(1, 1),
 new AnswerButton(2, 0)
];