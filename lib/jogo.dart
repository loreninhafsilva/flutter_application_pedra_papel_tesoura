import 'package:flutter/material.dart';

class MyJogo extends StatefulWidget {
  const MyJogo({super.key});

  @override
  State<MyJogo> createState() => _MyJogoState();
}

class _MyJogoState extends State<MyJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pedra, Papel, Tesoura, Lagarto, Spock", style: TextStyle(fontSize: 20, color: Colors.white),), centerTitle: true, backgroundColor: Colors.indigo.shade400,),
      body: Container(
        padding: EdgeInsets.all(10),
         child: Column(children: [
          Text("Escolha do App"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [

          ],),
          Text("Escolha entre pedra, papel, tesoura, lagarto ou spock"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            
          ],)
         ]),
        ),
    );
  }
}