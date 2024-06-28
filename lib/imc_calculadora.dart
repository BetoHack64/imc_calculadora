// Função para validar e ler dados do usuário
import 'dart:io';

String lerString(String prompt) {
  stdout.write(prompt);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    throw FormatException('Nome inválido.');
  }
  return input;
}

double lerDouble(String prompt) {
  stdout.write(prompt);
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    throw FormatException('Entrada vazia.');
  }
  double? value = double.tryParse(input);
  if (value == null) {
    throw FormatException(
        'Entrada inválida. Por favor, insira um valor numérico.');
  }
  return value;
}
