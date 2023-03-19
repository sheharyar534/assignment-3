class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  String fullName() {
    return '$firstName $lastName';
  }
}

class Student extends Person {
  String major;

  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);

  @override
  String fullName() {
    return '${super.fullName()} ($major)';
  }
}

void main() {
  var person = Person('SHEHARYAR', 'KHAN');
  print(person.fullName());

  var student = Student('SHEHARYAR', 'KHAN', 'DART AND FLUTTER');
  print(student.fullName());
}
