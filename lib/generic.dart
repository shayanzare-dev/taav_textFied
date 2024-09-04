void main() {
  final a = Person<int, Mamad>(2, Mamad());
}

class People {}

class Mamad extends People {}

class Person<T, E extends People> {
  final T name;
  final E lastName;

  Person(this.name, this.lastName);

  @override
  String toString() {
    return 'Person{name: $name, lastName: $lastName}';
  }
}
