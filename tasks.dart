import 'dart:io';

void main() {
  //----------------- Q1 -----------------//

  int x = 5;
  int y = 10;

  print('$x + $y = ${x + y}');
  print('$x - $y = ${x - y}');
  print('$x * $y = ${x * y}');

  //----------------- Q2 -----------------//

  int a =int.parse(stdin.readLineSync()!);
  int b =int.parse(stdin.readLineSync()!);
  int c =int.parse(stdin.readLineSync()!);
  int d =int.parse(stdin.readLineSync()!);

  print((a * b) - (c * d));

  //----------------- Q3 -----------------//

  const P = 3.141592653;
  double R = double.parse(stdin.readLineSync()!);
  double p2 = R * 2;
  if (R >= 1 && R <= 100) {
    print('Area = ${P * p2}');
  } else {
    print('PLZ Enter Number 1 ==> 100 ');
  }

  //----------------- Q4 -----------------//

  int N = int.parse(stdin.readLineSync()!);

  int years = 0;
  int months = 0;
  int days = 0;

  if (N >= 365) {
    years = N ~/ 365;
    N = N % 365;
  }

  if (N >= 30) {
    months = N ~/ 30;
    N = N % 30;
  }

  days = N;
  print("$years years");
  print("$months months");
  print("$days days");

  //----------------- Q5 -----------------//

  int n = int.parse(stdin.readLineSync()!);
  int sum = n * (n + 1) ~/ 2;
  print(sum);

  //----------------- Q6 -----------------//

  String? line = stdin.readLineSync();

  if (line == null || line.trim().isEmpty) {
    print("No input!");
    return;
  }
  
  List<String> input = line.split(' ');

  if (input.length < 4) {
    print("Invalid input! Please enter 4 numbers.");
    return;
  }

  int A = int.parse(input[0]);
  int B = int.parse(input[1]);
  int C = int.parse(input[2]);
  int D = int.parse(input[3]);
  int result = A;

  result = (result * B) % 100;
  result = (result * C) % 100;
  result = (result * D) % 100;

  print(result);
}
