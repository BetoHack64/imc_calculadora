import 'package:imc_calculadora/entity/pessoa.dart';
import 'package:imc_calculadora/imc_calculadora.dart';
import 'package:test/test.dart';

void main() {
    group('Calculadora de IMC', () {
    test('IMC de 70kg e 1.75m deve ser 22.86', () {
      Pessoa pessoa = Pessoa(nome: 'Teste1', peso: 70, altura: 1.75);
      expect(pessoa.calcularIMC().toStringAsFixed(2), '22.86');
    });

    test('IMC de 50kg e 1.60m deve ser 19.53', () {
      Pessoa pessoa = Pessoa(nome: 'Teste2', peso: 50, altura: 1.60);
      expect(pessoa.calcularIMC().toStringAsFixed(2), '19.53');
    });

    test('IMC de 85kg e 1.80m deve ser 26.23', () {
      Pessoa pessoa = Pessoa(nome: 'Teste3', peso: 85, altura: 1.80);
      expect(pessoa.calcularIMC().toStringAsFixed(2), '26.23');
    });

    test('Entrada inválida para peso deve lançar exceção', () {
      expect(
          () => Pessoa(
              nome: 'Teste4', peso: double.parse('invalid'), altura: 1.80),
          throwsA(isA<FormatException>()));
    });

    test('Entrada inválida para altura deve lançar exceção', () {
      expect(
          () =>
              Pessoa(nome: 'Teste4', peso: 85, altura: double.parse('invalid')),
          throwsA(isA<FormatException>()));
    });

    test('Entrada inválida para nome deve lançar exceção', () {
      expect(
          () => lerString('Digite s gu nome: ')
            ..replaceAll('stdout.write', 'stdout.writeSync'),
          throwsA(isA<FormatException>()));
    });
  });
}
