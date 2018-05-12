import 'package:flutter/material.dart';
import '../../pages/landing_page.dart';
import '../../pages/login_page.dart';
import '../../utils/Joueur.dart';
import '../../histoire/ame/choix 0.dart';
import '../../histoire/ame/choix 1.dart';
import '../../histoire/ame/choix 2.dart';
import '../../histoire/ame/choix 3.dart';
import '../../histoire/ame/choix 4.dart';
import '../../histoire/ame/choix 5.dart';
import '../../histoire/ame/choix 6.dart';
import '../../histoire/ame/choix 7.dart';
import '../../histoire/ame/choix 8.dart';
import '../../histoire/ame/choix 9.dart';
import '../../histoire/ame/home.10.dart';
import '../../histoire/ame/home.11.dart';
import '../../histoire/ame/home.12.dart';
import '../../histoire/ame/home.13.dart';
import '../../histoire/ame/home.14.dart';
import '../../histoire/ame/home.15.dart';
import '../../histoire/ame/home.16.dart';
import '../../histoire/ame/home.17.dart';
import '../../histoire/ame/home.18.dart';

// LIEU // --> AME
  String lieu="ame";

//fond
Color couleur= Colors.white;//bouton

// TEXTE DES BOUTONS // 
List<Text> texte=[
    new Text("intro", style: ame),
    new Text("Bien sur ma Cha !", textAlign: TextAlign.center,
  style: ame,),
    new Text("Désolée Charlotte, une autre fois", textAlign: TextAlign.center,
  style: ame,),
    new Text("Je me retourne, j'ouvre mon unique oeil", textAlign: TextAlign.center,
  style: ame,),
    new Text("L'eau coule. Mes yeux sont fermés", textAlign: TextAlign.center,
  style: ame,),
    new Text("Mes yeux, l'immobilité du gauche", textAlign: TextAlign.center,
  style: ame,),
    new Text("Première étape, déjeuner", textAlign: TextAlign.center,
  style: ame,),
    new Text("Réveille toi s'il te plait !", textAlign: TextAlign.center,
  style: ame,),
    new Text(" Le plafond, encore et encore le plafond", textAlign: TextAlign.center,
  style: ame,),
    new Text("...avant pleine de vie ...", textAlign: TextAlign.center,
  style: ame,),
    new Text("Mais je vois encore. Mon œil droit va bien", textAlign: TextAlign.center,
  style: ame,),
    new Text("Quelle idée de repenser à cela..", textAlign: TextAlign.center,
  style: ame,),
    new Text("Je ferme la porte de la maison", textAlign: TextAlign.center,
  style: ame,),
    new Text("Peut être suis-je aussi enfin prêt", textAlign: TextAlign.center,
  style: ame,),
    new Text("Charlotte... Charlotte... CHARLOTTE !!!", textAlign: TextAlign.center,
  style: ame,),
    new Text("Charlotte sera obligé d'ouvrir les yeux…", textAlign: TextAlign.center,
  style: ame,),
    new Text("L'eau coule. Mes yeux sont fermés", textAlign: TextAlign.center,
  style: ame,),
    new Text("Quel est ton visage ? Je ne te vois plus !", textAlign: TextAlign.center,
  style: ame,),
    new Text("Encore dans mon rêve. Il est encore là.", textAlign: TextAlign.center,
  style: ame,),
];

// Style du texte //

// style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
TextStyle ame = new TextStyle( color: lieu=="limbes" ? Colors.grey[350] : Colors.amberAccent, fontSize: 20.0);
TextStyle cauchemar = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle reve = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle hero = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);

// ROUTES // 
List<Widget> chemin=[
  new Intropage(joueur.name,joueur.femme),
  new Choix1(joueur.name,joueur.femme),
  new Choix2(joueur.name,joueur.femme),
  new Choix3(joueur.name,joueur.femme),
  new Choix4(joueur.name,joueur.femme),
  new Choix5(joueur.name,joueur.femme),
  new Choix6(joueur.name,joueur.femme),
  new Choix7(joueur.name,joueur.femme),
  new Choix8(joueur.name,joueur.femme),
  new Choix9(joueur.name,joueur.femme),
  new Choix10(joueur.name,joueur.femme),
  new Choix11(joueur.name,joueur.femme),
  new Choix12(joueur.name,joueur.femme),
  new Choix13(joueur.name,joueur.femme),
  new Choix14(joueur.name,joueur.femme),
  new Choix15(joueur.name,joueur.femme),
  new Choix16(joueur.name,joueur.femme),
  new Choix17(joueur.name,joueur.femme),
  // new Choix18(joueur.name,joueur.femme),
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
          print(chemin[chemins]);
          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => chemin[chemins]));
          print(chemin[chemins]);
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
 new AnswerButton(2, 2),
  new AnswerButton(3, 3),
 new AnswerButton(4, 4),
 new AnswerButton(5, 5),
  new AnswerButton(6, 6),
 new AnswerButton(7, 7),
 new AnswerButton(8, 8),
  new AnswerButton(9, 9),
 new AnswerButton(10, 10),
  new AnswerButton(11, 11),
 new AnswerButton(12, 12),
 new AnswerButton(13, 13),
 new AnswerButton(14, 14),
 new AnswerButton(15, 15),
 new AnswerButton(16, 16),
 new AnswerButton(17, 17),
 // new AnswerButton(18, 18),
];