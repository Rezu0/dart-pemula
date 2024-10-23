import 'dart:io';
import 'package:konversi_suhu/class_animal.dart' as animal;
import 'package:konversi_suhu/class_bird.dart';
import 'package:konversi_suhu/class_cat.dart';
import 'package:konversi_suhu/extensions.dart';
// import 'package:konversi_suhu/class_user.dart';

void main() {
  var unsortedNumber = [2, 3, 6, 4, 5];
  var sortedNumber = unsortedNumber.sortAsc();
  print(sortedNumber);
  // BATAS AKHIR DARI EXTENSION!

  var testingAnimal = animal.Animal.cat('Neko', 2.5);
  print(
      'Umur dari ${testingAnimal.nameGetter} adalah ${testingAnimal.age} Tahun, dan berat badannya ${testingAnimal.weight}');

  var testingCat = Cat('Grayson', 2, 2.2, 'Gray');
  // testingCat.walk();
  // testingCat.eat();

  print(testingCat.furColor);

  var testingBird = Bird('Birdy', 2, 0.8, 'Gray');
  testingBird.fly();
  testingBird.eat();

  // try {
  //   var user = User('', '123456');
  //   print('Login berhasil: ${user.username}');
  // } catch (e) {
  //   print(e);
  // }

  // BATAS AKHIR TESTING CLASS
  stdout.write("Masukan suhu dalam Fahrenheit: ");
  var fahrenhait = num.parse(stdin.readLineSync()!);

  List<String> dataTemp = ['Dicoding', 'Aku', 'Kamu'];

  List<dynamic> tryTemp = [
    ...dataTemp,
    {'text': 'test nih bang'}
  ];

  int numberIndex = 3;
  var resultFinal =
      (tryTemp[numberIndex] is Map && tryTemp[numberIndex].containsKey('text'))
          ? tryTemp[numberIndex]['text']
          : tryTemp[numberIndex];

  print(resultFinal);

  Set<String> dataSet = {
    {'text': 'text 1'}.toString(),
    {'text': 'text 1'}.toString(),
    {'text': 'text 2'}.toString(),
    {'text': 'text 3'}.toString(),
  };

  print(dataSet);

  for (var item in tryTemp) {
    if (item == 'Dicoding') {
      print('Testing bro');
    }
    print(item);
  }

  konversiSuhu(fahrenhait);
  inputForUser();
  pyramidPrint();
  pyramidReversePrint();
}

void konversiSuhu(valueFahrenhait) {
  var celcius = (valueFahrenhait - 32) * 5 / 9;
  print("$valueFahrenhait derajat Fahrenhait = $celcius derajat celcius");
}

void inputForUser() {
  stdout.write("Masukan nomor pertama: ");
  num firstNumber = num.parse(stdin.readLineSync()!);
  stdout.write("Masukan nomor kedua: ");
  num secondNumber = num.parse(stdin.readLineSync()!);

  print(average(firstNumber, secondNumber));
}

double average(first, second) => (first + second) / 2;

String? pyramidPrint() {
  int totalRows = 10;

  for (var i = 0; i <= totalRows; i++) {
    print('*' * i);
  }

  return null;
}

String? pyramidReversePrint() {
  int totalRows = 10;

  do {
    print('*' * totalRows);
    totalRows--;
  } while (totalRows >= 1);

  return null;
}
