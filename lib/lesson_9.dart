import 'dart:ffi';

void main(List<String> args) {
  task1();
  task2();
}

void task1() {
  Phone first = Phone(number: "0500123123", model: "iPhone", weight: 0.2);
  Phone second = Phone(number: "05009999999", model: "Samsung", weight: 0.3);
  Phone third = Phone(number: "0555758585", model: "Mi", weight: 0.4);
  first.receiveParametres();
  second.receiveParametres();
  third.receiveParametres();
  first.getNumber();
  second.getNumber();
  third.getNumber();
  first.receiveCall("Adyl");
  first.sendMessage(second.number);
}

class Phone {
  String number;
  String model;
  double weight;

  receiveParametres() {
    print("$number, $model, $weight");
  }

  receiveCall(String name) {
    print("звонит $name");
  }

  getNumber() {
    print(number);
  }

  sendMessage(String send) {
    print("сообщение будет отправлено на номер $send");
  }

  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });
}

void task2() {
  Reader daniel = Reader(
    fio: "Ergeshaliev Daniel",
    libraryCardNumber: "123",
    faculty: "Medicine",
    dateOfBirth: "21.05.1995",
    number: "0700552919",
  );
  daniel.takeBook(countOfBooks: 5);
  daniel.takeBook(
      namesOfBooks: ["География", "Литра", "Матем", "Физика", "Англ"]);
  daniel.returnBook(countOfReturns: 5);
  daniel.returnBook(namesOfReturns:["География", "Литра", "Матем", "Физика", "Англ"]);
}

class Reader {
  String fio;
  String libraryCardNumber;
  String faculty;
  String dateOfBirth;
  String number;

  takeBook({int? countOfBooks, List<String>? namesOfBooks}) {
    print(countOfBooks != null
        ? "$fio взял(а) $countOfBooks книг(и)"
        : "$fio взял(а) книги: $namesOfBooks");
  }

  returnBook({int? countOfReturns, List<String>? namesOfReturns}) {
    print(countOfReturns != null
        ? "$fio вернул(а) $countOfReturns книг(и)"
        : "$fio вернул(а) книги: $namesOfReturns");
  }

  Reader({
    required this.fio,
    required this.libraryCardNumber,
    required this.faculty,
    required this.dateOfBirth,
    required this.number,
  });
}
