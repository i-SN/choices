import 'package:flutter/material.dart';
import 'dart:math';
import 'text_homme.dart'; // texte entier
import 'text_femme.dart'; // texte entier



// Association texte + nb ligne
class Texte { 

    TextSpan texte; //texte //  
    int ligne; // ligne //

    Texte(this.texte, this.ligne);
    }

List<Texte> dialogue =[]; // liste de texte

class TexteConstructor{
  List<int> numero;
  bool sexe;
  bool femme;
  String n;
  String nom;
  String lieu;
  TextSpan contenu;
  List<int> tabPositions;
  int lignes;

  TexteConstructor(this.numero, this.n, this.femme){
    sexe=femme;
    nom = n;
    tabPositions = numero;
    String chaine = "";
    int lignes;
    String sautdeligne = "\n";
    Texte paragraphe;
    
    // Style du texte //
    TextStyle style;

    TextStyle classic = new TextStyle( color:Colors.white, fontSize: 20.0);
    TextStyle charlotte = new TextStyle( color: Colors.white, fontSize: 20.0, letterSpacing: 1.5, fontWeight:FontWeight.w600);
    TextStyle reve = new TextStyle( color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0);
    TextStyle hero = new TextStyle( color: Colors.white, letterSpacing: 1.85, fontSize: 20.0);

    print(sexe);
    if(sexe==true){

        for(int i=0; i<tabPositions.length;i++){
          int rang=tabPositions[i]; // numéro de la ligne       
          // TEXTE constructor
            if(rang + 1 == 5 || rang + 1 == 51 || rang + 1 ==94 || rang == 97 || rang == 131 || rang ==142 || rang ==147 || rang ==168 || rang ==179 || rang ==184 || rang ==201 || rang ==215 || rang ==226 || rang ==231 ||rang + 1 ==274 || rang ==279 || rang ==284 ){
              chaine=textefemme[rang] + nom + textefemme[rang+1];
              i++;
            }else{
              chaine=textefemme[rang];
            }
          // LIGNE constructor
          lignes =(chaine.length/30).floor() +1;
          if(chaine.substring(0,1)==sautdeligne){
            lignes=lignes+1;
          }
          // Association
          contenu = new TextSpan(text:chaine, 
          style:classic,);
          paragraphe = new Texte(contenu, lignes); 
          dialogue.add(paragraphe); // ajout liste
        }

    }else{

      for(int i=0; i<tabPositions.length;i++){
      int rang=tabPositions[i]; // numéro de la ligne
      // TEXTE constructor
        if(rang + 1 == 5 || rang + 1 == 51 || rang + 1 ==94 || rang == 97 || rang == 131 || rang ==142 || rang ==147 || rang ==168 || rang ==179 || rang ==184 || rang ==201 || rang ==215 || rang ==226 || rang ==231 ||rang + 1 ==274 || rang ==279 || rang ==284 ){
          chaine=textehomme[rang] + nom + textehomme[rang+1];
          i++;
        }else{
          chaine=textehomme[rang];
        }
      // LIGNE constructor
      lignes =(chaine.length/30).floor() +1;
      if(chaine.substring(0,1)==sautdeligne){
        lignes=lignes+1;
      }

          // Association
          contenu = new TextSpan(text:chaine, 
          style:classic,);
          paragraphe = new Texte(contenu, lignes); 
          dialogue.add(paragraphe); // ajout liste
        }

       }
    }

  }