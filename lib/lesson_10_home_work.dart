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

// 3)Машина Toyota имеет 3 поколения машин.

// На первом поколении стоит двигатель 'JZ',кузов машины железный,
//обычная подвеска и ксеноновые фары.
// Во втором поколении поменяли мотор на 'GR', подвеска стала пневмоподвеской.
// В третьем поколении поменяли фары на лезерные и кузов состоит из металозаменителя.
// Вывыдите на экран все поколения с параметрами.
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
//_________________________________task 3 _____________

class Father {
  String ruka = 'правша';
  String volosy = 'брюнет';
  String glaza = 'карие';
  String vneshnost = 'Азиат';
  Father({String? ruka, String? volosy, String? glaza, String? vneshnost});
}
