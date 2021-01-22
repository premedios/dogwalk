class Dog {
  final String name;
  final String breed;
  final String colour;
  final DateTime dateOfBirth;
  final double weight;

  Dog({this.name, this.breed, this.colour, this.dateOfBirth, this.weight});
}

final Dog myDog = Dog(
    breed: "Cocker Spaniel/Setter",
    name: "Duke",
    colour: "Golden",
    dateOfBirth: DateTime(2014, 2, 12),
    weight: 28);
