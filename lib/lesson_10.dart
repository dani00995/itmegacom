void main(List<String> args) {
  Devoloper vasyia = Devoloper(
      name: "Vasya",
      age: 25,
      gender: "male",
      skills: ['dart', 'flutter'],
      salary: [1000, 3567, 2000, 3000]);

  Bugalter olya = Bugalter(name: "Olya", age: 55, gender: 'famale');
  print(olya.getAvaregeMony(vasyia.salary));
}

class Animals {
  String name;
  int age;
  String family;

  String vois() {
    return "Miyau";
  }

  Animals({required this.name, required this.age, required this.family});

  String eat(String meat) {
    if (meat == 'wiskas') {
      return 'home';
    } else
      return 'wilde';
  }
}

class Cat extends Animals {
  String color;
  int speed;
  Cat(
      {required super.name,
      required super.age,
      required super.family,
      required this.color,
      required this.speed});

  @override
  String eat(String meat) {
    return super.eat(meat);
  }
}

class Humman {
  String name;
  int age;
  String gender;
  Humman({required this.name, required this.age, required this.gender});
}

class Devoloper extends Humman {
  List<String> skills;
  List<int> salary;
  Devoloper(
      {required super.name,
      required super.age,
      required super.gender,
      required this.skills,
      required this.salary});
}

class Bugalter extends Humman {
  Bugalter({required super.name, required super.age, required super.gender});
  double getAvaregeMony(List<int> salary) {
    int summ = 0;
    for (int i in salary) {
      summ += i;
    }
    return summ / salary.length;
  }
}
