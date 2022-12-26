import 'dart:io';

void main(List<String> args) {
  //Task 1
  Scooter scooter = Scooter();
  scooter.printName("Скутер");
  scooter.getDataPrint();
  Bus bus = Bus();
  bus.printName("Бус");
  bus.getDataPrint();
  MiniBus miniBus = MiniBus();
  miniBus.printName("Мини Бус");
  miniBus.getDataPrint();

  //Task 2
  List<Person> personsList = [];
  print("Имя учителя");
  personsList.add(Teacher(stdin.readLineSync()!));
  print("Имя ученика");
  personsList.add(Student(stdin.readLineSync()!));
  print("Имя ученика");
  personsList.add(Student(stdin.readLineSync()!));
  for(Person person in personsList){
    if(person.runtimeType==Teacher){
      Teacher(person.name).explanation();
    }else{
      Student(person.name).study();
    }
  }

}

class Vehicle {
  int maxSpeed;
  int mileAge;
  int seatingCapacity;
  String color = "Белый";
  Vehicle(
      {required this.maxSpeed,
      required this.mileAge,
      required this.seatingCapacity});

  void getDataPrint(){
        print(
        'Цвет: $color\n'+
        'Макс скорость: $maxSpeed\n'+
        'Пробег: $mileAge\n'+
        'Кол-во мест: $seatingCapacity\n'+
        'Общая стоимость с процентами: ${(seatingCapacity * 100) * 0.1 + (seatingCapacity * 100)}\n');
  }
  void printName(String name){
    print("Вид транспорта: '$name'");
  }
}


class Scooter extends Vehicle {
  Scooter():super(maxSpeed: 60, mileAge: 10000, seatingCapacity: 1);  
}

class Bus extends Vehicle {
    Bus():super(maxSpeed: 120, mileAge: 90000, seatingCapacity: 50);  
}

class MiniBus extends Vehicle {
 MiniBus():super(maxSpeed: 120, mileAge: 70000, seatingCapacity: 20);  
}

class Person{
  String name;
  Person(this.name);
}
class Student extends Person{
  Student(super.name);  
  void study(){
    print("студент $name учится");
  }
}
class Teacher extends Person{
  Teacher(super.name);  
  void explanation(){
    print("учитель $name объясняет");
  }
}
