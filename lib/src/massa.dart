import 'dart:io';

Massa() {
  print("Unidade de Massa Atual: ");
  String uniPeso_atual = stdin.readLineSync()!;

  print("Peso: ");
  double peso = double.parse(stdin.readLineSync()!);

  print("Unidade de Massa Desejada: ");
  String uniPeso_desejada = stdin.readLineSync()!;

  conversao(uniPeso_atual, uniPeso_desejada, peso);
}

// Conversão
conversao(String uniPeso_atual, uniPeso_desejada, double peso) {
  if (uniPeso_atual == "Miligrama" && uniPeso_desejada == "Grama") {
    miligramaGrama(peso);
  } else if (uniPeso_atual == "Miligrama" && uniPeso_desejada == "Quilograma") {
    miligramaQuilo(peso);
  } else if (uniPeso_atual == "Miligrama" && uniPeso_desejada == "Tonelada") {
    miligramaTonelada(peso);
  } else if (uniPeso_atual == "Grama" && uniPeso_desejada == "Miligrama") {
    gramaMiligrama(peso);
  } else if (uniPeso_atual == "Grama" && uniPeso_desejada == "Quilograma") {
    gramaQuilo(peso);
  } else if (uniPeso_atual == "Grama" && uniPeso_desejada == "Tonelada") {
    gramaTonelada(peso);
  } else if (uniPeso_atual == "Quilograma" && uniPeso_desejada == "Miligrama") {
    quiloMiligrama(peso);
  } else if (uniPeso_atual == "Quilograma" && uniPeso_desejada == "Grama") {
    quiloGrama(peso);
  } else if (uniPeso_atual == "Quilograma" && uniPeso_desejada == "Tonelada") {
    quiloTonelada(peso);
  } else if (uniPeso_atual == "Tonelada" && uniPeso_desejada == "Miligrama") {
    toneladaMiligrama(peso);
  } else if (uniPeso_atual == "Tonelada" && uniPeso_desejada == "Grama") {
    toneladaGrama(peso);
  } else if (uniPeso_atual == "Tonelada" && uniPeso_desejada == "Quilograma") {
    toneladaQuilo(peso);
  } else {
    print("Unidade de Massa não encontrada!");
  }
}

// Cálculos das Medidas
// Miligrama
miligramaGrama(double peso) {
  double grama = peso / 10 / 10 / 10;
  print("Medida Convertida: ${grama}g");
}

miligramaQuilo(double peso) {
  double quilo = peso / 10 / 10 / 10 / 10 / 10 / 10;
  print("Medida Convertida: ${quilo}kg");
}

miligramaTonelada(double peso) {
  double tonelada = peso / 10 / 10 / 10 / 10 / 10 / 10 / 10 / 10 / 10;
  print("Medida Convertida: ${tonelada}t");
}

// Grama
gramaMiligrama(double peso) {
  double miligrama = peso * 10 * 10 * 10;
  print("Medida Convertida: ${miligrama}mg");
}

gramaQuilo(double peso) {
  double quilo = peso / 10 / 10 / 10;
  print("Medida Convertida: ${quilo}kg");
}

gramaTonelada(double peso) {
  double tonelada = peso / 10 / 10 / 10 / 10 / 10 / 10;
  print("Medida Convertida: ${tonelada}t");
}

// Quilograma
quiloMiligrama(double peso) {
  double miligrama = peso * 10 * 10 * 10 * 10 * 10 * 10;
  print("Medida Convertida: ${miligrama}mg");
}

quiloGrama(double peso) {
  double grama = peso * 10 * 10 * 10;
  print("Medida Convertida: ${grama}g");
}

quiloTonelada(double peso) {
  double tonelada = peso / 10 / 10 / 10;
  print("Medida Convertida: ${tonelada}t");
}

// Tonelada
toneladaMiligrama(double peso) {
  double miligrama = peso * 10 * 10 * 10 * 10 * 10 * 10 * 10 * 10 * 10;
  print("Medida Convertida: ${miligrama}mg");
}

toneladaGrama(double peso) {
  double grama = peso * 10 * 10 * 10 * 10 * 10 * 10;
  print("Medida Convertida: ${grama}g");
}

toneladaQuilo(double peso) {
  double quilo = peso * 10 * 10 * 10;
  print("Medida Convertida: ${quilo}kg");
}