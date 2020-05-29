import './humano.dart';

// extends para herdar de outra classe
class Pessoa extends Humano {
  
  // Colocando "_" deixa a variavel local
  String _nome;
  int _idade;
  String _sexo;

  // Metodos getter
  String get getNome{
    return _nome;
  }

  int get getIdade{
    return _idade;
  }

  String get getSexo{
    return _sexo;
  }

  //Construtor, super para colocar os valores no construtor da classe pai
  Pessoa({String nome, int idade, String sexo, double peso, double altura})
    :super(peso: peso, altura: altura){
    _nome = nome;
    _idade = idade;
    _sexo = sexo;
  }
}