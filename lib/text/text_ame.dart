import 'package:flutter/material.dart';

// IF HOMME //

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

      // STYLE constructor --> personne
      if(rang + 1 ==5 || rang + 1 ==6 || rang + 1 ==11 || rang + 1 ==13 || rang + 1 ==18 || rang + 1 ==34 || rang + 1 ==48 ||rang + 1 ==50 || rang + 1 ==52 || rang + 1 ==56 || rang + 1 ==58) {
        style=charlotte;
      }else{
        if(rang + 1 ==42 || rang + 1 ==94 || rang + 1 ==97 || rang + 1 ==98 || rang + 1 ==101 || rang + 1 ==102 || rang + 1 ==198 ||rang + 1 ==200 ||rang + 1 ==283 ||rang + 1 ==284 ||rang + 1 ==280 || rang + 1 ==287 || rang + 1 ==288 || rang + 1 ==239 || rang + 1 ==242 || rang + 1 ==244 || rang == 246) {
          style=reve;
        }else{
          if(rang + 1 ==12 || rang + 1 ==17 || rang + 1 ==49 || rang + 1 ==51 || rang + 1 ==55 || rang + 1 ==57 || rang + 1 ==60 ||rang + 1 ==96 ||rang + 1 ==100 ||130<=rang && rang<=139 ||142<=rang && rang<=148 || 167<=rang && rang<=176 || 179<=rang && rang<=185 || rang + 1 ==196 || rang + 1 ==201 || rang + 1 ==204 || 214<=rang && rang<=223 || 226<=rang && rang<=232 || 270<=rang && rang<=273 || rang + 1 ==237 || rang + 1 ==281 || rang + 1 ==282 || rang + 1 ==286 || rang + 1 ==238 || rang + 1 ==240 || rang + 1 ==241 || rang + 1 ==243) {
          style=hero;
          }else{
            style=classic;
          }
        }
      }

      // Association
      contenu = new TextSpan(text:chaine, 
      style:style,);
      paragraphe = new Texte(contenu, lignes); 
      dialogue.add(paragraphe); // ajout liste
};



// TEXTE // 

class Texte{

  TextSpan texte; //texte //  
  int ligne; // ligne //
  String nom;
  List<Texte> text;

/**
 * @param l nombre de lignes
 * @param n nom du joueur
 */
  Texte(int l, String n){
    this.nom = n;
    this.ligne = l;
    initialiserTexte();
  }

  void initialiserTextedz(){
    text = [
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style: hero ), 2),
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style: cauchemar ), 2),
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style: reve ), 2),
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you I\'m dedicating every day to you \n',
  style: ame ), 3),
  
  ];
  }
  
}

List<Texte> text = [
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style: hero ), 2),
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style: cauchemar ), 2),
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you \n',
  style: reve ), 2),
  new Texte(
  new TextSpan(text:'I\'m dedicating every day to you I\'m dedicating every day to you \n',
  style: ame ), 3),
  
  ];

// Style du texte //
TextStyle ame = new TextStyle( color: lieu=="limbes" ? Colors.grey[350] : Colors.amberAccent, fontSize: 20.0);
TextStyle cauchemar = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle reve = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);
TextStyle hero = new TextStyle( color: lieu=="void" ? Colors.black : Colors.white, fontSize: 20.0);


// LIEU //
  String lieu="ame";

  