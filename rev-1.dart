// Importacao basica
import 'dart:math';

void main() {
  tempFunction();
}

// Funcao principal
tempFunction() {
  print("--- Revisao de Dart ---");

  // 1. Variaveis e tipos basicos
  int inteiro = 10;
  double decimal = 3.14;
  String texto = "Dart é legal! CONFIA!";
  bool verdade = true;
  
  print("Inteiro: $inteiro, Decimal: $decimal, Texto: $texto, Booleano: $verdade");

  // 2. Operadores matematicos
  int soma = inteiro + 2;
  double raizQuadrada = sqrt(decimal);
  print("Soma: $soma, Raiz Quadrada: $raizQuadrada");

  // 3. Estruturas condicionais
  if (inteiro > 5) {
    print("O numero $inteiro eh maior que 5");
  } else {
    print("O numero eh menor ou igual a 5");
  }

  // 4. Estrutura de repeticao - For
  for (int i = 0; i < 5; i++) {
    print("Iteracao: $i");
  }

  // 5. Estrutura de repeticao - While
  int contador = 0;
  while (contador < 3) {
    print("Contador: $contador");
    contador++;
  }

  // 6. Trabalhando com Listas
  List<String> frutas = ["Maca", "Banana", "Laranja"];
  frutas.add("Manga");
  print("Frutas: $frutas");
  
  // Iterando sobre a lista
  for (String fruta in frutas) {
    print("Fruta: $fruta");
  }

  // 7. Trabalhando com Mapas
  Map<String, int> idades = {
    "Ana": 100,
    "Pedro": 30,
    "Lucas": 13,
  };
  idades["Otávio"] = 29;
  print("Mapa de idades: $idades");

  // 8. Funcoes e retorno
  int dobrar(int x) {
    return x * 2;
  }

  int resultado = dobrar(inteiro);
  print("O dobro de $inteiro é $resultado");

  // 9. Classes e Objetos
  Pessoa pessoa1 = Pessoa(nome: "José Maia", idade: 99);
  pessoa1.mostrarDetalhes();

  // 10. Tratamento de excecoes
  try {
    int numero = int.parse("abc"); // Isso vai gerar um erro
    print(numero);
  } catch (e) {
    print("Erro ao converter string para numero: $e");
  }

  print("--- Fim da Revisao ---");
}

// Classe Pessoa
class Pessoa {
  String nome;
  int idade;

  Pessoa({required this.nome, required this.idade});

  void mostrarDetalhes() {
    print("Nome: $nome, Idade: $idade anos");
  }
}
