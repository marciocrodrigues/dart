import 'dart:io';

main(){
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    
    print("Adicione um produto");
    String text = stdin.readLineSync();
  
    switch (text) {
      case "sair":
        print("Terminou o programa");
        condicao = false;
        break;
      case "imprimir":
        Imprimir(produtos);
        break; 
      default:
        print("\x1B[2J\x1B[0;0H");
        produtos.add(text);
        break;
    }
  }
}

void Imprimir(List<String> value) {
  for (var i = 0; i < value.length; i++) {
    String text = "Item $i - ${value[i]}";
    
    print(text);
  }
}