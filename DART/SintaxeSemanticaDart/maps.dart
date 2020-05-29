main(){
  // Lista de Strings
  List<String> array = [];

  // Maps
  Map maps = {
    //key   //value
    "nome": "teste",
    "sobreNome" : "teste2"
  };

  //buscando pela key
  print("${maps["nome"]} ${maps["sobreNome"]}");


  // Maps tipado
  // Key tipo "int", value tipo "String"
  Map<int, String> mapsTipado = {
    1: "Valor1",
    2: "Valor2"
  };

  mapsTipado.addAll({ 3: "Valor3" });

  print(mapsTipado);

}