import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  TaskOne taskOne = TaskOne();
  taskOne.bobble();

  taskTwo();

  TaskThree taskThree = TaskThree();
  //Что бы добавить stdin, пример:
  //taskThree.start(quiz: stdin.readLineSync()!);
  taskThree.start();

  TaskFour taskFour = TaskFour();
  taskFour.start();

  TaskFive taskFive = TaskFive();
  taskFive.start();
}

String seperator = '\n=============================';

class TaskOne {
  List<int> numbers = [-10, 54, 21, 98, -2, 15, -23, 100, -91, 5];
  void bobble() {
    numbers.sort();
    print(numbers);
  }
}

void taskTwo() {
  String a = "data 48 call 9231dadsad read13 blank0a";
  print('$seperator\n$a');
  List<String> list = a.split(" ");
  String maxStr = '';
  int max = 0;
  for (String s in list) {
    if (s.length > max) {
      max = s.length;
      maxStr = s;
    }
  }
  print(maxStr);
}

class TaskThree {
  List<String> answers = [
    '-Да',
    '-Нет',
    '-Скорее всего да',
    '-Скорее всего нет',
    '-Возможно',
    '-Имеются перспективы',
    '-Вопрос задан неверно'
  ];

  void start({String quiz = 'Я стану лучшим программистом?'}) {
    int random = Random().nextInt(6);
    print('Вопрос: $quiz\nОтвет: ${answers[random]}');
  }
}

class TaskFour {
  void start() {
    List<Soldat> army = [];
    List<Soldat> zvaniya = [
      Ryadovoi(),
      Efreitor(),
      Praporshik(),
      StarwiyPraporshik(),
      Kapitan(),
      General()
    ];
    for (int i = 0; i < 100; i++) {
      int random = Random().nextInt(6 - 0);
      army.add(zvaniya[random]);
    }
    List<Soldat> soldaty = [];
    List<Soldat> praporshiki = [];
    List<Soldat> oficery = [];
    army.forEach((element) {
      switch (element.runtimeType) {
        case Ryadovoi:
        case Efreitor:
          soldaty.add(element);
          break;
        case Praporshik:
        case StarwiyPraporshik:
          praporshiki.add(element);
          break;
        case Kapitan:
        case General:
          oficery.add(element);
          break;
      }
    });

    print(seperator + 'Soldaty ${soldaty.length}');
    print('Praporshiki ${praporshiki.length}');
    print('Oficery ${oficery.length}');
  }
}

class Soldat {}

class Ryadovoi extends Soldat {}

class Efreitor extends Soldat {}

class Praporshik extends Soldat {}

class StarwiyPraporshik extends Soldat {}

class Kapitan extends Soldat {}

class General extends Soldat {}

class TaskFive {
  void start() {
    Ram ram = Ram(count: Random().nextInt(6));
    ram.printInfo();

    Cow cow = Cow(count: Random().nextInt(6));
    cow.printInfo();

    Horse horse = Horse(count: Random().nextInt(6));
    horse.printInfo();
  }
}

class Animal {
  int count;
  int price;
  int meat;
  String animal;
  Animal(
      {required this.count,
      required this.price,
      required this.meat,
      required this.animal});
  void printInfo() {
    print(
        '$seperator\n$animal\nкол-во: $count\nобщий вес: ${count * meat}кг\nцена: ${count * price}сом');
  }
}

class Ram extends Animal {
  Ram(
      {required super.count,
      super.price = 15000,
      super.meat = 20,
      super.animal = "Баран"});
}

class Cow extends Animal {
  Cow(
      {required super.count,
      super.price = 150000,
      super.meat = 150,
      super.animal = "Корова"});
}

class Horse extends Animal {
  Horse(
      {required super.count,
      super.price = 100000,
      super.meat = 100,
      super.animal = "Лошадь"});
}
