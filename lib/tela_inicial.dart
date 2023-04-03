import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'conteudo_icone.dart';
import 'conteudo_padrao.dart';

const corPadraoContainer = Color(0xFFFDA93B);
const corInativaCartaoPadrao = Color(0xFF794F18);

enum Sexo{
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  Sexo? sexoSelecionado;


  // Color corMasculinoCartaoPadrao = corInativaCartaoPadrao;
  // Color corFemininoCartaoPadrao = corInativaCartaoPadrao;
  //
  // //1= Masculino e 2 =Feminino
  // void atualizar(Sexo sexoSelecionado){
  //   if (sexoSelecionado == Sexo.masculino){
  //     if(corMasculinoCartaoPadrao == corInativaCartaoPadrao){
  //       corMasculinoCartaoPadrao = corPadraoContainer;
  //       corFemininoCartaoPadrao = corInativaCartaoPadrao;
  //     }else{
  //       corMasculinoCartaoPadrao = corInativaCartaoPadrao;
  //     }
  //   }
  //   if (sexoSelecionado == Sexo.feminino){
  //     if(corFemininoCartaoPadrao == corInativaCartaoPadrao){
  //       corFemininoCartaoPadrao  = corPadraoContainer;
  //       corMasculinoCartaoPadrao = corInativaCartaoPadrao;
  //     }else{
  //       corFemininoCartaoPadrao = corInativaCartaoPadrao;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                     sexoSelecionado = Sexo.masculino;
                    });
                  },
                  child: CartaoPadrao(
                    cor: sexoSelecionado == Sexo.masculino ? corPadraoContainer : corInativaCartaoPadrao,
                    filhoCartao: ConteudoIcone(
                      icone: FontAwesomeIcons.mars,
                      descricao: "MASCULINO",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      sexoSelecionado = Sexo.feminino;
                    });
                  },
                  child: CartaoPadrao(
                    cor: sexoSelecionado == Sexo.feminino ? corPadraoContainer : corInativaCartaoPadrao,
                    filhoCartao: ConteudoIcone(
                        icone: FontAwesomeIcons.venus, descricao: "FEMININO"),
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: CartaoPadrao(cor: corPadraoContainer),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CartaoPadrao(cor: corPadraoContainer),
              ),
              Expanded(
                child: CartaoPadrao(cor: corPadraoContainer),
              )
            ],
          )),
          Container(
            color: Color(0xFF8E57E9),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 30.0,
          )
        ],
      ),
    );
  }
}
