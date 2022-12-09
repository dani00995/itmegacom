void main(List<String> args) {
//Сделайте функцию, которая возвращает квадрат числа. Число передается параметром.
print(getSquare(10));

//Сделайте функцию, которая возвращает сумму двух чисел.
print(getSumm(10, 24));

//Есть массив, List array = [1, 3, 4, 5, 6]; возвратите его первый элемент
print(array);

//Сделайте функцию, которая отнимает от первого числа второе и делит на третье.
print(callFun(3,2,3));

//Создайте bool переменную и напишите условие (if…else), выведите сообщение
//«Переменная имеет значение (значение вашей переменной)
myBool(true);

// Создайте функцию, которая принимает число в качестве единственного аргумента
//и возвращает true, если оно меньше или равно нулю, в противном случае возвращает false.
print(getResult(0));

// Дан массив с числами. Проверьте, есть ли в нем два одинаковых числа подряд.
//Если есть - выведите 'да', а если нет - выведите 'нет'.
List myList = [1, 4, 5, 6, 5, 76, 56];
print(getChekList(myList));


}

double callFun(int i, int j, int k) {
  return (i-j)/k;
}
  int getSquare(int num) {
    return num * 2;
  }

  int getSumm(int a, int b) {
    return a + b;
  }

  int convertSec(int minut) {
    return minut * 60;
  }

  var array = [1, 3, 4, 5, 6].first;
  


  myBool(bool myBool){
  if (myBool) {
    print("Переменная имеет значение $myBool");
  } else {
    print("Переменная имеет значение $myBool");
  }
  }

  bool getResult(int count) {
    if (count <= 0) {
      return true;
    } else {
      return false;
    }
  }

// Дан массив с числами. Проверьте, есть ли в нем два одинаковых числа подряд.
//Если есть - выведите 'да', а если нет - выведите 'нет'.
  String getChekList(List myList){
    List _list = [];
    for(var i =0; i<myList.length; i++){
      if(_list.contains(myList[i])){
        return "Дa";
      }else{
        _list.add(myList[i]);
      }
    }
    return "Нет";
  }