import 'dart:io';
String seperator = "========================\n";
void main(List<String> args) {
  TaskOne taskOne = TaskOne();
  taskOne.setYear(2024);
  taskOne.chekYear();

  TaskTwo taskTwo = TaskTwo();
  taskTwo.setNumber(15);
  taskTwo.decusion();

  TaskThree taskThree = TaskThree();
  taskThree.setNumber(25);
  taskThree.decusion();

  TaskFour taskFour = TaskFour();
  taskFour.setNumber(24);
  taskFour.checkNumber();

  TaskFive taskFive = TaskFive();
  taskFive.addAndPintPlayers();

  
}

class TaskOne{
  int year = 2022;
  void setYearStdin(){
    print("Введите год");
    year = int.parse(stdin.readLineSync()!);
  }
  void setYear(int year){
    this.year = year;
  }
  void chekYear(){
    print("високосный $year год?");
    if(year%4!=0){
      print("ответ: Нет");
    }else if(year%100==0){
      if(year%400==0){
        print("ответ: Да");
      }else{
        print("ответ: Нет");
      }
    }else{
      print("ответ: Да");
    }
  }
}

class TaskTwo{
  double number = 21;
  void setNumber(double number){
    this.number = number;
  }

  void decusion(){
    int count = 0;
    while(number != 1){
      count++;
      if(number%2==0){
        number/=2;
      }else{
        number*=3;
        number++;
        number/=2;
      }
    }
    print("$seperatorКол-во повторов: $count");
    print(number);
  }

}

class TaskThree{
  int number = 1;
  void setNumberStdin(){
    number = int.parse(stdin.readLineSync()!);
  }
  void setNumber(int number){
    this.number = number;
  }

  void decusion(){
    List<int> evenList = [];
    List<int> notEvenList = [];
    for(int i = 1; i<= number; i++){
      if(i%2==0){
        evenList.add(i);
      }else{
        notEvenList.add(i);
      }
      
    }
    print("$seperatorчетные числа: $evenList\nнечетные числа: $notEvenList");
  }
}

class TaskFour{
  int number = 6;
  void setNumberStdin(){
    number = int.parse(stdin.readLineSync()!);
  }
  void setNumber(int number){
    this.number = number;
  }
  void checkNumber(){
    print("$seperatorсовершенное ли $number?");
    List<int> numbersList = [];
    String summStrn = "";
    int summ = 0;
    for(int i = 1; i< number; i++){
      if(number%i==0){
        numbersList.add(i);
      }
    }
    numbersList.asMap().forEach((key, value) {
      summ+=value;
      if(key==numbersList.length-1){
        summStrn+="$value";
      }else{
        summStrn+="$value + ";
      }
    });

    if(summ==number){
      summStrn = "$number = $summStrn";
      print("Да, $summStrn");
    }else{
      summStrn = "$number != $summStrn";
      print("Нет, $summStrn");
    }

  }
}

class TaskFive{
  List<Football> barsa = [];
  List<Football> real = [];
  void addAndPintPlayers(){
    print(seperator);
    barsa.add(Goalkeeper(name: "Хосе Пинто"));
    real.add(Goalkeeper(name: "Андрей Лунин"));

    barsa.add(Quarterback(name: "Эктор Бельерин"));
    barsa.add(Quarterback(name: "Рональд Араухо"));
    barsa.add(Quarterback(name: "Андреас Кристенсен"));
    barsa.add(Quarterback(name: "Маркос Алонсо"));
    real.add(Quarterback(name: "Дани Карвахаль"));
    real.add(Quarterback(name: "Эдер Милитан"));
    real.add(Quarterback(name: "Давид Алаба"));
    real.add(Quarterback(name: "Хесус Вальехо"));

    barsa.add(Midfielder(name: "Серхио Бускетс"));
    barsa.add(Midfielder(name: "Педри"));
    barsa.add(Midfielder(name: "Франк Кессье"));
    barsa.add(Midfielder(name: "Серджи Роберто"));
    real.add(Midfielder(name: "Тони Кроос"));
    real.add(Midfielder(name: "Лука Модрич"));
    real.add(Midfielder(name: "Марко Асенсио"));
    real.add(Midfielder(name: "Эдуарду Камавинга"));


    barsa.add(Attack(name: "Усман Дембеле"));
    barsa.add(Attack(name: "Роберт Левандовски"));
    real.add(Attack(name: "Карим Бензема"));
    real.add(Attack(name: "Эден Азар"));

    print("Барса");
    for (var element in barsa) {element.printPlayer();}
    print("\n\nРеал");
    for (var element in real) {element.printPlayer();}
  }

  

}

class Football{
  String name;
  String position;
  Football({required this.name, required this.position});
  void printPlayer(){
    print("$name - $position");
  }
}
class Goalkeeper extends Football{
  Goalkeeper({required super.name}) : super(position: 'Вратарь');
}
class Quarterback extends Football{
  Quarterback({required super.name}) : super(position: 'Защитник');
}
class Midfielder extends Football{
  Midfielder({required super.name}) : super(position: 'Полузащитник');
}
class Attack extends Football{
  Attack({required super.name}) : super(position: 'Нападающий');
}

class TaskSix{
  
}