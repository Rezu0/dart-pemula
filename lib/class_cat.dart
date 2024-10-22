import 'package:konversi_suhu/class_animal.dart';

class Cat extends Animal {
  final String furColor;

  Cat(String name, int age, double weight, this.furColor)
      : super(name, age, weight);

  void walk() {
    print('$nameGetter is walking');
  }
}
