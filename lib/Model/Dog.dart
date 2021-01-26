import 'package:DogWalk/Helper/Storage.dart';

class Dog {
  int id;
  String name;
  String breed;
  String colour;
  DateTime dateOfBirth;
  double weight;

  Dog(
      {this.id,
      this.name,
      this.breed,
      this.colour,
      this.dateOfBirth,
      this.weight});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      StorageManager.DOGS_COLUMN_NAME: name,
      StorageManager.DOGS_COLUMN_BREED: breed,
      StorageManager.DOGS_COLUMN_COLOUR: colour,
      StorageManager.DOGS_COLUMN_DATEOFBIRTH: dateOfBirth.microsecondsSinceEpoch
    };

    if (id != null) {
      map[StorageManager.DOGS_COLUMN_ID] = id;
    }

    return map;
  }

  Dog.fromMap(Map<String, dynamic> map) {
    id = map[StorageManager.DOGS_COLUMN_ID];
    name = map[StorageManager.DOGS_COLUMN_NAME];
    breed = map[StorageManager.DOGS_COLUMN_BREED];
    colour = map[StorageManager.DOGS_COLUMN_COLOUR];
    dateOfBirth = DateTime.fromMicrosecondsSinceEpoch(
        map[StorageManager.DOGS_COLUMN_DATEOFBIRTH]);
  }
}

final Dog myDog = Dog(
    breed: "Cocker Spaniel/Setter",
    name: "Duke",
    colour: "Golden",
    dateOfBirth: DateTime(2014, 2, 12),
    weight: 28);
