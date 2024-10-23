import 'package:konversi_suhu/class_animal.dart';
import 'package:konversi_suhu/class_flyable.dart';

class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(super.name, super.age, super.weight, this.featherColor);

  @override
  void fly() {
    Flyable().fly();
  }
}
