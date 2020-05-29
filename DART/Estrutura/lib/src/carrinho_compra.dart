import 'dart:io';

carrinhoCompra(){
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
      case "remover":
        print("Digite o nome do produto a ser removido");
        Imprimir(produtos);
        String item = stdin.readLineSync();
        produtos = Remover(item, produtos);
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
    String text = "Item ${i + 1} - ${value[i]}";
    
    print(text);
  }
}

List<String> Remover(String value, List<String> itens){
 
  int index = itens.indexOf(value);

  if(index < 0) {
    print("Esse item não existe na lista");
  } else {
    itens.removeAt(index);
  }

  return itens;
}