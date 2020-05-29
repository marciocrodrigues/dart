class Humano{
  double _peso;
  double _altura;

  double get getPeso{
    return _peso;
  }

  double get getAltura{
    return _altura;
  }

  Humano({double peso, double altura}){
    _peso = peso;
    _altura = altura;
  }
}