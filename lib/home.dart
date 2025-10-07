import 'package:flutter/material.dart';
import 'dart:math';

Random random = Random();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _frase = "Clique abaixo para gerar uma frase!";
  List<String> frases = ["Frase 1","Frase 2","Frase 3","Frase 4","Frase 5"];


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centraliza verticalmente // Centraliza horizontalmente
        children: [
          Center(child: Image.asset("images/title.png",width: 300,)),
          Padding(padding: EdgeInsets.only(top: 40),
          child:Text(_frase,style: TextStyle(fontSize: 25,))),
          Padding(padding: EdgeInsets.only(top: 40),
          child: ElevatedButton(
              onPressed: (){
                int x = random.nextInt(5);
                setState(() {
                  this._frase = frases[x];
                });
            }, 
            child: Text("Nova Frase",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            )),)
          
        ],
      ),
      //color: Colors.white,
    );
  }
}