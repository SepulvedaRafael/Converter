import 'dart:io';

import 'src/temperatura.dart';
import 'src/massa.dart';
import 'src/comprimento.dart';
import 'src/dinheiro.dart';

void main(List<String> arguments) {
  print("Tipo de Conversão: ");
  String conversao = stdin.readLineSync()!;

  if (conversao == "Temperatura") {
    Temperatura();
  } else if (conversao == "Massa") {
    Massa();
  } else if (conversao == "Comprimento") {
    Comprimento();
  } else if (conversao == "Dinheiro") {
    Dinheiro();
  } else {
    print("Conversão não encontrada!");
  }
}
