import 'package:flutter/material.dart';
import './answer_bouton_ame.dart';

// LIEU // --> AME


// CLASSE BOUTON //

class Bouton extends StatelessWidget {

int bouton; // numero du choix 1
int bouton1; // numero du choix 2
int bouton2; // numero du choix 3

Bouton(this.bouton, this.bouton1, this.bouton2);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.deepPurpleAccent, // background
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ 
          new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
            choix[bouton], // appel des choix
            choix[bouton1],
            choix[bouton2],
            new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
        ]
      ),
    );
  }
}



  // LISTE DES BOUTONS POSSIBLE //
  // ------> A COMPLETER <------ //

List<Bouton> boutonchoix =[
  new Bouton(0, 0, 0),
];