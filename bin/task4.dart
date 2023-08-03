import 'dart:io';

void main() {
  //Task1 --> Avg
  // double sum = 0;
  // double avg;
  // double input;
  // bool isPrime = false;
  // double min = 999999999999999;
  // double max = -999999999999999;
  // print('Enter number of items');
  // int numberOfItems = int.parse(stdin.readLineSync()!);
  // for (int i = 0; i < numberOfItems; i++) {
  //   print("Enter number ${i+1}: ");
  //   input = double.parse(stdin.readLineSync()!);
  //   if (input % 2 == 0) {
  //     print('Input is $input is even number ');
  //   } else if (input % 2 != 0) {
  //     if (input == 1) {
  //       print('Input is $input is odd number and prime number');
  //     } else {
  //       print('Input is $input is odd number ');
  //     }
  //   }
  //   for (int i = 2; i <= input / 2; i++) {
  //     if (input % i == 0) {
  //       isPrime = false;
  //     } else {
  //       isPrime = true;
  //       break;
  //     }
  //   }
  //   if (isPrime) {
  //     print('input is $input is prime number');
  //   }

  //   if (min >= input) {
  //     min = input;
  //   }
  //   if (max <= input) {
  //     max = input;
  //   }
  //   sum += input;
  // }
  // avg = sum / numberOfItems;
  // print("Sum is : $sum , Average is : $avg");
  // print("Max : $max");
  // print("Min : $min");
  //---------------------------------------------------------------------------------------------------------------------
  // // task1 modified

  double sum = 0;
  double avg;
  int input;
  // bool isPrime = true;
  int min = 999999999999999;
  int max = -999999999999999;
  String even = 'Even : ';
  String odd = 'Odd : ';
  String prime = 'Prime : ';
  print('Enter number of items');
  int numberOfItems = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numberOfItems; i++) {
    print("Enter number ${i + 1}: ");
    input = int.parse(stdin.readLineSync()!);
    if (input % 2 == 0) {
      even = '$even ${input.toString()}';
    } else if (input % 2 != 0) {
      odd = '$odd  ${input.toString()}';
    }

    int num = input;
    bool isPrime = true;

    if (num <= 1) {
      isPrime = false;
    } else {
      for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      prime = '$prime  ${input.toString()}';
    }

    if (min >= input) {
      min = input;
    }
    if (max <= input) {
      max = input;
    }
    sum += input;
  }

  avg = sum / numberOfItems;
  print(
      '--------------------------------------------------------------------------');
  print(even);
  print('');
  print(odd);
  print('');
  print(prime);
  print('');
  print("Sum is : $sum , Average is : $avg\n");
  print("Max : $max\n");
  print("Min : $min\n");
//------------------------------------------------------------------------------------------------------------
  //Task 2 --> Loop Drawing

  // for (int i = 1; i <= 3; i++) {
  //   if (i == 1) {
  //     print(
  //         '--------- table $i -------------- table${i + 1} ----------------- table${i + 2} --------------  table${i + 3}  --------\n');
  //   }
  //   if (i == 2) {
  //     print(
  //         '--------- table ${i + 3} -------------- table${i + 4} ----------------- table${i + 5} --------------  table${i + 6}  --------\n');
  //   }
  //   if (i == 3) {
  //     print(
  //         '--------- table ${i + 6} -------------------------------------------------------------------------------\n');
  //   }
  //   for (int j = 1; j <= 9; j++) {
  //     if (i == 1) {
  //       print(
  //           '|\t$j * $i = ${i * j}\t|\t$j * ${i + 1} = ${(i + 1) * j}\t|\t$j * ${i + 2} = ${(i + 2) * j}\t|\t$j * ${i + 3} = ${(i + 3) * j}\t|\n');
  //     }
  //     if (i == 2) {
  //       print(
  //           '|\t$j * ${i + 3} = ${(i + 3) * j}\t|\t$j * ${i + 4} = ${(i + 4) * j}\t|\t$j * ${i + 5} = ${(i + 5) * j}\t|\t$j * ${i + 6} = ${(i + 6) * j}\t|\n');
  //     }
  //     if (i == 3 && j != 3 && j != 4 && j != 5 && j != 6) {
  //       print('|\t$j * ${i + 6} = ${(i + 6) * j}\t|\t\t\t\t\t\t\t\t\t|\n');
  //     } else if (i == 3 && j == 3) {
  //       print(
  //           '|\t$j * ${i + 6} = ${(i + 6) * j}\t|\t\t\t\tINSTANT ST-28\t\t\t\t|\n');
  //     } else if (i == 3 && j == 4) {
  //       print(
  //           '|\t$j * ${i + 6} = ${(i + 6) * j}\t|\t\t\t      Kerolos Fady Ezzat\t\t\t|\n');
  //     } else if (i == 3 && j == 5) {
  //       print(
  //           '|\t$j * ${i + 6} = ${(i + 6) * j}\t|\t\t\t\tCS Department \t\t\t\t|\n');
  //     } else if (i == 3 && j == 6) {
  //       print(
  //           '|\t$j * ${i + 6} = ${(i + 6) * j}\t|\t\t    \t\t   Task-4\t\t \t\t|\n');
  //     }
  //   }
  //   if (i == 3) {
  //     print(
  //         '-------------------------------------------------------------------------------------------------');
  //   }
  // }
