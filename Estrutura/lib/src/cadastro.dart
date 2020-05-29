import 'dart:io';

Map<int, String> cadastro = {};
bool condicao = true;
Map<int, String> Menu = {
  1: "Cadastrar",
  2: "Listar",
  3: "Remover",
  4: "Sair"
};

cadastroUsuario() {
  while(condicao) {
    print("Selecione uma opção");
    ListarMenu();
    String inputOpcao = stdin.readLineSync();
    int opcao = int.parse(inputOpcao);
    OpcaoSelecionada(opcao);
  }

}

void OpcaoSelecionada(int opcao) {

  bool opcaoCorreta = Menu.containsKey(opcao);

  if(!opcaoCorreta) {
    print("Opção incorreta");
    ListarMenu();
  }

  switch (opcao) {
    case 1:
      AdicionarUsuario();
      break;
    case 2:
      ListarUsuarios();
      break;
    case 3:
      RemoverUsuario();
      ListarUsuarios();
      break;
    case 4:
      FinalizarSistema();
      break;
    default:
  }
}

void AdicionarUsuario() {
  
  print("Digite o nome do usuario");
  String nomeUsuario = stdin.readLineSync();

  int key = cadastro.length + 1;

  cadastro.addAll({key: nomeUsuario});
}

void RemoverUsuario() {
  print("Digite o codigo do usuario que deseja remover");

  cadastro.forEach((key, value) {
    print("Cod: ${key} Nome: ${value}");
  });

  String key = stdin.readLineSync();
  cadastro.remove(int.parse(key));
}

void ListarMenu() {
 Menu.forEach((key, value) {
   print("${key} - ${value}");
 });
}

void ListarUsuarios() {
  cadastro.forEach((key, value) {
    print("Cod: ${key} Nome: ${value}");
  });
}

void FinalizarSistema() {
  print("Sistema finalizado");
  condicao = false;
}

