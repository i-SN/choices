import 'package:flutter/material.dart';
import './answer_bouton_ame.dart';

// LIEU // --> AME

//fond
Color couleurfond= Colors.amberAccent;

// CLASSE BOUTON //

class Bouton extends StatelessWidget {

int bouton1; // numero du choix 1
int bouton2; // numero du choix 2
int bouton3; // numero du choix 3

Bouton(this.bouton1, this.bouton2, {this.bouton3});

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: couleurfond, // background
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: bouton3==null ?
           <Widget>[ 
            new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
            choix[bouton1], // appel des choix
            choix[bouton2],
            new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
        ] : 
        <Widget>[ 
            new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
            choix[bouton1], // appel des choix
            choix[bouton2],
            choix[bouton3],
            new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
        ]
      ),
    );
  }
}


  // LISTE DES BOUTONS POSSIBLE //
  // ------> A COMPLETER <------ //

List<Bouton> boutonchoix =[
  new Bouton(1, 2, bouton3: 3),
  new Bouton(4, 5, bouton3: 6),
  new Bouton(7, 6),
  new Bouton(4, 9),
  new Bouton(10, 11),
  new Bouton(10, 11),
  new Bouton(12, 13),
  new Bouton(14, 15),
  new Bouton(16, 13,bouton3: 3),
  new Bouton(11, 12),
  new Bouton(0,0),
  new Bouton(17, 18),
  new Bouton(0 , 0),
  new Bouton(0, 0),
  new Bouton(0, 0),
  new Bouton(0, 0),
  new Bouton(10, 11),
  new Bouton(0, 0),
  new Bouton(14, 15),
];