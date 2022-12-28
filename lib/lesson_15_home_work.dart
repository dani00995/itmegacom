import 'dart:math';

void main(List<String> args) {
  //Возвращает заработанные очки за один бросок в игре в дартс
  TaskOne taskOne = TaskOne();
  taskOne.darts(x: -5, y: 0);

  //Преобразование фразы в ее аббревиатуру.
  TaskTwo taskTwo = TaskTwo();
  taskTwo.createJargon("IT-megacom corporetion company");

  //Определяет, является ли треугольник равносторонним, равнобедренным или разносторонним.
  TaskThree taskThree = TaskThree();
  taskThree.enterSides(oneSide: 3, twoSide: 3, threeSide: 3);

  //Алгоритм Луна — это простая формула контрольной суммы 
  //правильный номер 4539 3195 0343 6467
  //неверный номер 8273 1232 7352 0569
  TaskFour taskFour = TaskFour();
  taskFour.enterCardNum(numberStr: "8273 1232 7352 0569");
}

String seperator = '\n=======================';

class TaskOne {
  void darts({required int x, required int y}) {
    double radius = sqrt((x * x) + (y * y));
    int point = 0;
    if (10 > radius && radius > 5) {
      point = 1;
    } else if (radius <= 5 && radius > 1) {
      point = 5;
    } else if (radius <= 2 && radius >= 0) {
      point = 10;
    }
    print('$seperator\nВы заработали $point очко, вы попали $radius');
  }
}

class TaskTwo {
  void createJargon(String string) {
    String mStr = string;
    if (string.contains('-')) {
      mStr = mStr.replaceAll('-', ' ');
    }
    List<String> mStrings = mStr.split(' ');
    List<String> abbreviationList = [];
    for (String s in mStrings) {
      String abbreviation = s.trim()[0];
      abbreviationList.add(abbreviation);
    }
    print(
        "$seperator\nФраза: $string \nаббревиатура: ${abbreviationList.join().toUpperCase()}");
  }
}

class TaskThree {
  void enterSides(
      {required int oneSide, required int twoSide, required int threeSide}) {
    if (_checkTriangle(oneSide, twoSide, threeSide)) {
      print(seperator);
      if (oneSide == twoSide && twoSide == threeSide) {
        print('равносторонний треугольник');
      } else if (oneSide == twoSide ||
          oneSide == threeSide ||
          twoSide == threeSide) {
        print('равнобедренный треугольник');
      } else {
        print('разносторонний треугольник');
      }
      print(
          '1 сторона треугольника $oneSideсм\n2 сторона треугольника $twoSideсм\n3 сторона треугольника $threeSideсм');
    } else {
      print(
          'Треугольник не соответсвует нижеперечисленным условиям:\n-Не должен содержать 0\n-сумма длин любых двух сторон должна быть больше или равна длине третьей стороны');
    }
  }

  //Это приватная фукция для определение нет ли одно из сторон "0" и
  //сумма длин любых двух сторон больше или равна длине третьей
  //стороны. Если эти условие соблюдены тогда возврощает TRUE, если нет FALSE.
  bool _checkTriangle(int oneSide, int twoSide, int threeSide) {
    if ([oneSide, twoSide, threeSide].every((e) => e != 0)) {
      return (oneSide + twoSide >= threeSide)
          ? true
          : (oneSide + threeSide >= twoSide)
              ? true
              : (twoSide + threeSide >= oneSide)
                  ? true
                  : false;
    } else {
      print(false);
      return false;
    }
  }
}

class TaskFour {
  void enterCardNum({required String numberStr}) {
    if (numberStr.length < 1) {
      print("Ошибка! длина номера меньше 1го");
      return;
    }
    String cardNumStr = numberStr.replaceAll(" ", "");
    try {
      int.parse(cardNumStr);
    } catch (e) {
      print("Ошибка! номер карты содержит символы");
      return;
    }
    List<String> numList = cardNumStr.split('');
    List<int> doubledList = [];
    for (int i = 0; i < numList.length; i++) {
      int n = int.parse(numList[i]);
      if (i % 2 == 0) {
        n = n * 2;
        if (n.toString().trim().length > 1) {
          n -= 9;
        }
      }
      doubledList.add(n);
    }
    int summ = 0;
    for (int n in doubledList) {
      summ += n;
    }
    List<String> numWithSpace = [];
    for(int i = 0; i< numList.length; i++){
      if(i%4==0&&i!=0){
        numWithSpace.add(" ");
      }
      numWithSpace.add(numList[i]);
    }
    print('$seperator\n${numWithSpace.join()}');
    if (summ % 10 == 0) {
      print("$summ число правильное");
    } else {
      print("$summ число НЕверный");
    }
  }
}
