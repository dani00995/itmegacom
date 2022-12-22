void main(List<String> args) {}

class Vehicle {
  int maxSpeed;
  int mileAge;
  int seatingCapacity;
  Vehicle(
      {required this.maxSpeed,
      required this.mileAge,
      required this.seatingCapacity});

  void getPrice() {
    print(
        'Общая стоимость с процентами: ${(seatingCapacity * 100) * 0.1 + (seatingCapacity * 100)}');
  }
}

class Scooter extends Vehicle {
  String color = "Белый";
  Scooter(
      {required super.maxSpeed,
      required super.mileAge,
      required super.seatingCapacity}) {
    getPrice();
  }
}

class Bus implements Vehicle {
  String color = "Белый";
  @override
  int maxSpeed = 80;

  @override
  int mileAge = 8000;

  @override
  int seatingCapacity = 50;

  @override
  void getPrice() {}
}
