import 'dart:io';

void main() {
  stdout.write("Masukan suhu dalam Fahrenheit: ");
  var fahrenhait = num.parse(stdin.readLineSync()!);

  List<String> dataTemp = ['Dicoding', 'Aku', 'Kamu'];

  List<dynamic> tryTemp = [
    ...dataTemp,
    {'text': 'test nih bang'}
  ];

  int numberIndex = 3;
  var resultFinal = (tryTemp[numberIndex] is Map && tryTemp[numberIndex].containsKey('text'))
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

  tryTemp.forEach((item) {
    if (item == 'Dicoding') {
      print('Testing bro');
    }
    print(item);
  });

  konversiSuhu(fahrenhait);
  inputForUser();
  pyramidPrint();
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
