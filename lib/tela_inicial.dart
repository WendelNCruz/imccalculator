import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imccalculator/constantes.dart';

import 'conteudo_icone.dart';
import 'conteudo_padrao.dart';
import 'tela_resultados.dart';

enum Sexo {
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Sexo? sexoSelecionado;
  int altura = 180;
  int peso = 50;
  int idade = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CartaoPadrao(
                  aoPressionar: () {
                    setState(() {
                      sexoSelecionado = Sexo.masculino;
                    });
                  },
                  cor: sexoSelecionado == Sexo.masculino
                      ? kCorPadraoContainer
                      : kCorInativaCartaoPadrao,
                  filhoCartao: ConteudoIcone(
                    icone: FontAwesomeIcons.mars,
                    descricao: "MASCULINO",
                  ),
                ),
              ),
              Expanded(
                child: CartaoPadrao(
                  aoPressionar: () {
                    setState(() {
                      sexoSelecionado = Sexo.feminino;
                    });
                  },
                  cor: sexoSelecionado == Sexo.feminino
                      ? kCorPadraoContainer
                      : kCorInativaCartaoPadrao,
                  filhoCartao: ConteudoIcone(
                      icone: FontAwesomeIcons.venus, descricao: "FEMININO"),
                ),
              )
            ],
          )),
          Expanded(
            child: CartaoPadrao(
              cor: kCorPadraoContainer,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ALTURA",
                    style: kEstiloTexto,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Alinhamento de Widgets na Base
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: kEstiloNumero,
                      ),
                      Text(
                        "CM",
                        style: kEstiloTexto,
                      ),
                    ],
                  ),
                  Slider(
                      activeColor: Color(0xFF8E57E9),
                      value: altura.toDouble(),
                      min: 100.0,
                      max: 240.0,
                      onChanged: (double novoValor) {
                        setState(() {
                          altura = novoValor.round();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CartaoPadrao(
                  cor: kCorPadraoContainer,
                  filhoCartao: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PESO",
                        style: kEstiloTexto,
                      ),
                      Text(
                        peso.toString(),
                        style: kEstiloNumero,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BotaoArredondado(
                            icone: FontAwesomeIcons.minus,
                            aoPressionar: () {
                              setState(() {
                                peso--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          BotaoArredondado(
                            icone: FontAwesomeIcons.plus,
                            aoPressionar: () {
                              setState(() {
                                peso++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CartaoPadrao(
                  cor: kCorPadraoContainer,
                  filhoCartao: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "IDADE",
                        style: kEstiloTexto,
                      ),
                      Text(
                        idade.toString(),
                        style: kEstiloNumero,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BotaoArredondado(
                            icone: FontAwesomeIcons.minus,
                            aoPressionar: () {
                              setState(() {
                                idade--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          BotaoArredondado(
                            icone: FontAwesomeIcons.plus,
                            aoPressionar: () {
                              setState(() {
                                idade++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaResultados(), ), );
            },
            child: Container(
              child: Text("CALCULAR", style: kEstiloTexto,),
              color: Color(0xFF8E57E9),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 30.0,
            ),
          )
        ],
      ),
    );
  }
}

//Criação de um Action Button Personalizado
class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({required this.icone, required this.aoPressionar});

  final IconData? icone;
  final Function() aoPressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icone,
        color: Colors.purple,
      ),
      onPressed: aoPressionar,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.red,
    );
  }
}
