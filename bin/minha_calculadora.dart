import 'dart:convert';

import 'package:minha_calculadora/minha_calculadora.dart' as minha_calculadora;
import '../lib/models/pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {
  print("--------------------- Calculadora de IMC ---------------------");

  var nome = lerNome();

  var peso = lerPeso();

  var altura = lerAltura();

  var imc = calcularIMC(peso,altura);
  
  print("--------------------- Relatório ---------------------");
  print("Nome:"+nome);
  print('Peso:${peso}');
  print('Altura:${altura}');
  print('IMC:${imc}');
}

//Funções 
String lerNome(){
  print("Informe o seu nome:");
  return (stdin.readLineSync(encoding: utf8)).toString();
}

double lerPeso(){
  print("Informe o seu peso:");
  return double.parse((stdin.readLineSync(encoding: utf8)).toString());
}

double lerAltura(){
  print("Informe a sua altura(m):");
  return double.parse((stdin.readLineSync(encoding: utf8)).toString());
}

String calcularIMC(double peso, double altura){
  return (peso / (altura * altura)).toStringAsFixed(2);
}
