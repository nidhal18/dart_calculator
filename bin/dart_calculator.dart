

import 'dart:io';

void main() {
  double? numone, numtwo;
  String operation;

// take in numone
  while (true) {
    try {
      print("Enter a number; ");
      numone = double.parse(stdin.readLineSync()!);
      break;
    } on FormatException {
      print("You did not enter a valid number!");
    }
  }

// take in numtwo
  while (true) {
    try {
      print("Enter another number: ");
      numtwo = double.parse(stdin.readLineSync()!);
      break;
    } on FormatException {
      print("You did not enter a valid number!");
    }
  }

// decide on operation (+, -, *, or /)
  while (true) {
    print(
        "What operation do you want to perform on these two numbers; +, -, *, or /?");
    operation = stdin.readLineSync()!;
    if (operation == "+" ||
        operation == "-" ||
        operation == "*" ||
        operation == "/") {
      break;
    } else {
      print("Thats not a choice, bub.");
    }
  }

  // complete the operation and print the result to the user
  switch (operation) {
    case "+":
      {
        print("$numone + $numtwo = ${numone + numtwo}.");
      }
      break;

    case "-":
      {
        print("$numone - $numtwo = ${numone - numtwo}.");
      }
      break;

    case "*":
      {
        print("$numone x $numtwo = ${numone * numtwo}.");
      }
      break;
  }
}
