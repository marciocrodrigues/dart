main(){
  var value = true;
  bool value2 = false;

  int numero1 = 1;
  int numero2 = 2;

  if(value){
    print("verdadeiro");
  }else{
    print("falso");
  }
  
  //negação
  if(!value){
    print("verdadeiro");
  }else{
    print("falso");
  }

  // And &&
  // Or ||
  if(value && value2) {
    print("Os dois são verdadeiros");
  }

  if(value || value2) {
    print("Um dos dois é verdadeiro");
  }

  // Atribuição =
  // Igual ==
  // Diferente !=
  // Maior >
  // Menor <
  // Maior ou igual >=
  // Menor ou igual <=
  if(numero1 != numero2) {
    print("Verdadeiro");
  }else {
    print("Falso");
  }

}