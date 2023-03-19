class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print('The $year $brand $model is being driven.');
  }
}

class Car extends Vehicle {
  int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  @override
  void drive() {
    print('The $year $brand $model with $numDoors doors is being driven.');
  }
}

void main() {
  var vehicle = Vehicle('Toyota', 'Corolla', 2022);
  vehicle.drive();

  var car = Car('Honda', 'Civic', 2023, 4);
  car.drive(); 
}