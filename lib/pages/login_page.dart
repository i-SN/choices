import 'package:flutter/material.dart';
import '../histoire/ame/home.dart';


class Loginscreen extends StatefulWidget {

  @override
  LoginscreenState createState() => new LoginscreenState();
}

class LoginscreenState extends State<Loginscreen> {

  bool enable = false ;
  bool femme = true;
  String _text = ''; //nom du joueur

  void onPressed() {
    _text=_controller.text;
    if(_text==""){ 
    }else{
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AmePage(_text)));
    print(_text);
    }
  }

  void onPressedsexe(){
    setState((){
    if (femme==true){
      femme=false;
    }else{
      femme=true;
    }
    print(femme);
  }
      );
  }

  void onChanged(String value) {
    setState((){
          _text = value;
           if(_text==""){
           enable=false;
            }else{
            enable=true;
           }
        }
    );
  }


  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.amberAccent,
      child: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // TEXTE 
              new Container(
                padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 40.0),
                child: new TextField(
                onChanged: (String value){onChanged(value);},
                controller: _controller,
                decoration: new InputDecoration(
                  hintStyle:  new TextStyle(color: Colors.black45, fontWeight:FontWeight.w300 , fontSize: 23.0),
                  hintText: 'ENTRER VOTRE NOM', 
                  labelStyle:  new TextStyle(letterSpacing: 2.0, color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                  labelText: 'QUEL EST VOTRE NOM?', 
                ),
              ),
              ),

              // SEXE
              new Material(
                borderRadius: new BorderRadius.circular(50.0),
                child: new Container(
                color: Colors.grey[350],
                width: 140.0,
                height: 50.0,
                child : new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new InkWell(
                        onTap: (){onPressedsexe();} ,
                        child: new Material(
                          elevation: femme == true ? 0.0 : 2.0,
                          borderRadius: new BorderRadius.circular(50.0),
                          child: new Container(
                          color: femme == true ? Colors.grey[350] : Colors.white,
                          padding: new EdgeInsets.all(10.0),
                          child: new Container(
                          decoration: new BoxDecoration(image: new DecorationImage(image: new AssetImage("assets/images/sexe/man_silver.png"),)),
                        ),
                        ),
                      ),
                      )
                     ),



                    new Expanded(
                      child: new InkWell(
                        onTap: (){onPressedsexe();} ,
                        child: new Material(
                        elevation: femme == false ? 0.0 : 2.0,
                        borderRadius: new BorderRadius.circular(50.0),
                        child: new Container(
                          color: femme == false ? Colors.grey[350] : Colors.white,
                          padding: new EdgeInsets.all(10.0),
                          child: new Container(
                          decoration: new BoxDecoration(image: new DecorationImage(image: new AssetImage("assets/images/sexe/woman_silver.png"),)),
                        ),
                      ),
                      ),
                      )
                     ),
                  ],
                ),
              ),
          ),

              new Padding(padding: new EdgeInsets.only(top: 50.0)),

              // BOUTON 
              new Material(
                borderRadius: new BorderRadius.circular(50.0),
                shadowColor: Colors.black54,
                elevation: 2.0,
                child:
                        new MaterialButton(
                        height: 50.0,
                        minWidth: 200.0,
                        color: enable == true ? Colors.white : Colors.grey[200],
                        child: new Icon(Icons.send),
                        splashColor:  enable == false ? Colors.white70 :Colors.redAccent,
                        textColor: Colors.black,
                        onPressed: (){onPressed();}
              ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 75.0)),
            ],
          ),
        ),
      ),
    );
  }
}