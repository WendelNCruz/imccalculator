import 'package:flutter/material.dart';


class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({required this.cor, this.filhoCartao});

  final Color cor;
  final Widget? filhoCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration:
      BoxDecoration(color: cor, borderRadius: BorderRadius.circular(10.0)),
      child: filhoCartao,
    );
  }
}