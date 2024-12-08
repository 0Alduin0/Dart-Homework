import 'dart:math';

void main() {
  var random = Random();
  List<int> myList = [];
  List<int> targetList = [1, 3, 5, 7, 9];
  int attempt = 0;
  int number;
  while (true) {
    int counter = 0;
    myList.clear();
    int i = 0;
    while (counter < 5) {
      number = random.nextInt(9) + 1;
      if (number % 2 == 1 && number == targetList[i]) {
        myList.add(number);
        counter++;
        i++;
        if (counter == 5) break;
      }
      print(myList);
      attempt++;
    }
    if (targetList.toString() == myList.toString()) break;
  }

  print("list found at $attempt. try");
}
