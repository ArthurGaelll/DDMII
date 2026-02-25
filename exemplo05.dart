import 'dart:io';

void main() {
  print("--- Calculadora de IMC ---");

  print("Digite seu peso (kg):");

  String? inputPeso = stdin.readLineSync();
  print("Digite sua altura (m):");
  String? inputAltura = stdin.readLineSync();

  if (inputPeso != null && inputAltura != null) {
    double peso = double.parse(inputPeso);
    double altura = double.parse(inputAltura);

    double imc = peso / (altura * altura);

    print("Seu IMC é: ${imc.toStringAsFixed(2)}");

    if (imc < 18.5) {
      print("Classificação: Abaixo do peso");
    } else if (imc < 24.9) {
      print("Classificação: Peso normal");
    } else if (imc < 29.9) {
      print("Classificação: Sobrepeso");
    } else {
      print("Classificação: Obesidade");
    }
  } else {
    print("Erro: Dados inválidos.");
  }
}
