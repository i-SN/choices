import 'package:flutter/material.dart';
import 'text_femme.dart'; // texte

class TexteConstructor{
  String nom;
  String lieu;
  TextSpan contenu;
  List<int> tabPositions;
  int lignes;

  TexteConstructor(List<int> tableau, String n){
    nom = n;
    tabPositions = tableau;
    String chaine = "";
    lignes = chaine.length%30;


    if(lignes == 5 || lignes==51 || lignes== 94 || lignes==97 || lignes==131 || lignes==142 || lignes==147 || lignes==168 || lignes==179 || lignes==184 || lignes==201 || lignes==215 || lignes==226 || lignes==231 ||lignes== 274 || lignes==279 || lignes==284 ){};

    List<Texte> dialogue =[]; // liste de texte
    

    for(int i; i<=tabPositions.length;i++){
      tabPositions[i];
      //String temp = json.read();
      //get le text du JSON 
      //chaine += temp;
      
    };
    contenu = new TextSpan();

  }
}

    //lire dans le JSON
    /*
      Ici tu vas recuperer le contenu de ton JSON, 

      String chaine = "";
      1: Je m'appelle 
      2: et je suis cool !
      chaine += 1+nom+2;


    */
