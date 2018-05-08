import 'package:flutter/material.dart';

// TEXTE // 

    class Texte {

    TextSpan texte; //texte //  
    int ligne; // ligne //
    String couleur;

    Texte(this.texte, this.ligne, this.couleur);
    }


List<Texte> text = [
  new Texte(
  new TextSpan(text:"Je sens encore la douceur de ses lèvres. Délicates, rougies par le sang. Elle sourit Elle me sourit. \n",
  style: classic ), 4, lieu),
  new Texte(
  new TextSpan(text:"Son visage harmonieux est encadré par ses petites boucles brunes aux reflets dorés. Ses yeux bleus me transpercent telles deux flèches. Elles vont tout droit se loger dans mon coeur. \n",
  style: classic ), 7, lieu),
  new Texte(
  new TextSpan(text:"Ses pommettes rondes et roses me donnent envie de l'embrasser... mes mains caressent son visage, elle me semble si fragile. \n",
  style: classic ), 5, lieu),
  new Texte(
  new TextSpan(text:"Je m approche. Je sens son coeur battre, le mien suit. A l’unisson. Comme si nous ne faisions plus qu'un. Ses yeux se ferment doucement. Les miens restent grands ouverts. Je la regarde. Elle est tellement belle... \n",
  style: classic ), 8, lieu),
  new Texte(
  new TextSpan(text:"\n «Victor ! Réveille toi ! C'est le matin » \n \n",
  style: charlotte ), 4, lieu),
  new Texte(
  new TextSpan(text:"Changement de décor radical. Ma petite soeur Charlotte est sur mon lit, déjà habillée, ses cheveux tressés et ses yeux brillants. \n",
  style: classic ), 5, lieu),
  new Texte(
  new TextSpan(text:"Elle attend que je lui réponde quelque chose, que je sorte de mon lit, que je lui ouvre la porte de la maison, la serre dans mes bras. \n",
  style: classic ), 5, lieu),
  new Texte(
  new TextSpan(text:"Alors enfin elle partira par le chemin, me fera un salut de la main avant de traverser la route, tournera à droite et marchera droit devant elle jusqu'à tomber sur l'école. \n",
  style: classic ), 6, lieu),
  new Texte(
  new TextSpan(text:"Charlotte a 7 ans, mais elle est dans une école spécialisée pour les enfants particuliers : elle est précoce. «Une vraie tête» comme nos parents ont l'habitude de l'appeler quand ils parlent d'elle entre eux. \n \n",
  style: classic ), 9, lieu),
  new Texte(
  new TextSpan(text:"«Alors tu te lèves ?» \n",
  style: charlotte ), 2,lieu),
  ];

// Style du texte //
TextStyle classic = new TextStyle( color: lieu=="dehors" ? Colors.grey[350] : Colors.white, fontSize: 20.0);
TextStyle charlotte = new TextStyle( color: lieu=="dehors" ? Colors.grey[350] : Colors.white, fontSize: 20.0, letterSpacing: 1.5, fontWeight:FontWeight.w500);
TextStyle reve = new TextStyle( color: lieu=="dehors" ? Colors.grey[350] : Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0);
TextStyle hero = new TextStyle( color: lieu=="dehors" ? Colors.grey[350] : Colors.white, letterSpacing: 1.5, fontSize: 20.0);


// LIEU //
  String lieu="reve";

  