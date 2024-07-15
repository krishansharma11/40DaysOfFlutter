void greet(String name) {
  print('Hello, $name');
}

int add(int a, int b) {
  return a + b;
}

void main() {
  //Varialbles
  var name = 'John'; //changeble
  final age = 35; //when its used then initialied
  const pi = 3.14; // constant at compile time

  print(name);
  print(age);
  print(pi);

//data type
  int agePerson = 30;
  double height = 5.9;
  String namePerson = 'John';
  bool isStudent = true;
  List<String> colors = ['Red', 'Green', 'Blue'];

  print(age);
  print(height);
  print(name);
  print(isStudent);
  print(colors);

//functions
  greet("Willium");
  add(10, 20);

  //Control Flow
  int number = 10;

  // if-else statement
  if (number > 0) {
    print('Positive');
  } else {
    print('Negative');
  }

  // for loop
  for (int i = 0; i < 5; i++) {
    print(i); // Output: 0 1 2 3 4
  }

  // while loop
  int count = 0;
  while (count < 5) {
    print(count); // Output: 0 1 2 3 4
    count++;
  }

  // switch statement
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    default:
      print('Invalid grade');
  }
}
