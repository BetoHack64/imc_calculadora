// Classe Pessoa com atributos nome, peso e altura
class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  // Método para calcular o IMC
  double calcularIMC() {
    return peso / (altura * altura);
  }
}
