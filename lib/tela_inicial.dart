import 'package:flutter/material.dart';

const corPadraoContainer = Color(0xFFFDA93B);

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
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
                    child: CartaoPadrao(cor: corPadraoContainer),
                  ),
                  Expanded(
                    child: CartaoPadrao(cor: corPadraoContainer),
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

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({required this.cor});
  //Color(0xFFFDA93B)
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
