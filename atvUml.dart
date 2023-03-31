
abstract class Figura {

  late String
      _cor; 

  Figura(this._cor);

  void set setCor(String cor) {
    this._cor = cor;
  }

  String get cor {
    return this._cor;
  }
}

class Retangulo extends Figura {
  late double _lado1;
  late double _lado2;

  Retangulo(this._lado1, this._lado2, String cor) : super(cor);

  void set setLado1(double lado1) {
    this._lado1 = lado1;
  }

  void set setLado2(double lado2) {
    this._lado2 = lado2;
  }

  int funcaoSoma1(num1, num2) => num1 + num2;
  
  int funcaoSoma2(num1, num2){
    return num1 + num2;
  }

  double get lado1 => this._lado1;
  double get lado2 => this._lado2;

  double area() {
    return this._lado1 * this._lado2;
  }

  String toString() {

    return '''
      ======================

      lado 1: ${this._lado1} / lado 2: ${this._lado2} / área do RETÂNGULO: ${this.area()}

      ======================
    ''';
  }
}

class Quadrado extends Retangulo {

  Quadrado(double lado, String cor) : super(lado, lado, cor);

  String toString() {
    return '''
      =====================
      lados: ${this.lado1} / área do QUADRADO: ${this.area()}
      =====================
    ''';
  }
}

class Circulo extends Figura {
  late double _raio;

  Circulo(this._raio, String cor) : super(cor);

  void set setRaio(double raio) {
    this._raio = raio;
  }

  double getRaio() => this._raio;

  double area() {
    return (this._raio * this._raio) * 3.14;
  }

  double getDiametro() {
    return this._raio * 2;
  }

  String toString() {
    return '''
      =====================

      raio: ${this.getRaio()} / diâmetro: ${this.getDiametro()} / área do CIRCULO: ${this.area()}

      =====================
    ''';
  }
}

class Triangulo extends Figura {
  late double _base;
  late double _altura;

  Triangulo(this._base, this._altura, String cor) : super(cor);

  void set setBase(double base) {
    this._base = base;
  }

  void set setAltura(double altura) {
    this._altura = altura;
  }

  double get base => this._base;
  double get altura => this._altura;
  double area() {
    return this._base * this._altura;
  }

  String toString() {
    return '''
      =====================

      base: ${this._base} / altura: ${this._altura} / área do TRIÂNGULO: ${this.area()}

      =====================
    ''';
  }
}

void main(List<String> args) {

  Retangulo retangulo = Retangulo(6, 3, "Azul");
  Triangulo triangulo = Triangulo(6, 3, "Laranja");
  Circulo circulo = Circulo(6, "Vermelho");
  Quadrado quadrado = Quadrado(6, "Verde");

  print(retangulo.toString());
  print(triangulo.toString());
  print(circulo.toString());
  print(quadrado.toString());
}