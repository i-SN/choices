import 'package:flutter/material.dart';
import '../utils/bar.dart'; // barre de vie
import '../text/text_1.dart'; // texte
import '../bouton/ame/bouton_ame.dart'; // bouton

    ///------------------///
    //// ---- AME ---- ////7
    ///------------------///
    ///_____Acceuil______///


// LIEU // --> AME
String lieu="reve";

Color backgroundcolor= lieu=="reve" ? Colors.grey[350] : Colors.amberAccent ;


// TEXT //
List<Texte> dialogue = [
  new Texte(text[0].texte, text[0].ligne, lieu),
  new Texte(text[1].texte, text[1].ligne, lieu),
  new Texte(text[2].texte, text[2].ligne, lieu),
  new Texte(text[3].texte, text[3].ligne, lieu),
  new Texte(text[4].texte, text[4].ligne, lieu),
  new Texte(text[5].texte, text[5].ligne, lieu),
  new Texte(text[6].texte, text[6].ligne, lieu),
  new Texte(text[7].texte, text[7].ligne, lieu),
  new Texte(text[8].texte, text[8].ligne, lieu),
  new Texte(text[9].texte, text[9].ligne, lieu),
];

int numero=0; // numero de la page choix

// nouvelle page :
class Intro extends StatefulWidget {

  final String nom; // nom du personnage

Intro(this.nom);

// construction de la classe : //
  @override 
  IntroState createState() => new IntroState(this.nom);
}

class IntroState extends State<Intro> {

// variables : //
final String nom;// nom du personnage
int ligne=dialogue[0].ligne; // nombre de ligne
int pressed=0; //bouton interaction
double height=210.0; // talle du texte scrollable
ScrollController scrollController= new ScrollController(initialScrollOffset: 50.0); // animation du scroll
 

// BOUTON INTERACTION FONCTION //
void onPressed2() {
  setState((){
  
  scrollController.animateTo((ligne+2)*20+ligne*3.75, duration: new Duration(seconds: 1), curve: Curves.easeInOut);
  print(scrollController);
  pressed++;
  if(pressed == dialogue.length) {
      pressed=0; // reset bouton
      lieu="reve";// reset lieu
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => boutonchoix[numero]), (Route route) => route == null);
      ligne=ligne+dialogue[pressed].ligne;
      pressed=0; // reset bouton
      lieu="reve";// reset lieu
      }else{
        ligne=ligne+dialogue[pressed].ligne;
      };
  if(pressed>=4){
    lieu="maison";
  }
  }); 
}



// Création de la page : //
IntroState(this.nom);
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Container(
      color: lieu=="reve" ? Colors.grey[350] : Colors.amberAccent,
      // BACKGROUND //
       // decoration: new BoxDecoration(image: new DecorationImage(fit: BoxFit.fitHeight ,image: new AssetImage("assets/images/background.jpg"),)),

      // --  ----- -- // 
      // --  CORPS -- // 
      // --  ---- -- //

        child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          // BARRE DE VIE // 
            new Bar(),

          // PERSONNAGE //
            new Container(
              height: 150.0,
              child: new Icon(Icons.people, size:70.0, color: Colors.white,),
            ),

            // new Text("Bonjour ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
            // new Text(nom.toUpperCase(),  style: new TextStyle(letterSpacing: 2.0, color: Colors.white, fontWeight: FontWeight.w300, fontSize: 50.0),),
            
            // TEXTE SCROLLABLE //
            new Container(
              height: height,
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0), 
              child :
                new ListView( // scroll
                    padding: const EdgeInsets.all(20.0),
                    controller: scrollController,
                    shrinkWrap: true,
                    children: <Widget>[
                      
                        // -- TEXT -- // 
                      new RichText(
                      textAlign: TextAlign.center,
                      maxLines: ligne,
                      overflow: TextOverflow.ellipsis,
                      text:new TextSpan(
                      children: <TextSpan>[
                        dialogue[0].texte,
                        dialogue[1].texte,
                        dialogue[2].texte,
                        dialogue[3].texte,
                        dialogue[4].texte,
                        dialogue[5].texte,
                        dialogue[6].texte,
                        dialogue[7].texte,
                        dialogue[8].texte,
                        dialogue[9].texte,
                          ], 
                        )
                        ),
                        ],
                      )
            ),

            // BOUTON //
            new IconButton(
              icon: pressed == dialogue.length-1 ? new Icon(Icons.expand_more):new Icon(Icons.swap_vert),
              color: Colors.white,
              iconSize: 80.0,
              onPressed: (){onPressed2();} // interaction
            ),
        ]
      ),
      )
    );
  }
}

