void main(List<String> args) {
//   1) Создайте класс карта, где будут такие параметры как цвет, масть.
//При помощи наследования создайте классы таких карт, как туз,король,дама,валет
//и укажите значения параметров.
  List<String> suit = ["пики", 'червы', 'бубны', 'трефы'];
  List<String> color = ['черныe', 'красныe'];
  Tuz tuz = Tuz(color: color[1], suit: suit[2]);
  Valet valet = Valet(color: color[0], suit: suit[1]);
  tuz.openCard();
  valet.openCard();

// 2) Отец правша,брюнет с карими глазами и азиатской внешности.
//Сын унаследовал от отца цвет волос и глаз, но внешность больше похожа на
//славянскую, как у матери. Сын также является левшой. Создайте класс отца(Father)
//и наследующий от него класс сына(Son).
  Son().getDetiles();

// 3)Машина Toyota имеет 3 поколения машин.

// На первом поколении стоит двигатель 'JZ',кузов машины железный,
//обычная подвеска и ксеноновые фары.
// Во втором поколении поменяли мотор на 'GR', подвеска стала пневмоподвеской.
// В третьем поколении поменяли фары на лезерные и кузов состоит из металозаменителя.
// Вывыдите на экран все поколения с параметрами.
  Toyota generationOne = Toyota();
  generationOne.printDetile();
  ToyotaTwo generationTwo = ToyotaTwo();
  generationTwo.printDetile();
  ToyotaThree generationThree = ToyotaThree();
  generationThree.printDetile();
}

class Card {
  String color;
  String suit;
  Card({required this.color, required this.suit});
  void printCard(String name) {
    print('Карта $name, $color - $suit');
  }
}

class Tuz extends Card {
  Tuz({required super.color, required super.suit});
  @override
  void openCard() {
    super.printCard('Туз');
  }
}

class Korol extends Card {
  Korol({required super.color, required super.suit});
  @override
  void openCard() {
    super.printCard('Кoроль');
  }
}

class Dama extends Card {
  Dama({required super.color, required super.suit});
  @override
  void openCard() {
    super.printCard('Дама');
  }
}

class Valet extends Card {
  Valet({required super.color, required super.suit});
  @override
  void openCard() {
    super.printCard('Валет');
  }
}

//========// task 2 //=========//
class Father {
  String hand = 'правша';
  String hair = 'брюнет';
  String eyes = 'карие';
  String appearance = 'Азиатская';
}

class Son extends Father {
  @override
  String get appearance => super.appearance = "Славянская";
  @override
  String get hand => super.hand = "левша";
  void getDetiles() {
    print(
        "Внешность: $appearance, \nВолосы: $hair, \nГлаза: $eyes, \nРука: $hand");
  }
}

class Toyota {
  int generation;
  String engine;
  String body;
  String suspension;
  String headlights;
  Toyota(
      {this.generation = 1,
      this.engine = "JZ",
      this.body = "железный",
      this.suspension = "обычная",
      this.headlights = "ксеноновые"});
  void printDetile() {
    print(
        "\nПоколение: $generation\nдвигатель: $engine,\nкузов машины: $body,\nподвеска: $suspension,\nфары: $headlights");
  }
}

class ToyotaTwo extends Toyota {
  @override

  int get generation => super.generation=2;
  @override
  String get engine => super.engine = "GR";
  @override
  String get suspension => super.suspension = "пневмоподвеска";
  
}

class ToyotaThree extends ToyotaTwo {
  @override
  int get generation => super.generation=3;
  @override
  String get headlights => super.headlights = "лезерные";
  @override
  String get body => super.body = "металозаменитель";
  
}
