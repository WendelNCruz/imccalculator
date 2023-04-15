import 'dart:math';

class CalculadoraIMC {

  CalculadoraIMC({this.altura, this.peso});

  final int? altura;
  final int? peso;
  late double _imc;


  String calcularIMC(){
    _imc = (peso! / pow(altura!/100, 2))!;
    return _imc.toStringAsFixed(1);
  }

  String obterResultado(){
    if (_imc >= 25){
      return 'Acima do Peso';
    } else if (_imc >18.5){
      return 'Peso Normal';
    } else{
      return 'Abaixo do Peso';
    }
  }

  String obterInterpretacao(){
    if (_imc >= 25){
      return 'Você está com o peso acima do normal. Se exercite mais!';
    } else if (_imc >18.5){
      return 'Execelent, o seu peso está normal. Continue assim!';
    } else{
      return 'Você está com o peso abaixo do normal. Melhore sua alimentação!';
    }
  }
}