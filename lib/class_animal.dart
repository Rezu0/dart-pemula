class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  // Constructor utama
  Animal(this._name, this._age, this._weight);

  // Named constructor 'cat'
  Animal.cat(this._name, this._weight) : _age = 2;

  // Setter untuk name
  set name(String value) {
    _name = value;
  }

  // Getter untuk name, weight, dan age
  String get nameGetter => _name;
  double get weight => _weight;
  int get age => _age;

  // Method untuk makan
  void eat() {
    print('$_name is Eating...');
    _weight = _weight + 0.2;
  }

  // Method untuk tidur
  void sleep() {
    print('$_name is Sleeping.');
  }

  // Method untuk ulang tahun
  void birthday() {
    print('$_name Happy Birthday!');
    _age = _age + 1;
  }

  // Method untuk buang air
  void poop() {
    print('$_name is pooping');
    _weight = _weight - 0.1;
  }
}
