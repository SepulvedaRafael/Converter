import 'dart:io';

Temperatura() {
  print("Unidade Atual: ");
  String unid_atual = stdin.readLineSync()!;

  print("Temperatura: ");
  double temp = double.parse(stdin.readLineSync()!);

  print("Unidade Desejada: ");
  String unid_desejada = stdin.readLineSync()!;

  conversao(unid_atual, unid_desejada, temp);
}

// Conversão
conversao(String unid_atual, unid_desejada, double temp) {
  if (unid_atual == "Celsius" && unid_desejada == "Kelvin") {
    celsiusKelvin(temp);
  } else if (unid_atual == "Kelvin" && unid_desejada == "Celsius") {
    kelvinCelsius(temp);
  } else if (unid_atual == "Celsius" && unid_desejada == "Fahrenheit") {
    celsiusFahrenheit(temp);
  } else if (unid_atual == "Fahrenheit" && unid_desejada == "Celsius") {
    fahrenheitCelsius(temp);
  } else if (unid_atual == "Fahrenheit" && unid_desejada == "Kelvin") {
    fahrenheitKelvin(temp);
  } else if (unid_atual == "Kelvin" && unid_desejada == "Fahrenheit") {
    kelvinFahrenheit(temp);
  } else {
    print("Unidade Inválida!");
  }
}

// Temperatura
celsiusKelvin(double temp) {
  double kelvin = temp + 273.15;
  print("Temperatura Convertida: ${kelvin.toStringAsFixed(2)}K");
}

kelvinCelsius(double temp) {
  double celsius = temp - 273.15;
  print("Temperatura Convertida: ${celsius.toStringAsFixed(2)}°C");
}

celsiusFahrenheit(double temp) {
  double fahrenheit = 1.8 * temp + 32;
  print("Temperatura Convertida: ${fahrenheit.toStringAsFixed(2)}°F");
}

fahrenheitCelsius(double temp) {
  double celsius = (temp - 32) / 1.8;
  print("Temperatura Convertida: ${celsius.toStringAsFixed(2)}°C");
}

fahrenheitKelvin(double temp) {
  double fahrenheit = ((temp - 32) / 1.80) + 273.15;
  print("Temperatura Convertida: ${fahrenheit.toStringAsFixed(2)}°F");
}

kelvinFahrenheit(double temp) {
  double kelvin = ((temp - 273.15) * 1.8) + 32;
  print("Temperatura Convertida: ${kelvin.toStringAsFixed(2)}K");
}
