import 'dart:io';

Comprimento() {
  print("Unidade de Comprimento Atual: ");
  String uniComp_atual = stdin.readLineSync()!;

  print("Comprimento: ");
  double comp = double.parse(stdin.readLineSync()!);

  print("Unidade de Comprimento Desejada: ");
  String uniComp_desejada = stdin.readLineSync()!;

  conversao(uniComp_atual, uniComp_desejada, comp);
}

// Conversão
conversao(String uniComp_atual, uniComp_desejada, double comp) {
  if (uniComp_atual == "Milimetro" && uniComp_desejada == "Centimetro") {
    milimetroCentimetro(comp);
  } else if (uniComp_atual == "Milimetro" && uniComp_desejada == "Metro") {
    milimetroMetro(comp);
  } else if (uniComp_atual == "Milimetro" && uniComp_desejada == "Quilometro") {
    milimetroQuilometro(comp);
  } else if (uniComp_atual == "Centimetro" && uniComp_desejada == "Milimetro") {
    centimetroMilimetro(comp);
  } else if (uniComp_atual == "Centimetro" && uniComp_desejada == "Metro") {
    centimetroMetro(comp);
  } else if (uniComp_atual == "Centimetro" &&
      uniComp_desejada == "Quilometro") {
    centimetroQuilometro(comp);
  } else if (uniComp_atual == "Metro" && uniComp_desejada == "Milimetro") {
    metroMilimetro(comp);
  } else if (uniComp_atual == "Metro" && uniComp_desejada == "Centimetro") {
    metroCentimetro(comp);
  } else if (uniComp_atual == "Metro" && uniComp_desejada == "Quilometro") {
    metroQuilometro(comp);
  } else if (uniComp_atual == "Quilometro" && uniComp_desejada == "Milimetro") {
    quilometroMilimetro(comp);
  } else if (uniComp_atual == "Quilometro" &&
      uniComp_desejada == "Centimetro") {
    quiilometroCentimetro(comp);
  } else if (uniComp_atual == "Quilometro" && uniComp_desejada == "Metro") {
    quilometroMetro(comp);
  }
}

// Cálculo dos Comprimentos
// Milimetro
milimetroCentimetro(double comp) {
  double centimentro = comp / 10;
  print("Comprimento Convertido: ${centimentro}cm");
}

milimetroMetro(double comp) {
  double metro = comp / 10 / 10 / 10;
  print("Comprimento Convertido: ${metro}m");
}

milimetroQuilometro(double comp) {
  double quilometro = comp / 10 / 10 / 10 / 10 / 10 / 10;
  print("Comprimento Convertido: ${quilometro}km");
}

// Centimetro
centimetroMilimetro(double comp) {
  double milimetro = comp * 10;
  print("Comprimento Convertido: ${milimetro}mm");
}

centimetroMetro(double comp) {
  double metro = comp / 10 / 10;
  print("Comprimento Convertido: ${metro}m");
}

centimetroQuilometro(double comp) {
  double quilometro = comp / 10 / 10 / 10 / 10 / 10;
  print("Comprimento Convertido: ${quilometro}km");
}

// Metro
metroMilimetro(double comp) {
  double milimetro = comp * 10 * 10 * 10;
  print("Comprimento Convertido: ${milimetro}mm");
}

metroCentimetro(double comp) {
  double centimetro = comp * 10 * 10;
  print("Comprimento Convertido: ${centimetro}cm");
}

metroQuilometro(double comp) {
  double quilometro = comp / 10 / 10 / 10;
  print("Comprimento Convertido: ${quilometro}km");
}

// Quilometro
quilometroMilimetro(double comp) {
  double milimetro = comp * 10 * 10 * 10 * 10 * 10 * 10;
  print("Comprimento Convertido: ${milimetro}mm");
}

quiilometroCentimetro(double comp) {
  double centimetro = comp * 10 * 10 * 10 * 10 * 10;
  print("Comprimento Convertido: ${centimetro}cm");
}

quilometroMetro(double comp) {
  double metro = comp * 10 * 10 * 10;
  print("Comprimento Convertido: ${metro}m");
}
