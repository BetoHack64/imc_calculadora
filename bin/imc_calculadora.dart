import 'package:imc_calculadora/entity/pessoa.dart';
import 'package:imc_calculadora/imc_calculadora.dart';



void main(List<String> arguments) {
  try {
    // Leitura das informações do usuário com validação
    String nome = lerString('Digite seu nome: ');
    double peso = lerDouble('Digite seu peso (kg): ');
    double altura = lerDouble('Digite sua altura (m): ');

    // Criação da instância da classe Pessoa
    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

    // Cálculo do IMC
    double imc = pessoa.calcularIMC();
    print('${pessoa.nome}, seu IMC é: ${imc.toStringAsFixed(2)}');


    // Interpretação do IMC
    if (imc < 16) {
      print('Magreza grave');
    } else if (imc >= 16 && imc < 17) {
      print('Magreza moderada');
    } else if (imc >= 17 && imc < 18.5) {
      print('Magreza leve');
    } else if (imc >= 18.5 && imc < 25) {
      print('Saudável');
    } else if (imc >= 25 && imc < 30) {
      print('Sobrepeso');
    } else if (imc >= 30 && imc < 35) {
      print('Obesidade Grau I');
    } else if (imc >= 35 && imc < 40) {
      print('Obesidade Grau II (severa)');
    } else if (imc >= 40) {
      print('Obesidade Grau III (mórbida)');
    }
  } catch (e) {
    // Tratamento de exceções para entradas inválidas
    print(e.toString());
  }
}
