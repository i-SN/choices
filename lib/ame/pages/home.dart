import 'package:flutter/material.dart';
import '../../pages/question_page.dart';
import '../../utils/bar.dart';
import '../../text/text.dart';

    ///------------------///
    //// ---- AME ---- ////7
    ///------------------///
    ///_____Acceuil______///



// TEXT //
List<Ligne> dialogue = [
  histoire[0],
  histoire[1],
  histoire[2],
  histoire[3],
];


// nouvelle page :
class AmePage extends StatefulWidget {

  final String nom; // nom du personnage

AmePage(this.nom);

// construction de la classe : //
  @override 
  AmePageState createState() => new AmePageState(this.nom);
}

class AmePageState extends State<AmePage> {

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
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new Bouton()), (Route route) => route == null);
      ligne=ligne+dialogue[pressed].ligne;
      }else{
        ligne=ligne+dialogue[pressed].ligne;
      };
  }); 
}



// Création de la page : //
AmePageState(this.nom);
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Container(
      // BACKGROUND //
       decoration: new BoxDecoration(image: new DecorationImage(fit: BoxFit.fitHeight ,image: new AssetImage("assets/background.jpg"),)),

      // --  ---- -- // 
      // --  CORE -- // 
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

