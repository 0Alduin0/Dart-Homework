import 'dart:math';

void main() {
  var random = Random();
  List<int> numbers = [0, 0, 0, 0, 0]; //the list we have
  List<int> desiredNumbers = [1, 3, 5, 7, 9]; //the list that we want to create
  int i = 0; //Declare the index of list
  int attempt = 0; //Declare the number of trying
  while (i < 5) {
    int randomNumber = random.nextInt(11); //Generate random integer
    numbers[i] = randomNumber; //give first integer to list
    //checking the index of lists if it is true we increment i variable
    if (numbers[i] == desiredNumbers[i]) {
      i++;
      attempt++;
    } else //if same index of lists is different the index is going to start point
      i = 0;
  }
  print(attempt);
}