//------------------------------------------------------------------------------------------------------------

  //Task 3 Login Register
  // String? firstName;
  // String? lastName;
  // String? phone;
  // String? email;
  // String? password;
  // String? confirmPassword;
  // String emailReg =
  //     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  // RegExp regExp = RegExp(emailReg);

  // while (true) {
  //   if (firstName == null) {
  //     print("Enter your First name");
  //     firstName = stdin.readLineSync();
  //     print("Enter your last name");
  //     lastName = stdin.readLineSync();
  //     print("Enter your phone");
  //     phone = stdin.readLineSync();
  //     print("Enter your email");
  //     email = stdin.readLineSync();
  //     print("Enter your password");
  //     password = stdin.readLineSync();
  //     print("confirm your password");
  //     confirmPassword = stdin.readLineSync();
  //   }
  //   if (firstName == null || firstName == '') {
  //     print("error, please enter your First name again ....");
  //     firstName = stdin.readLineSync();
  //   }
  //   if (lastName == null || lastName == '') {
  //     print("error, please Enter your last name again ...");
  //     lastName = stdin.readLineSync();
  //   }
  //   if (phone == null || phone == '') {
  //     print("error , please Enter your phone again ...");
  //     phone = stdin.readLineSync();
  //   }
  //   if (email == null || email == '') {
  //     print("error , please Enter your email again ...");
  //     email = stdin.readLineSync();
  //   }
  //   if (regExp.hasMatch(email!) == false) {
  //     email = null;
  //     print('error in syntax of email , please Enter valid email');
  //     email = stdin.readLineSync();
  //   }
  //   if (password == null || password == '') {
  //     print("error , please Enter your password again...");
  //     password = stdin.readLineSync();
  //   }
  //   if (confirmPassword == null || confirmPassword == '') {
  //     print("error , please confirm your password again...");
  //     confirmPassword = stdin.readLineSync();
  //   }

  //   if (password != confirmPassword) {
  //     password = null;
  //     confirmPassword = null;
  //     print('please be cureful when you write your password and confirm it');
  //   }

  //   if ((confirmPassword != null && confirmPassword != '') &&
  //       (password != null && password != '') &&
  //       (email != null && email != '') &&
  //       (firstName != null && firstName != '') &&
  //       (lastName != null && lastName != '') &&
  //       (phone != null && phone != '') &&
  //       regExp.hasMatch(email  ) != false) {
  //     print('\n-------------------------');
  //     print('| Register successfully |');
  //     print('-------------------------\n');
  //     break;
  //   }
  // }

  // print('-----------------------------------------------------------\n');
  // print('\n--------------------------');
  // print('| Log in to your account |');
  // print('--------------------------\n');

  // String? emailOrPhone;
  // String? logPass;

  // for (int i = 2; i >= 0; i--) {
  //   stdout.write('enter your email or phone : ');
  //   emailOrPhone = stdin.readLineSync();
  //   stdout.write('enter your password : ');
  //   logPass = stdin.readLineSync();
  //   if (emailOrPhone == phone && logPass == password) {
  //     print('\n---------------------------------');
  //     print('| Login successfully with phone |');
  //     print('---------------------------------\n');
  //     print("your first name is : $firstName");
  //     print("your last name is : $lastName");
  //     print("your email is : $email");
  //     print("your phone is : $phone");
  //     print('\n---------------------------------\n');
  //     break;
  //   } else if (emailOrPhone == email && logPass == password) {
  //     print('\n---------------------------------');
  //     print('| Login successfully with email |');
  //     print('---------------------------------\n');
  //     print("your first name is : $firstName");
  //     print("your last name is : $lastName");
  //     print("your email is : $email");
  //     print("your phone is : $phone");
  //     print('\n---------------------------------\n');
  //     break;
  //   } else {
  //     if (i == 0) {
  //       print('Sorry but your account is locked ,please contact us');
  //     } else {
  //       print(
  //           'Invalid email or phone or password and you have $i tryies,  please try again ');
  //     }
  //   }
  // }
}
