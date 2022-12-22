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
    print((seatingCapacity * 100) * 0.1 + (seatingCapacity * 100));
  }
}

class Scooter extends Vehicle {
  Scooter(
      {required super.maxSpeed,
      required super.mileAge,
      required super.seatingCapacity}) {
    getPrice();
  }
}

class Bus implements Vehicle {
  @override
  int maxSpeed = 80;

  @override
  int mileAge = 8000;

  @override
  int seatingCapacity = 0;

  @override
  void getPrice() {}
}
