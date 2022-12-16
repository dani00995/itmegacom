

void main(List<String> args) {
  print('GAME N-1');
  int userInput = 32;
  double i = 100;
  double less = 100;
  double greater = 0;
  int count = 0;

  double guess(){
    if(i>userInput){
      print('Is it $i\n>less\n');
      less = i;
      if((less-greater)%2==0){
        return less-((less-greater)/2);
      }else{
        return less-((less-greater-1)/2);
      }
    }else{
    print('Is it $i\n>greater\n');
    greater = i;
      if((less-greater)%2==0){
      return less+((less-greater)/2);
      }else{
      return less+((less-greater-1)/2);
      }
    }
  }

  do {
    count++;
    if(i==userInput){
      print('Is it $i\nyes\n\nGot it in $count steps! ');
      return;
    }
    i = guess();
  } while (i>0);
}