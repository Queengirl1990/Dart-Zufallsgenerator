import 'dart:math';

class Person {
  String name;
  int weighting;

  Person(this.name, this.weighting);
}

class Randomgenerator { // Änderung des Klassennamens
  List<Person> personList = [
    Person("Laura", 3),
    Person("Sophie", 2),
    Person("Anna", 1),
    Person("Oliver", 1),
    Person("Lisa", 1),
    Person("Marie", 2),
    Person("Carlos", 3),
    Person("James", 1),
    Person("Helena", 2),
    Person("Theo", 1)
  ];

  Person? random() {
    List<Person> availablePeople = [];

    for (var person in personList) {
      if (!person.name.startsWith("*")) {
        availablePeople.add(person);
      }
    }

    if (availablePeople.isEmpty) {
      print("Alle Namen wurden verwendet!");
      return null;
    }

    int randomIndex = Random().nextInt(availablePeople.length);
    Person selectedPerson = availablePeople[randomIndex];
    selectedPerson.name = "*" + selectedPerson.name;
    return selectedPerson;
  }
}

void main() {
  Randomgenerator randomgenerator = Randomgenerator();
  Person? person = randomgenerator.random();
  if (person != null) {
    print(person.name.substring(1));
  }
}
