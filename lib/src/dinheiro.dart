import 'dart:io';

Dinheiro() {
  stdout.write("Cédula Atual: ");
  String cedulaAtual = stdin.readLineSync()!;

  stdout.write("Quantia: ");
  double ced = double.parse(stdin.readLineSync()!);

  stdout.write("Cédula Desejada: ");
  String cedulaDesejada = stdin.readLineSync()!;

  conversao(cedulaAtual, ced, cedulaDesejada);
}

// Conversão
conversao(String cedulaAtual, ced, String cedulaDesejada) {
  if (cedulaAtual == "USD" && cedulaDesejada == "BRL") {
    dolarReal(ced);
  } else if (cedulaAtual == "USD" && cedulaDesejada == "EUR") {
    dolarEuro(ced);
  } else if (cedulaAtual == "USD" && cedulaDesejada == "GBP") {
    dolarLibraEsterlina(ced);
  } else if (cedulaAtual == "BRL" && cedulaDesejada == "USD") {
    realDolar(ced);
  } else if (cedulaAtual == "BRL" && cedulaDesejada == "EUR") {
    realEuro(ced);
  } else if (cedulaAtual == "BRL" && cedulaDesejada == "GBP") {
    realLibraEsterlina(ced);
  } else if (cedulaAtual == "EUR" && cedulaDesejada == "USD") {
    euroDolar(ced);
  } else if (cedulaAtual == "EUR" && cedulaDesejada == "BRL") {
    euroReal(ced);
  } else if (cedulaAtual == "EUR" && cedulaDesejada == "GBP") {
    euroLibraEsterlina(ced);
  } else if (cedulaAtual == "GBP" && cedulaDesejada == "USD") {
    libraEsterlinaDolar(ced);
  } else if (cedulaAtual == "GBP" && cedulaDesejada == "BRL") {
    libraEsterlinaReal(ced);
  } else if (cedulaAtual == "GBP" && cedulaDesejada == "EUR") {
    libraEsterlinaEuro(ced);
  }
}

// Cálculos
// USD for BRL, EUR, GBP
dolarReal(double ced) {
  double real = 5.51598 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${real.toStringAsFixed(2)} BRL");
}

dolarEuro(double ced) {
  double euro = 0.837288 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${euro.toStringAsFixed(2)} EUR");
}

dolarLibraEsterlina(double ced) {
  double libraEsterlina = 0.721129 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${libraEsterlina.toStringAsFixed(2)} GBP");
}

// BRL for USD, EUR, GBP
realDolar(double ced) {
  double dolar = 0.181269 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${dolar.toStringAsFixed(2)} USD");
}

realEuro(double ced) {
  double euro = 0.151736 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${euro.toStringAsFixed(2)} EUR");
}

realLibraEsterlina(double ced) {
  double libraEsterlina = 0.130721 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${libraEsterlina.toStringAsFixed(2)} GBP");
}

// EUR for USD, BRL, GBP
euroDolar(double ced) {
  double dolar = 1.19453 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${dolar.toStringAsFixed(2)} USD");
}

euroReal(double ced) {
  double real = 6.58805 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${real.toStringAsFixed(2)} BRL");
}

euroLibraEsterlina(double ced) {
  double libraEsterlina = 0.861295 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${libraEsterlina.toStringAsFixed(2)} GBP");
}

// GBP for USD, BRL, EUR
libraEsterlinaDolar(double ced) {
  double dolar = 1.38683 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${dolar.toStringAsFixed(2)} USD");
}

libraEsterlinaReal(double ced) {
  double real = 7.64349 * ced; // Valor atual (22/03/21)
  print("Cédula Convertida: ${real.toStringAsFixed(2)} BRL");
}

libraEsterlinaEuro(double ced) {
  double euro = 1.16109 * ced;
  print("Cédula Convertida: ${euro.toStringAsFixed(2)} EUR");
}
