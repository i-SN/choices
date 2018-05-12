import 'package:flutter/material.dart';
import '../../utils/bar.dart'; // barre de vie
import '../../TexteConstructor.dart'; // texte
import '../../bouton/ame/bouton_ame.dart'; // bouton

    ///------------------///
    //// ---- AME ---- ////7
    ///------------------///
    ///_____Acceuil______///

String lieu="reve"; // lieu:

int numero=0; // numero de la page choix
List<Texte> dialoguepage=[]; // Liste de Texte
int ligne;


// nouvelle page :
class AmePage extends StatefulWidget {

  List<int> numeroligne=[93,94,95,96,97,98,99,100,101]; // numéro des paragraphe
  final String nom; // nom du personnage
  bool sexe;
AmePage(this.nom, this.sexe){
  dialogue=dialoguepage;
TexteConstructor para =new TexteConstructor(numeroligne, nom, sexe);
  dialoguepage= dialogue;
  ligne=dialoguepage[0].ligne;
}


// construction de la classe : //
  @override 
  State createState() => new AmePageState(this.nom);
}

class AmePageState extends State<AmePage> {

// variables : //

String nom;// nom du personnage

// Création de la page : //
AmePageState(this.nom);


 // nombre de ligne
int pressed=0; //bouton interaction
double taille=250.0; // talle du texte scrollable
ScrollController scrollController= new ScrollController(initialScrollOffset: 50.0); // animation du scroll
 

// BOUTON INTERACTION FONCTION //
void onPressed2() {
  setState((){
  
  scrollController.animateTo((ligne+2)*20+ligne*3.75, duration: new Duration(seconds: 1), curve: Curves.easeInOut);
  print(scrollController);
  pressed++;
  if(pressed == dialoguepage.length) {
      pressed=0; // reset bouton
      lieu="reve";// reset lieu
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => boutonchoix[numero]), (Route route) => route == null);
      ligne=ligne+dialoguepage[pressed].ligne;
      lieu="reve";// reset lieu
      }else{
        ligne=ligne+dialoguepage[pressed].ligne;
      };
      dialoguepage.length-1;
        (pressed>=4){
    lieu="maison";
  }
  }); 
}

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Container(
      // BACKGROUND //
        decoration: new BoxDecoration(
        image: new DecorationImage(
        fit: BoxFit.fitWidth, 
        image: lieu=="reve" ? new AssetImage("assets/images/background/reve.png"): lieu=="maison" ? new AssetImage("assets/images/background/home.png") : new AssetImage("assets/images/background/outside.png") ),),

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
              height: 100.0,
              child: new Icon(Icons.people, size:70.0, color: Colors.white,),
            ),

            // new Text("Bonjour ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
            // new Text(nom.toUpperCase(),  style: new TextStyle(letterSpacing: 2.0, color: Colors.white, fontWeight: FontWeight.w300, fontSize: 50.0),),
            
            // TEXTE SCROLLABLE //
            new Container(
              height: taille,
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
                        dialoguepage[93].texte,
                        dialoguepage[94].texte,
                        dialoguepage[95].texte,
                        dialoguepage[96].texte,
                        dialoguepage[97].texte,
                        dialoguepage[98].texte,
                        dialoguepage[99].texte,
                        dialoguepage[100].texte,
                        dialoguepage[101].texte,
                          ], 
                        )
                        ),
                        ],
                      )
            ),

            // BOUTON //
            new IconButton(
              icon: pressed == dialoguepage.length-1 ? new Icon(Icons.expand_more):new Icon(Icons.swap_vert),
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