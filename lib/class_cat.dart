import 'package:konversi_suhu/class_animal.dart';

class Cat extends Animal {
  final String furColor;

  Cat(super.name, super.age, super.weight, this.furColor);

  void walk() {
    print('$nameGetter is walking');
  }
}
