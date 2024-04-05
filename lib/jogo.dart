import 'package:flutter/material.dart';
import 'dart:math';

class MyJogo extends StatefulWidget {
  const MyJogo({super.key});

  @override
  State<MyJogo> createState() => _MyJogoState();
}

class _MyJogoState extends State<MyJogo> {
  Image lagarto = Image.asset('assets/images/lagarto.png');
  Image papel = Image.asset('assets/images/palma.png');
  Image pedra = Image.asset('assets/images/punho.png');
  Image spock = Image.asset('assets/images/spock.png');
  Image tesoura = Image.asset('assets/images/tesoura.png');
  Image aleatorio = Image.asset('assets/images/pedra.png');
  int numeroAleatorio = 0;
  int escolha = 0;
  String resposta = '';
  List<Image> imagens = [Image.asset('assets/images/lagarto.png'),Image.asset('assets/images/palma.png'),Image.asset('assets/images/punho.png'), Image.asset('assets/images/spock.png'), Image.asset('assets/images/tesoura.png')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pedra, Papel, Tesoura, Lagarto, Spock", style: TextStyle(fontSize: 20, color: Colors.white),), centerTitle: true, backgroundColor: Colors.indigo.shade400,),
      body: Container(
        padding: EdgeInsets.all(10),
         child: Column(children: [
          Text("Escolha do App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            aleatorio,
            SizedBox(height: 10,),
            Text(resposta, style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
          Text("Escolha entre pedra, papel, tesoura, lagarto ou spock", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(child: pedra,
            onTap: (){
              mostrar();
              escolha = 2;
              jogo();
              setState(() {
                
              });
            },
            ),SizedBox(width: 5,),
           GestureDetector(child: papel,
            onTap: (){
              mostrar();
              escolha = 1;
              jogo();
              setState(() {
                
              });
            },
            ),SizedBox(width: 5,), 
            GestureDetector(child: tesoura,
            onTap: (){
              mostrar();
              escolha = 4;
              jogo();
              setState(() {
                
              });
            },
            ),SizedBox(width: 5,), 
            GestureDetector(child: lagarto,
            onTap: (){
              mostrar();
              escolha = 0;
              jogo();
              setState(() {
                
              });
            },
            ),SizedBox(width: 5,), 
            GestureDetector(child: spock,
            onTap: (){
              mostrar();
              escolha = 3;
              jogo();
              setState(() {
                
              });
            },
            ),SizedBox(width: 5,),
          ],)
         ]),
        ),
    );
  }

  void mostrar(){
    aleatorio = Image.asset('assets/images/pedra.png');
    numeroAleatorio = Random().nextInt(imagens.length);
    aleatorio = imagens[numeroAleatorio];
  }

  void jogo(){
    if(numeroAleatorio == 4){
      if(escolha == 1){
        resposta = 'Tesoura corta papel, você perdeu!';
      }
      else if(escolha == 0){
        resposta = 'Tesoura decapita lagarto, você perdeu!';
      }
      else if (escolha == 4){
        resposta = 'Empate!';
      }
      else if (escolha == 2){
        resposta = 'Pedra quebra tesoura, você ganhou!';
      }
      else if (escolha == 3){
        resposta = 'Spock esmaga tesoura, você ganhou!';
      }
    }
    else if(numeroAleatorio == 1){
      if(escolha == 2){
        resposta = 'Papel cobre pedra, você perdeu!';
      }
      else if(escolha == 3){
        resposta = 'Papel desmente spock, você perdeu!';
      }
      else if(escolha == 1){
        resposta = 'Empate!';
      }
      else if(escolha == 0){
        resposta = 'Lagarto come papel, você ganhou!';
      }
      else if(escolha == 4){
        resposta = 'Tesoura corta papel, você ganhou!';
      }
    }
    else if(numeroAleatorio == 2){
      if(escolha == 0){
        resposta = 'Pedra quebra lagarto, você perdeu!';
      }
      else if(escolha == 4){
        resposta = 'Pedra quebra tesoura, você perdeu!';
      }
      else if(escolha == 2){
        resposta = 'Empate!';
      }
      else if(escolha == 1){
        resposta = 'Pedra cobre papel, você ganhou!';
      }
      else if(escolha == 3){
        resposta = 'Spock destroi pedra, você ganhou!';
      }
    }
    else if(numeroAleatorio == 0){
      if(escolha == 3){
        resposta = 'Lagarto envenena spock, você perdeu!';
      }
      else if(escolha == 1){
        resposta = 'Lagarto come papel, você perdeu!';
      }
      else if(escolha == 0){
        resposta = 'Empate!';
      }
      else if(escolha == 2){
        resposta = 'Pedra quebra lagarto, você ganhou!';
      }
      else if(escolha == 4){
        resposta = 'Tesoura decapita lagarto, você ganhou!';
      }
    }
    else if(numeroAleatorio == 3){
      if(escolha == 4){
        resposta = 'Spock esmaga tesoura, você perdeu!';
      }
      else if(escolha == 2){
        resposta = 'Spock destroi pedra, você perdeu!';
      }
      else if(escolha == 3){
        resposta = 'Empate!';
      }
      else if(escolha == 1){
        resposta = 'Papel desmente spock, você ganhou!';
      }
      else if(escolha == 0){
        resposta = 'Lagarto envenena spock, você ganhou!';
      }
    }
  }
}