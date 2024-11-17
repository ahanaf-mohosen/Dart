void main() {
  Car c1 = new Car("BMW", "R1", 2022);
  print("${c1.name} ${c1.model} ${c1.year}");
  c1.drive();
  Ecar e1 = new Ecar(
      name: "Ferrari", model: "F2", year: 2024, color: "Red", capacity: 50);
  print("${e1.name} ${e1.model} ${e1.year} ${e1.color} ${e1.capacity}");
  e1.drive();
  // implement playAudio
  e1.playAudio();
  // implement turnOnAC
  e1.turnOnAC();
  Fcar f1 = new Fcar(
      name: "Mercedes",
      model: "S-Class",
      year: 2025,
      color: "Blue",
      fcapacity: 20);
  print("${f1.name} ${f1.model} ${f1.year} ${f1.color} ${f1.fcapacity}");
  print(Fcar.company);
  f1.drive();

  final List<Car> carList = [c1, e1, f1];
  for (final Car car in carList) {
    //car.drive();
    checkDrive(car); // Use polymorphism to call the appropriate drive method.
  }
}

void checkDrive(Car car) {
  car.drive();
}

class Car {
  String? name;
  String? model;
  int? year;
  Car(this.name, this.model, this.year);
  void drive() => print("Drive a car.\n");
}

class Ecar extends Car with Multimidia, AirCondition {
  String? color;
  int? capacity;
  Ecar({String? name, String? model, int? year, this.color, this.capacity})
      : super(name, model, year);

  @override
  void drive() => print("Drive an electric car.\n");
}

class Fcar extends Car {
  static const String company = "ABC";
  String? color;
  int? fcapacity;
  Fcar({String? name, String? model, int? year, this.color, this.fcapacity})
      : super(name, model, year);

  @override
  void drive() => print("Drive an fuel car.\n");
}

mixin Multimidia {
  void playAudio() => print("Play Audio");
}
mixin AirCondition {
  void turnOnAC() => print("Turn on AC");
}
