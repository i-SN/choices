import 'package:flutter/material.dart';

// TEXTE // 

    class Texte {

    TextSpan texte; //texte //  
    int ligne; // ligne //

    Texte(this.texte, this.ligne);
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

  