import 'dart:io';

algoritmoImc(){
  try {
    
    //Não é obrigatorio o uso de tipagem no retorno da função
    // ou nas variaveis, consegue-se usar "var" e deixar sua
    // tipagem dinamica dependendo do valor recebido
    double peso   = PerguntaPeso();
    double altura = PerguntaAltura();
  
    CalculoImc(peso, altura);

  } catch (e) {
    print(e.toString());
  }  
}

// Retorno tipado tipo "double"
double PerguntaPeso(){
    print("Digite seu peso");
    String textoPeso = stdin.readLineSync().replaceAll(",", ".");
    double peso      = double.parse(textoPeso);
    return peso;
}

// Função com retorno tipado tipo "double"
double PerguntaAltura(){
    print("Digite sua altura");
    String textoAltura = stdin.readLineSync().replaceAll(",", ".");
    double altura      = double.parse(textoAltura);
    return altura;
}

// Função sem retorno
CalculoImc(double peso, double altura){
  var imc = peso / (altura * altura);
  print(ResultadoImc(imc));
}

// Função com retorno tipado tipo "String"
String ResultadoImc(double imc) {
  
  String resultado;
  
  if(imc < 18.5) {
    resultado = "Abaixo do peso";
  } else if(imc >= 18.5 && imc <= 24.9) {
    resultado = "Peso normal";
  } else if(imc >= 25 && imc <= 29.9 ) {
    resultado = "Sobrepeso";
  } else if(imc >= 30 && imc <= 34.9) {
    resultado = "Obesidade grau I";
  } else if(imc >= 35 && imc <= 39.9) {
    resultado = "Obesidade grau II";
  } else {
    resultado = "Obesidade grau III";
  }

  return resultado;
}