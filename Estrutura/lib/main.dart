
import 'src/algoritmoIdade.dart';
import 'src/algoritmoImc.dart';
import 'src/cadastro.dart';
import 'src/carrinho_compra.dart';

void main(List<String> arguments) {
  if(arguments.contains("calculo-idade")) {
    calculoIdade();
  } else if(arguments.contains("imc")) {
    algoritmoImc();
  } else if(arguments.contains("cadastro")) {
    cadastroUsuario();
  } else if(arguments.contains("carrinho")) {
    carrinhoCompra();
  }
}
