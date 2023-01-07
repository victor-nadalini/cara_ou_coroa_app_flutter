import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    //print(widget.valor);
    String caminhoImagem;

    if( widget.valor == "cara" ){
      caminhoImagem = "assets/moeda_cara.png";
    }else{
      caminhoImagem = "assets/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset("assets/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
