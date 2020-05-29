// Biblioteca que tens funções de entrada e saida
import 'dart:io';

calculoIdade() {
  print("=== Digite uma idade ===");
  // stdin.readLineSync() pega o que foi digitado no console
  try{
    var input = int.parse(stdin.readLineSync());
    VerificarIdade(input);
  } catch(e){
    print(e.toString());
  }
  

}

void VerificarIdade(int value){
  if(value >= 18) {
    print("Ele(a) é maior de idade");
  } else {
    print("Ele(a) é menor de idade");
  }
}