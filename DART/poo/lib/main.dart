import './src/pessoa.dart';

void main(List<String> arguments) {
  // Instanciando
  Pessoa pessoa;
  pessoa = Pessoa(nome: 'Marcio', idade: 33, sexo: 'M', peso: 104, altura: 1.72);
  
  print('Nome:${pessoa.getNome}');
  print('Idade: ${pessoa.getIdade}');
  print('Sexo: ${pessoa.getSexo}');
  print('Peso: ${pessoa.getPeso} Kg');
  print('Altura: ${pessoa.getAltura} m');
}
